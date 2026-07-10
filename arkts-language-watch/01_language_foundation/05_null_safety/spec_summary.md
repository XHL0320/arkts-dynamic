# Null Safety Spec Summary

## 1. Feature Scope

空值安全体系看护覆盖以下方面：

- null 与 undefined 的基础运行时行为
- null/undefined 与 boolean/number/string/object 的转换边界
- loose equality 与 strict equality 中 null/undefined 行为
- 可选链 optional chaining `?.`
- 空值合并 nullish coalescing `??`
- 空值赋值 nullish assignment `??=`
- 非空断言 `!` 边界
- 可选属性与 undefined
- 函数参数默认值与 undefined
- null/undefined 作为函数参数和返回值
- class field 初始化中的 null/undefined 边界
- interface optional property 与 undefined 边界
- generic 与 NonNullable/null constraint 边界
- TypeScript utility type NonNullable<T> 边界
- ArkTS 动态与静态 ArkTS null safety 语义差异

**关键认知**：null 和 undefined 在 ECMAScript 运行时有真实语义（是基础值），TypeScript/ArkTS 的 null safety 是类型系统和编译期能力。本目录同时覆盖两者。

## 2. ECMAScript null and undefined Runtime Model

- `null`：表示"空"引用，`typeof null === "object"`（历史遗留）
- `undefined`：表示"未定义"，`typeof undefined === "undefined"`
- `null == undefined` 为 `true`（抽象相等）
- `null === undefined` 为 `false`（严格不等）
- `null == 0` 为 `false`（null 只与 undefined/自身抽象相等）
- `Number(null) === 0`，`Number(undefined) === NaN`
- 访问 null/undefined 的属性抛出 TypeError

## 3. TypeScript Null Safety Model

TypeScript null safety 是编译期类型系统能力：
- `strictNullChecks` 模式下，`null` 和 `undefined` 不再 assignable 给非 nullable 类型
- 可选属性 `prop?: T` 等价于 `prop: T | undefined`
- 非空断言 `value!` 告诉编译器"不是 null/undefined"
- `NonNullable<T>` 排除 null 和 undefined
- 空值合并 `??` 只在 null/undefined 时取默认值
- 可选链 `?.` 在 null/undefined 时短路返回 undefined

## 4. ArkTS Dynamic Null Safety Notes

鸿蒙动态 ArkTS null safety 需要确认的差异点：
1. 是否默认开启 strict null checks
2. 可选链 `?.` 是否支持
3. 空值合并 `??` 是否支持
4. 空值赋值 `??=` 是否支持
5. 非空断言 `!` 是否允许
6. `NonNullable<T>` 是否支持
7. `T | null` / `T | undefined` union 是否允许
8. 可选属性 `?:` 是否在编译期检查
9. null/undefined 运行时属性访问是否抛出 TypeError
10. 动态与静态 ArkTS null safety 差异

## 5. null Basic Behavior

- `null` 是基础值，表示"空"
- `typeof null === "object"`（历史遗留）
- `null` 是 falsy：`Boolean(null) === false`
- `Number(null) === 0`
- `String(null) === "null"`
- `null` 作为对象属性值表示"有此属性但值为空"

## 6. undefined Basic Behavior

- `undefined` 是基础值，表示"未定义"
- `typeof undefined === "undefined"`
- `undefined` 是 falsy：`Boolean(undefined) === false`
- `Number(undefined) === NaN`
- `String(undefined) === "undefined"`
- 未初始化变量默认值为 `undefined`
- 未提供参数默认值为 `undefined`
- 未提供 return 的函数返回 `undefined`

## 7. Equality and Relational Boundary

| 表达式 | 结果 | 说明 |
|---|---|---|
| `null == undefined` | `true` | 抽象相等 |
| `null === undefined` | `false` | 严格不等 |
| `null == null` | `true` | 自身相等 |
| `undefined == undefined` | `true` | 自身相等 |
| `null == 0` | `false` | null 不与 0 抽象相等 |
| `undefined == 0` | `false` | undefined 不与 0 抽象相等 |
| `null < 1` | `true` | null ToNumber 为 0 |
| `undefined < 1` | `false` | undefined ToNumber 为 NaN |

## 8. Optional Chaining

- `obj?.prop`：obj 为 null/undefined 时返回 undefined，否则返回 obj.prop
- `obj?.method()`：obj 为 null/undefined 时返回 undefined，否则调用 method
- `arr?.[index]`：arr 为 null/undefined 时返回 undefined，否则返回 arr[index]
- 短路：链中任一环节为 null/undefined 时，后续不执行
- `?.` 不能用作赋值目标（`obj?.prop = 1` 为 SyntaxError）

## 9. Nullish Coalescing

- `a ?? b`：a 为 null/undefined 时返回 b，否则返回 a
- 与 `||` 差异：`||` 对所有 falsy 值取 b，`??` 只对 null/undefined 取 b
- `0 ?? "default"` 返回 `0`（不是 "default"）
- `"" ?? "default"` 返回 `""`（不是 "default"）
- `false ?? "default"` 返回 `false`（不是 "default"）

## 10. Nullish Assignment

- `a ??= b`：a 为 null/undefined 时赋值为 b
- 等价于 `a = a ?? b` 但 a 只求值一次
- `??=` 是 ES2021 特性

## 11. Non-null Assertion Boundary

- `value!` 告诉编译器"这不是 null/undefined"
- 是 TypeScript 语法，运行时擦除
- 如果实际值为 null/undefined，运行时不报错（断言被擦除）
- 鸿蒙动态 ArkTS 是否支持 `!` 待确认

## 12. Optional Property Boundary

- `interface { prop?: T }` 等价于 `prop: T | undefined`
- 可选属性可以不存在（`"prop" in obj` 为 false）
- 可选属性存在但值为 undefined
- 访问不存在的属性返回 undefined（不抛异常）
- 鸿蒙动态 ArkTS 是否在编译期检查可选属性待确认

## 13. Function Parameter / Return Boundary

- 可选参数 `function f(a?: T)`：参数可以不提供
- 默认参数 `function f(a: T = default)`：参数为 undefined 时使用默认值
- `null` 作为参数传入：不触发默认值（只有 undefined 触发）
- 函数无 return 时返回 undefined
- 函数可以显式 return null 或 return undefined

## 14. Class / Interface Nullish Boundary

- class field 未初始化时为 undefined
- class field 显式赋值为 null
- interface optional property `prop?: T`
- class implements interface 时可选成员可以不实现
- class field 初始化顺序与 null/undefined 边界

## 15. Generic / NonNullable Boundary

- `NonNullable<T>`：排除 null 和 undefined
- `T | null`：union with null
- `T | undefined`：union with undefined
- `T extends object`：约束排除 null/undefined
- `T extends NonNullable<T>`：自约束
- 鸿蒙动态 ArkTS 是否支持这些类型待确认

## 16. Runtime Exception Conditions

| 条件 | 异常类型 | 说明 |
|---|---|---|
| 访问 null 的属性 | TypeError | "Cannot read properties of null" |
| 访问 undefined 的属性 | TypeError | "Cannot read properties of undefined" |
| 调用 null 的方法 | TypeError | "Cannot read properties of null" |
| 调用 undefined 的方法 | TypeError | "Cannot read properties of undefined" |
| null 作为可调用值调用 | TypeError | "null is not a function" |

## 17. Compile Negative Conditions

| 条件 | TypeScript 行为 | ArkTS 动态预期 |
|---|---|---|
| 可选链作为赋值目标 | SyntaxError | SyntaxError / compile error |
| strict null checks 下 null 赋给非 nullable | compile error | 需确认是否开启 strict null |
| 非空断言 `!` 如果不支持 | — | compile error（需确认） |

## 18. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| NS-PQ-P0-001 | 可选链 `?.` 是否支持 | compiler / runtime | P0 |
| NS-PQ-P0-002 | 空值合并 `??` 是否支持 | compiler / runtime | P0 |
| NS-PQ-P0-003 | null/undefined 属性访问是否抛 TypeError | runtime smoke | P0 |
| NS-PQ-P0-004 | 是否默认开启 strict null checks | compiler | P0 |
| NS-PQ-P1-001 | 空值赋值 `??=` 是否支持 | compiler / runtime | P1 |
| NS-PQ-P1-002 | 非空断言 `!` 是否允许 | compiler | P1 |
| NS-PQ-P1-003 | `NonNullable<T>` 是否支持 | compiler | P1 |
| NS-PQ-P1-004 | `T | null` / `T | undefined` 是否允许 | compiler | P1 |
| NS-PQ-P2-001 | 可选属性编译期检查 | compiler | P2 |
| NS-PQ-P2-002 | 动态与静态 ArkTS null safety 差异 | compiler / runtime | P2 |