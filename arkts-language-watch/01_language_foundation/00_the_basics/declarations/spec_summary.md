# Declaration Spec Summary

## 1. Feature Scope

声明体系看护覆盖以下声明类型的绑定创建、作用域规则、提升行为、TDZ、重复声明限制和初始化语义：

- `var` 声明：函数作用域绑定、变量提升、允许重复声明
- `let` 声明：块级作用域绑定、TDZ、禁止重复声明
- `const` 声明：块级作用域绑定、必须初始化、禁止重新赋值、TDZ
- `function` 声明：函数声明提升、与 var 重复声明边界、块级函数声明边界
- `class` 声明：块级作用域绑定、TDZ、禁止重复声明
- `import` 声明：模块顶层声明、只读 live binding、位置限制
- `export` 声明：模块顶层声明、与本地声明关系、重复导出限制

本目录关注的是声明绑定的动态运行语义，不展开静态类型推导、静态 overload resolution 或 ArkTS 静态 checker 规则。

## 2. ECMAScript Reference

| 规范条目 | 内容 | 版本 |
|---|---|---|
| ECMA-262 §8.1 | Lexical Environments | ES2022 |
| ECMA-262 §13.3.2 | Variable Declarations (`var`) | ES2022 |
| ECMA-262 §13.3.1 | Let / Const Declarations | ES2022 |
| ECMA-262 §14.1 | Function Declarations | ES2022 |
| ECMA-262 §14.6 | Class Declarations | ES2022 |
| ECMA-262 §15.2.2 | Import Declarations | ES2022 |
| ECMA-262 §15.2.3 | Export Declarations | ES2022 |
| ECMA-262 §6.2.3 | Mutable / Immutable Binding | ES2022 |
| ECMA-262 §5.2 | ECMAScript Scope Chains | ES2022 |

ECMAScript 2023 无声明语义增量变更；声明绑定规则沿用 ES2022。

## 3. Declaration Types

| 声明类型 | 作用域 | Hoisting | TDZ | 重复声明 | 初始化 |
|---|---|---|---|---|---|
| `var` | 函数作用域 / 全局 | 是（值为 undefined） | 无 | 允许（同作用域内后声明覆盖前声明） | 可延迟 |
| `let` | 块级作用域 | 否（声明存在但不初始化） | 有 | 禁止（SyntaxError） | 可延迟（默认 undefined） |
| `const` | 块级作用域 | 否（声明存在但不初始化） | 有 | 禁止（SyntaxError） | 必须立即初始化 |
| `function` | 函数作用域 / 块级（严格模式） | 是（值为函数对象） | 无（函数作用域）/ 有（块级） | 允许（函数作用域，同名覆盖） | 声明时初始化 |
| `class` | 块级作用域 | 否 | 有 | 禁止（SyntaxError） | 声明时初始化 |
| `import` | 模块顶层 | 是（绑定创建在模块链接阶段） | 无（链接完成后可访问） | 禁止（同模块内重复导入同名绑定） | 链接阶段初始化 |
| `export` | 模块顶层 | 声明跟随本地声明规则 | 跟随本地声明 | 禁止（重复导出同名 SyntaxError） | 跟随本地声明 |

## 4. Binding Creation

ECMAScript 区分两种绑定类型：

- **Mutable Binding**：`var`、`let` 创建可变绑定，允许重新赋值。绑定创建在声明所在作用域的 LexicalEnvironment 中。
- **Immutable Binding**：`const`、`import` 创建不可变绑定，禁止重新赋值（`const` 重新赋值 TypeError；`import` 重新赋值 SyntaxError 或 TypeError）。

绑定创建时机：
- `var`：进入作用域时立即创建，初始值为 `undefined`。
- `let` / `const`：进入作用域时创建绑定（声明存在），但直到执行到声明语句才初始化。在初始化前访问属于 TDZ。
- `function`（函数作用域）：进入作用域时创建并初始化为函数对象。
- `class`：进入作用域时创建绑定，但直到执行到声明语句才初始化（TDZ）。
- `import`：模块链接（linking）阶段创建绑定并初始化，执行阶段只做访问。

## 5. Hoisting

### 5.1 var Hoisting

`var` 声明提升到所在函数作用域（或全局作用域）顶部。提升的是声明本身，不是赋值：

```javascript
console.log(x); // undefined（声明已提升，赋值未提升）
var x = 10;
console.log(x); // 10
```

等价于：
```javascript
var x;           // 声明提升
console.log(x);  // undefined
x = 10;          // 赋值在原位置执行
console.log(x);  // 10
```

### 5.2 Function Declaration Hoisting

函数声明整体提升（包括函数体），进入作用域即可调用：

```javascript
foo(); // 正常调用（函数声明已提升）
function foo() { return 42; }
```

注意：函数表达式（`var foo = function() {...}`）不提升函数体，只提升 `var` 声明部分。

### 5.3 let / const / class 不提升初始化

`let`、`const`、`class` 声明在进入作用域时创建绑定，但不初始化。在声明语句执行之前访问会触发 TDZ ReferenceError。

严格意义上，这些声明"词法提升"了绑定存在性（scope 中可见），但不提升初始化值。

### 5.4 import 链接阶段提升

`import` 声明在模块链接阶段完成绑定创建和初始化，不属于传统意义上的执行期提升，但行为类似：import 语句可以出现在模块代码之后（语法允许），访问在链接完成后可用。

## 6. Temporal Dead Zone

TDZ 是从进入作用域到声明语句执行之间的区域。在此区域内访问绑定抛出 ReferenceError。

受 TDZ 影响的声明类型：`let`、`const`、`class`、块级 `function`（严格模式下）。

典型 TDZ 场景：

```javascript
{
  console.log(a); // ReferenceError: Cannot access 'a' before initialization
  let a = 1;
}
```

```javascript
{
  const b = typeof c; // ReferenceError（即使在 typeof 中也触发 TDZ）
  let c = 3;
}
```

注意：`typeof` 操作不会绕过 TDZ——如果变量处于 TDZ 中，`typeof x` 同样抛出 ReferenceError。

`var` 不受 TDZ 影响——提升后值为 `undefined`，访问不会抛出 ReferenceError。

## 7. Duplicate Declaration Rules

| 声明类型组合 | 同作用域重复 | 行为 |
|---|---|---|
| `var` + `var` | 允许 | 后声明覆盖前声明赋值，合并为一个绑定 |
| `var` + `function`（函数作用域） | 允许 | 函数声明初始化优先，`var` 声明不覆盖已初始化的函数绑定 |
| `function` + `function` | 允许（函数作用域） | 后声明覆盖前声明 |
| `let` + `let` | 禁止 | SyntaxError |
| `let` + `var` | 禁止 | SyntaxError |
| `const` + `const` | 禁止 | SyntaxError |
| `const` + `let` | 禁止 | SyntaxError |
| `class` + `class` | 禁止 | SyntaxError |
| `class` + `let` / `var` | 禁止 | SyntaxError |
| `import` + `import`（同名绑定） | 禁止 | SyntaxError |
| `export` + `export`（同名导出） | 禁止 | SyntaxError |

块级作用域与函数作用域交叉：不同作用域的同名声明不冲突（内层遮蔽外层）。

严格模式下 `function` 在块内声明为块级绑定，与外层函数作用域同名 `function` 不冲突（遮蔽）。

## 8. Initialization Semantics

| 声明类型 | 初始化时机 | 未初始化时值 | 重新赋值 |
|---|---|---|---|
| `var` | 进入作用域时初始化为 `undefined`，赋值在执行期 | `undefined` | 允许 |
| `let` | 执行到声明语句时初始化（无初始化器则为 `undefined`） | TDZ → `undefined` | 允许 |
| `const` | 执行到声明语句时初始化（必须提供初始化器） | TDZ → 初始化值 | 禁止（TypeError） |
| `function` | 进入作用域时初始化为函数对象 | 函数对象 | 允许（同作用域 var 赋值覆盖） |
| `class` | 执行到声明语句时初始化为类构造器 | TDZ → 类构造器 | 不适用（class 不可重新赋值声明名） |
| `import` | 模块链接时初始化 | 链接完成 → 绑定值 | 禁止 |

`const` 初始化器必须性是编译期规则（SyntaxError），不是运行时 TypeError。

## 9. Module Scope Semantics

模块作用域与脚本作用域的关键差异：

- **模块顶层**：所有声明默认模块作用域内可见。`var` 在模块顶层仍为模块作用域绑定（不污染全局），除非显式赋值到 `globalThis`。
- **`import` 绑定**：创建 Immutable Binding，是 live binding（目标模块修改时，导入侧可见变化）。重新赋值抛出 TypeError。
- **`export` 声明**：不创建新绑定，只是暴露已有本地绑定。`export { x }` 不会创建额外绑定，`x` 必须已在模块内声明。
- **模块顶层 TDZ**：模块顶层 `let` / `const` / `class` 同样受 TDZ 影响。
- **严格模式**：ES 模块自动为严格模式，影响块级函数声明和部分重复声明规则。

## 10. ArkTS Dynamic Notes

鸿蒙动态 ArkTS 声明语义需要与 ECMAScript 对照确认的差异点：

1. **`var` 限制**：动态 ArkTS 可能限制 `var` 使用（引导使用 `let` / `const`），需要确认 `var` 是否仍按 ES 函数作用域提升行为执行。
2. **块级函数声明**：确认严格模式和非严格模式下块级函数声明的绑定行为是否与 ES2022 一致。
3. **`const` 不可重新赋值**：确认运行时 TypeError 行为是否与 ES 一致，或动态 ArkTS 是否将此提升为编译期错误。
4. **`import` live binding**：确认动态 ArkTS 是否实现 ES 模块的 live binding 语义（目标模块变量变化时导入侧可见）。
5. **重复声明**：确认动态 ArkTS 对 `var` + `function` 重复声明、块级与函数作用域同名声明的处理是否与 ES 一致。
6. **全局声明**：脚本模式下 `var` 是否仍然污染 `globalThis`，或动态 ArkTS 有不同全局绑定行为。
7. **`enum` 声明**：ArkTS 支持 `enum`，这是 TypeScript 扩展声明类型，不在 ES 规范内。需要确认 `enum` 的绑定语义和 TDZ 行为。

## 11. TypeScript Compatibility Notes

动态 ArkTS 需要与 TypeScript 声明语法兼容确认的点：

1. **类型标注声明**：`let x: number = 1` 中类型标注是否作为兼容语法存在，运行时是否忽略类型标注。
2. **`enum` 声明**：TypeScript `enum`（包括 `const enum`）在动态 ArkTS 中的支持范围和绑定语义。
3. **`interface` 声明**：`interface` 是纯类型层声明，运行时无绑定。确认动态 ArkTS 是否允许 `interface` 声明出现在源码中（仅作为兼容语法）。
4. **`type` 别名**：`type X = ...` 是纯类型层声明，运行时无绑定。确认动态 ArkTS 是否允许 `type` 声明。
5. **命名空间声明**：`namespace X { ... }` 是否支持，绑定行为是否与 TypeScript namespace 一致。
6. **装饰器声明**：装饰器不是声明类型，但装饰器修饰的声明（class、method、property、accessor）的绑定行为是否受装饰器影响。

## 12. Compile Negative Conditions

以下条件在 ECMAScript 中为 SyntaxError，动态 ArkTS 可能同样报编译期错误：

| 条件 | ES 规范错误类型 | ArkTS 动态预期 |
|---|---|---|
| `let` / `const` 同作用域重复声明 | SyntaxError | SyntaxError / compile error |
| `const` 无初始化器 | SyntaxError | SyntaxError / compile error |
| `class` 同作用域重复声明 | SyntaxError | SyntaxError / compile error |
| `import` 同模块内重复导入同名绑定 | SyntaxError | SyntaxError / compile error |
| `export` 重复导出同名 | SyntaxError | SyntaxError / compile error |
| `import` / `export` 出现在非模块顶层 | SyntaxError | SyntaxError / compile error |
| `let` / `const` 在 `for-in` / `for-of` 初始化器中重新赋值 | SyntaxError（`for-in`/`for-of` 绑定为 const-like） | 需确认 |

## 13. Runtime Exception Conditions

| 条件 | ES 规范错误类型 | 说明 |
|---|---|---|
| TDZ 访问（let / const / class 声明前使用） | ReferenceError | "Cannot access 'x' before initialization" |
| `const` 重新赋值 | TypeError | "Assignment to constant variable" |
| `import` 绑定重新赋值 | TypeError | live binding 不可变 |
| 未声明变量访问（严格模式） | ReferenceError | "x is not defined" |
| 函数作用域 `var` 提升后访问（赋值前） | 无错误（返回 `undefined`） | 不是异常，但需验证行为 |

## 14. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| DECL-PQ-P0-001 | 动态 ArkTS 是否允许 `var` 声明，行为是否与 ES 函数作用域提升一致 | runtime smoke / compiler | P0 |
| DECL-PQ-P0-002 | 块级函数声明在严格模式下的绑定行为是否与 ES2022 一致 | runtime smoke | P0 |
| DECL-PQ-P0-003 | `import` live binding 语义是否完整实现 | runtime integration | P0 |
| DECL-PQ-P0-004 | `const` 重新赋值是运行时 TypeError 还是编译期错误 | fail_compile / fail_runtime | P0 |
| DECL-PQ-P1-001 | `enum` 声明的绑定语义和 TDZ 行为 | compiler / runtime | P1 |
| DECL-PQ-P1-002 | 类型标注声明在运行时是否完全忽略 | runtime smoke | P1 |
| DECL-PQ-P1-003 | `namespace` 声明是否支持 | compiler | P1 |
| DECL-PQ-P1-004 | `interface` / `type` 声明是否作为兼容语法允许出现 | compiler | P1 |
| DECL-PQ-P1-005 | 脚本模式下 `var` 是否仍然可污染 `globalThis` | runtime | P1 |
| DECL-PQ-P2-001 | `for-in` / `for-of` 中 `let` / `const` 绑定重新赋值限制 | compiler / runtime | P2 |
| DECL-PQ-P2-002 | 解构声明中的默认值与 TDZ 交互 | runtime boundary | P2 |
| DECL-PQ-P2-003 | 装饰器修饰的声明的绑定行为是否受装饰器影响 | runtime boundary | P2 |
