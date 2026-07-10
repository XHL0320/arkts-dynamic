# Keyword Spec Summary

## 1. Feature Scope

关键字体系看护覆盖以下方面：

- ECMAScript 关键字和保留字的合法性边界
- 关键字作为标识符的非法性
- 上下文关键字（contextual keywords）的特殊规则
- 未来保留字（FutureReservedWord）的限制
- 严格模式和模块模式下的额外关键字限制
- TypeScript 类型相关关键字的动态 ArkTS 支持边界
- ArkTS 语言扩展关键字的兼容边界

本目录关注的是关键字本身的合法性、保留字限制、上下文边界和跨特性索引，不展开 function/class/module 的完整语义。

## 2. ECMAScript Keywords

ECMAScript 关键字（ECMA-262 §12.6.2）是不能用作标识符（Identifier）的保留字：

```
break case catch class const continue debugger default delete do else
enum export extends false finally for function if import in instanceof
new null return super switch this throw true try typeof var void while
with yield
```

这些关键字在任何上下文中都不能用作变量名、函数名或参数名。

## 3. Reserved Words

ReservedWord 包括：
- 关键字（Keyword）
- 未来保留字（FutureReservedWord）
- `null` / `true` / `false`（NullLiteral / BooleanLiteral）
- `await`（在模块顶层上下文中）

## 4. Future Reserved Words

ECMAScript 未来保留字（可能在将来版本中成为关键字）：

- `enum`
- `implements`
- `interface`
- `package`
- `private`
- `protected`
- `public`
- `static`

在严格模式下，这些未来保留字不能用作标识符。在非严格模式下，`enum` 仍为未来保留字，其他在非严格模式下可用。

## 5. Strict Mode Reserved Words

严格模式下的额外保留字：
- `implements`
- `interface`
- `package`
- `private`
- `protected`
- `public`
- `static`
- `let`（在严格模式下是保留字）
- `yield`

ES 模块自动为严格模式，因此模块代码中这些词都不能用作标识符。

## 6. Contextual Keywords

上下文关键字（contextual keywords）在特定语法位置有特殊含义，但在其他位置可用作标识符：

- `as`（import/export 中的别名）
- `from`（import 中的来源）
- `of`（for-of 中的迭代）
- `async`（函数声明前的修饰）
- `await`（async 函数内的等待）
- `yield`（generator 函数内的产出）

## 7. Literal Keywords

- `true` / `false`：BooleanLiteral，不能用作标识符
- `null`：NullLiteral，不能用作标识符

## 8. Declaration Keywords

声明相关关键字：
- `var`：函数作用域变量声明
- `let`：块级作用域变量声明
- `const`：块级作用域常量声明
- `function`：函数声明
- `class`：类声明

这些关键字在声明位置使用，不能用作标识符。声明绑定/TDZ/提升/重复声明规则归 `declarations`，keywords 只负责关键字合法性。

## 9. Statement Keywords

语句相关关键字：
- `if` / `else`：条件语句
- `switch` / `case` / `default`：switch 语句
- `for` / `while` / `do`：循环语句
- `break` / `continue`：跳转语句
- `return`：返回语句
- `throw` / `try` / `catch` / `finally`：异常语句
- `debugger`：调试语句
- `with`：with 语句（严格模式禁止）

语句执行语义归 `statements`，keywords 只验证关键字位置合法性。

## 10. Expression / Operator Keywords

表达式/运算符相关关键字：
- `typeof`：类型识别运算符
- `void`：返回 undefined 运算符
- `delete`：删除属性运算符
- `instanceof`：原型链判断运算符
- `in`：属性存在判断运算符
- `new`：实例化运算符
- `this`：当前对象引用
- `super`：父类引用

运算符运行语义归 `operators`，keywords 只验证语法边界。

## 11. Module Keywords

模块相关关键字：
- `import`：导入声明
- `export`：导出声明
- `from`：导入来源（上下文关键字）
- `as`：别名（上下文关键字）
- `default`：默认导出（上下文关键字）

模块解析和绑定归 `06_module` / `declarations`，keywords 只验证模块关键字语法边界。

## 12. Async / Generator Keywords

异步/生成器相关关键字：
- `async`：标记异步函数（上下文关键字）
- `await`：等待 Promise（在 async 函数内为运算符，模块顶层为保留字）
- `yield`：产出值（在 generator 函数内为运算符，严格模式下为保留字）

`await` 在非 async 上下文中使用为 SyntaxError。`yield` 在非 generator 上下文中使用为 SyntaxError。

## 13. TypeScript Compatibility Keywords

TypeScript 扩展关键字在动态 ArkTS 中的兼容边界：

- `type`：类型别名声明（上下文关键字）
- `namespace`：命名空间声明
- `declare`：环境声明
- `abstract`：抽象类修饰
- `readonly`：只读修饰
- `enum`：枚举声明（ES 未来保留字，TS 实现为声明）
- `public` / `private` / `protected` / `static`：成员修饰（ES 严格模式保留字，TS 实现为成员修饰）

## 14. ArkTS Dynamic Notes

鸿蒙动态 ArkTS 关键字语义需要与 ECMAScript 对照确认的差异点：

1. **`with` 语句**：ES 严格模式禁止，动态 ArkTS 是否完全禁止待确认。
2. **`enum` 支持**：ES 未来保留字，TypeScript 实现为声明，动态 ArkTS 是否支持 `enum` 声明待确认。
3. **`async` / `await` 支持**：确认动态 ArkTS 是否支持 async/await 语法。
4. **`yield` 支持**：确认动态 ArkTS 是否支持 generator 和 yield 语法。
5. **严格模式保留字**：确认动态 ArkTS 是否在所有代码中默认严格模式。
6. **TS 关键字支持**：确认 `type` / `namespace` / `declare` / `abstract` / `readonly` 是否允许在源码中出现。
7. **`public` / `private` / `protected`**：确认是否支持 TS 成员修饰关键字。
8. **关键字作为属性名**：确认关键字作为对象属性名 `{ if: 1 }` 或 `obj.class` 是否允许。

## 15. Compile Negative Conditions

| 条件 | ES 规范错误类型 | ArkTS 动态预期 |
|---|---|---|
| 关键字用作变量名 | SyntaxError | SyntaxError / compile error |
| 关键字用作函数名 | SyntaxError | SyntaxError / compile error |
| `await` 在非 async 上下文 | SyntaxError | SyntaxError / compile error |
| `yield` 在非 generator 上下文 | SyntaxError | SyntaxError / compile error |
| `with` 语句（严格模式） | SyntaxError | SyntaxError / compile error |
| 严格模式保留字用作标识符 | SyntaxError | SyntaxError / compile error |

## 16. Runtime Exception Conditions

关键字相关运行时异常较少，主要是关键字触发的运行行为：
- `throw` 关键字抛出异常（归 statements）
- `new` 关键字调用非构造器 TypeError（归 operators）
- `delete` 关键字删除非可配置属性（归 operators）
- `typeof` 访问 TDZ 变量 ReferenceError（归 operators）

这些运行时异常归对应语义章节，keywords 只做语法边界。

## 17. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| KW-PQ-P0-001 | `with` 语句是否完全禁止 | compiler | P0 |
| KW-PQ-P0-002 | `enum` 声明是否支持 | compiler / runtime | P0 |
| KW-PQ-P0-003 | `async` / `await` 语法是否支持 | compiler | P0 |
| KW-PQ-P0-004 | `yield` / generator 语法是否支持 | compiler | P0 |
| KW-PQ-P1-001 | 严格模式是否默认开启 | compiler / runtime | P1 |
| KW-PQ-P1-002 | `type` / `namespace` / `declare` 是否允许 | compiler | P1 |
| KW-PQ-P1-003 | `abstract` / `readonly` 是否允许 | compiler | P1 |
| KW-PQ-P1-004 | `public` / `private` / `protected` 是否支持 | compiler | P1 |
| KW-PQ-P2-001 | 关键字作为对象属性名是否允许 | runtime smoke | P2 |
| KW-PQ-P2-002 | 关键字作为类属性名是否允许 | runtime smoke / compiler | P2 |
