# Type Spec Summary

## 1. Feature Scope

类型体系看护覆盖以下运行时类型识别、类型转换和 TypeScript 类型语法兼容边界：

- 原始类型：`Undefined`、`Null`、`Boolean`、`String`、`Number`、`BigInt`、`Symbol`
- 对象类型：`Object`、`Function object`、`Array object`、`class instance`
- 类型识别：`typeof`、`instanceof`
- 类型转换：`ToPrimitive`、`ToBoolean`、`ToNumber`、`ToString`
- TypeScript 类型语法兼容：类型标注、union type、literal type、type alias、`any` / `unknown`

本目录关注的是动态 ArkTS 的运行时类型语义和 TS 类型语法兼容边界，不展开静态类型系统、静态泛型、静态 overload resolution 或 ArkTS 静态 checker 规则。

## 2. ECMAScript Runtime Types

ECMAScript 规范定义的语言类型（ECMA-262 §6.1）：

| 类型 | 说明 | typeof 返回值 |
|---|---|---|
| Undefined | 只有一个值 `undefined` | `"undefined"` |
| Null | 只有一个值 `null` | `"object"`（历史遗留） |
| Boolean | `true` / `false` | `"boolean"` |
| String | 不可变字符串序列 | `"string"` |
| Number | IEEE 754 双精度浮点 + `NaN` / `Infinity` / `-Infinity` | `"number"` |
| BigInt | 任意精度整数 | `"bigint"` |
| Symbol | 唯一且不可变 | `"symbol"` |
| Object | 属性集合（包括 Function、Array、class instance） | `"object"` 或 `"function"` |

## 3. Primitive Types

### 3.1 Undefined

- 只有一个值 `undefined`
- 未初始化变量默认值为 `undefined`
- 未提供返回值的函数返回 `undefined`
- 未提供的参数为 `undefined`
- `typeof undefined === "undefined"`

### 3.2 Null

- 只有一个值 `null`
- 表示"空"引用
- `typeof null === "object"`（历史遗留，不是真正的对象）
- `null == undefined` 为 `true`（抽象相等）
- `null === undefined` 为 `false`（严格相等）

### 3.3 Boolean

- 两个值：`true` / `false`
- `ToBoolean` 转换中的 falsy 值：`false`、`0`、`-0`、`0n`、`""`、`null`、`undefined`、`NaN`
- 其他所有值为 truthy（包括 `"0"`、`"false"`、`[]`、`{}`）

### 3.4 String

- 不可变 UTF-16 序列
- 字符串字面量：单引号、双引号、模板字符串
- 空字符串 `""` 是 falsy
- 非空字符串是 truthy

### 3.5 Number

- IEEE 754 双精度浮点（所有数字都是浮点）
- 特殊值：`NaN`（非数字）、`Infinity`、`-Infinity`、`+0`、`-0`
- `NaN !== NaN`（唯一不等于自身的值）
- `Number.isNaN()` vs `isNaN()` 差异
- `0 === -0` 为 `true`，但 `Object.is(0, -0)` 为 `false`
- 安全整数范围：`Number.MAX_SAFE_INTEGER`（2^53 - 1）

### 3.6 BigInt

- 任意精度整数
- 字面量后缀 `n`：`123n`
- 不能与 Number 混合运算（抛出 TypeError）
- `0n` 是 falsy，其他 BigInt 是 truthy
- `typeof 1n === "bigint"`

### 3.7 Symbol

- 唯一且不可变
- `Symbol()` 创建新 symbol
- `Symbol.for()` 创建/获取共享 symbol
- 作为对象属性键（不被 `for...in` / `Object.keys` 枚举）
- `typeof Symbol() === "symbol"`

## 4. Object Types

- 对象是属性的集合
- `typeof {} === "object"`
- `typeof [] === "object"`（数组是对象）
- `typeof function(){} === "function"`（函数是可调用对象）
- `Array.isArray([])` 是判断数组的正确方式
- class instance 的 `typeof` 返回 `"object"`

### 4.1 Function Object

- 函数是 `Function` 的实例
- `typeof` 返回 `"function"`（可调用对象特殊标识）
- `Function.prototype` 是所有函数的原型
- 箭头函数、普通函数、class constructor 都是 function object

### 4.2 Array Object

- 数组是 `Array` 的实例
- `typeof` 返回 `"object"`（不是 `"array"`）
- `Array.isArray()` 是判断数组的可靠方式
- `instanceof Array` 在跨 realm 场景不可靠

## 5. null and undefined

| 比较 | 结果 | 说明 |
|---|---|---|
| `null == undefined` | `true` | 抽象相等 |
| `null === undefined` | `false` | 严格不等 |
| `typeof null` | `"object"` | 历史遗留 |
| `typeof undefined` | `"undefined"` | — |
| `null == 0` | `false` | null 只与 undefined/自身相等 |
| `null + 0` | `0` | null ToNumber 为 0 |
| `undefined + 0` | `NaN` | undefined ToNumber 为 NaN |

## 6. number and bigint Boundary

| 操作 | 行为 |
|---|---|
| `1 === 1n` | `false`（不同类型） |
| `1 == 1n` | `true`（抽象相等，数值比较） |
| `1 + 1n` | `TypeError`（不能混合运算） |
| `1 < 2n` | `true`（比较运算允许） |
| `typeof 1` | `"number"` |
| `typeof 1n` | `"bigint"` |
| `0 === 0n` | `false` |
| `0 == 0n` | `true` |

## 7. string / boolean / symbol

| 类型 | typeof | 特殊行为 |
|---|---|---|
| string | `"string"` | 不可变；空字符串 falsy |
| boolean | `"boolean"` | 只有 true/false |
| symbol | `"symbol"` | 唯一；`Symbol()` vs `Symbol.for()` |

## 8. typeof Semantics

`typeof` 运算符返回字符串，表示操作数的类型。

| 操作数 | typeof 返回值 | 说明 |
|---|---|---|
| `undefined` | `"undefined"` | — |
| `null` | `"object"` | 历史遗留 |
| `true` / `false` | `"boolean"` | — |
| `42` / `3.14` / `NaN` | `"number"` | NaN 也是 number |
| `42n` | `"bigint"` | — |
| `"hello"` | `"string"` | — |
| `Symbol()` | `"symbol"` | — |
| `{}` / `[]` | `"object"` | 数组也是 object |
| `function(){}` | `"function"` | 可调用对象 |
| `class C{}` | `"function"` | class 是函数 |
| 未声明变量 | `"undefined"` | 不抛 ReferenceError（typeof 特殊行为） |

注意：`typeof` 对未声明变量返回 `"undefined"` 而不抛 ReferenceError，这是 `typeof` 的特殊安全行为。但 TDZ 中的 `let`/`const`/`class` 访问仍抛 ReferenceError（typeof 不绕过 TDZ）。

## 9. instanceof Semantics

`instanceof` 检查对象的原型链中是否包含构造器的 `prototype`。

| 表达式 | 结果 | 说明 |
|---|---|---|
| `[] instanceof Array` | `true` | 同 realm 内 |
| `{} instanceof Object` | `true` | 所有对象都是 Object 实例 |
| `function(){} instanceof Function` | `true` | 函数是 Function 实例 |
| `new Foo() instanceof Foo` | `true` | class instance |
| `5 instanceof Number` | `false` | 原始值不是对象 |
| `"hello" instanceof String` | `false` | 原始值不是对象 |
| `null instanceof Object` | `false` | null 不是对象 |
| `undefined instanceof Object` | `false` | undefined 不是对象 |

边界：
- `instanceof` 右侧必须是可调用对象（函数），否则抛出 TypeError
- 跨 realm（iframe/worker）场景下 `instanceof` 不可靠（原型链不同）
- `Symbol.hasInstance` 可自定义 instanceof 行为

## 10. Type Conversion Notes

ECMAScript 定义了以下抽象转换操作：

| 转换 | 操作 | 典型场景 |
|---|---|---|
| ToPrimitive | 对象 → 原始值 | `[] + []`、`{} + 1` |
| ToBoolean | 任意 → boolean | `if (x)`、`!x` |
| ToNumber | 任意 → number | `1 + "2"`、`x == 1` |
| ToString | 任意 → string | `String(x)`、模板字符串 |
| ToObject | 原始 → 对象 | `x.toString()` |

关键转换规则：
- `Number("")` = 0，`Number("  ")` = 0，`Number("abc")` = NaN
- `Number(null)` = 0，`Number(undefined)` = NaN
- `Number([])` = 0，`Number([5])` = 5，`Number([1,2])` = NaN
- `Number({})` = NaN
- `String(null)` = "null"，`String(undefined)` = "undefined"
- `String([])` = ""，`String([1,2])` = "1,2"
- `String({})` = "[object Object]"
- `Boolean([])` = true（空数组是 truthy！）
- `Boolean({})` = true（空对象是 truthy！）

## 11. TypeScript Compatibility Notes

动态 ArkTS 需要与 TypeScript 类型语法兼容确认的点：

1. **类型标注**：`let x: number = 1` 中类型标注是否作为兼容语法存在，运行时是否忽略类型标注。
2. **union type**：`let x: number | string` 是否允许在源码中出现，运行时如何处理。
3. **literal type**：`let x: "hello"` 是否允许，运行时是否退化为普通值。
4. **type alias**：`type MyType = number | string` 是否允许，运行时是否完全忽略。
5. **`any` / `unknown`**：是否允许 `any` 和 `unknown` 类型标注，运行时行为。
6. **`interface` 声明**：纯类型层声明，运行时无绑定，是否允许出现。
7. **泛型标注**：`function f<T>(x: T): T` 是否允许，运行时是否忽略泛型参数。
8. **类型断言**：`x as number` 是否允许，运行时是否忽略。
9. **可选链/非空断言**：`x?.y` / `x!.y` 运行时行为。

## 12. ArkTS Dynamic Notes

鸿蒙动态 ArkTS 类型语义需要与 ECMAScript 对照确认的差异点：

1. **`typeof` 行为**：确认 `typeof null` 是否仍为 `"object"`（历史遗留行为是否保留）。
2. **`instanceof` 跨 realm**：确认动态 ArkTS 是否存在多 realm 场景（worker、isolates）。
3. **`NaN` 行为**：确认 `NaN !== NaN` 行为是否与 ES 一致。
4. **`-0` vs `+0`**：确认 `0 === -0` 和 `Object.is(0, -0)` 行为。
5. **BigInt 混合运算**：确认 `number + bigint` TypeError 行为是否与 ES 一致。
6. **`Symbol` 支持**：确认 `Symbol()`、`Symbol.for()`、`Symbol.iterator` 等是否完整支持。
7. **类型标注运行时行为**：确认 TypeScript 类型标注在运行时是否完全擦除或保留。
8. **`any` / `unknown` 运行时**：确认是否允许使用，运行时是否退化为不检查。

## 13. Compile Negative Conditions

以下条件在 ECMAScript 中为 SyntaxError 或 TypeError，动态 ArkTS 可能同样报错：

| 条件 | ES 规范错误类型 | ArkTS 动态预期 |
|---|---|---|
| `number + bigint` 混合运算 | TypeError | TypeError |
| `instanceof` 右侧非函数 | TypeError | TypeError |
| 在 `typeof` 中访问 TDZ 变量 | ReferenceError | ReferenceError |
| 不支持的 TS 类型语法 | — | compile error / SyntaxError（需确认） |
| `any` / `unknown` 如果不支持 | — | compile error（需确认） |

## 14. Runtime Exception Conditions

| 条件 | ES 规范错误类型 | 说明 |
|---|---|---|
| `number + bigint` 运算 | TypeError | "Cannot mix BigInt and other types" |
| `instanceof` 右侧非可调用 | TypeError | "Right-hand side of instanceof is not callable" |
| 访问 TDZ 中的 `typeof x` | ReferenceError | typeof 不绕过 TDZ |
| `Symbol()` 后调用 `new Symbol()` | TypeError | Symbol 不是构造器 |

## 15. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| TYPE-PQ-P0-001 | `typeof null` 是否仍为 `"object"` | runtime smoke | P0 |
| TYPE-PQ-P0-002 | `NaN !== NaN` 行为是否与 ES 一致 | runtime smoke | P0 |
| TYPE-PQ-P0-003 | `number + bigint` 是否抛出 TypeError | fail_runtime | P0 |
| TYPE-PQ-P0-004 | TypeScript 类型标注在运行时是否完全擦除 | runtime smoke | P0 |
| TYPE-PQ-P1-001 | `Symbol` 是否完整支持（包括 `Symbol.iterator`） | runtime smoke | P1 |
| TYPE-PQ-P1-002 | `union type` 语法是否允许在源码中出现 | compiler | P1 |
| TYPE-PQ-P1-003 | `literal type` 语法是否允许 | compiler | P1 |
| TYPE-PQ-P1-004 | `type alias` 语法是否允许 | compiler | P1 |
| TYPE-PQ-P1-005 | `any` / `unknown` 是否允许使用 | compiler | P1 |
| TYPE-PQ-P1-006 | 类型断言 `x as T` 是否允许 | compiler | P1 |
| TYPE-PQ-P2-001 | `Object.is(0, -0)` 行为 | runtime smoke | P2 |
| TYPE-PQ-P2-002 | `Symbol.hasInstance` 自定义 instanceof | runtime boundary | P2 |
| TYPE-PQ-P2-003 | 跨 realm `instanceof` 可靠性 | runtime boundary | P2 |
