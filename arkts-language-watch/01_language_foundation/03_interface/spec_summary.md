# Interface Spec Summary

## 1. Feature Scope

interface 体系看护覆盖以下方面：

- interface 声明语法和成员签名
- interface extends（单继承、多继承、冲突成员）
- class implements interface（语法和校验边界）
- object literal 结构兼容（structural typing）
- index signature、call signature、construct signature 边界
- interface merging / duplicate declaration 边界
- interface 运行时擦除边界
- TypeScript interface 语法在鸿蒙动态 ArkTS 中的支持状态
- ArkTS 动态与静态 ArkTS interface 语义差异

**关键认知**：interface 在 ECMAScript 运行时中没有原生语义，属于 TypeScript / ArkTS 类型语法兼容层。interface 声明在运行时通常被擦除，不产生运行时对象。

## 2. TypeScript Interface Model

TypeScript interface 是一种描述对象结构的类型语法：
- 编译期用于类型检查
- 运行时通常被完全擦除（不产生任何代码）
- 支持结构类型（structural typing），对象只需匹配结构而非显式实现
- 支持 extends 多继承
- 支持 class implements
- 支持可选属性、readonly 属性、index signature、call/construct signature

## 3. ArkTS Dynamic Interface Notes

鸿蒙动态 ArkTS interface 语义需要确认的差异点：
1. interface 声明是否允许在源码中出现
2. interface 是否在运行时完全擦除
3. class implements 是否做编译期校验
4. object literal 结构兼容是否在运行时检查
5. interface extends 多继承是否支持
6. index signature 是否支持
7. call/construct signature 是否支持
8. interface merging 是否支持
9. typeof interface 是否返回 "function" 或 "object"（如果 interface 有运行时表示）
10. instanceof interface 是否合法（通常非法，因为 interface 无运行时对象）

## 4. Interface Declaration

```typescript
interface MyInterface {
  property: string
  method(): number
}
```

- interface 声明使用 `interface` 关键字
- 空接口 `interface Empty {}` 合法
- interface 声明创建类型层绑定，运行时通常擦除
- interface 名不能与同作用域其他声明重复（TypeScript 允许同名 interface merging）

## 5. Property Signature

```typescript
interface Props {
  required: string
  optional?: number
  readonly immutable: boolean
}
```

- 必选属性：必须有值
- 可选属性：使用 `?` 标记，可以不存在
- readonly 属性：只读，不可重新赋值
- 属性类型标注在编译期检查，运行时擦除

## 6. Method Signature

```typescript
interface Methods {
  compute(input: number): string
  optionalMethod?(): void
}
```

- 方法签名包含参数和返回值类型
- 可选方法使用 `?` 标记
- 方法签名在编译期检查，运行时擦除

## 7. Optional Members

- 可选属性：`prop?: type`
- 可选方法：`method?(): returnType`
- 可选成员在运行时可能不存在
- 访问可选成员需要处理 undefined 情况

## 8. Readonly Members

- `readonly prop: type` 表示只读属性
- 编译期禁止重新赋值
- 运行时不保证不可变（readonly 是编译期概念）
- 与 `const` 不同：const 是变量绑定不可变，readonly 是属性不可重新赋值

## 9. Index Signature Boundary

```typescript
interface StringIndex {
  [key: string]: number
}
interface NumberIndex {
  [index: number]: string
}
```

- string index signature：任意字符串键映射到指定类型
- number index signature：任意数字键映射到指定类型
- 鸿蒙动态 ArkTS 是否支持 index signature 待确认

## 10. Call Signature Boundary

```typescript
interface Callable {
  (input: number): string
}
```

- call signature 描述可调用对象的调用签名
- 可赋值给函数变量
- 鸿蒙动态 ArkTS 是否支持 call signature 待确认

## 11. Construct Signature Boundary

```typescript
interface Constructable {
  new (): Example
}
```

- construct signature 描述可构造对象的 new 签名
- 可赋值给类构造器变量
- 鸿蒙动态 ArkTS 是否支持 construct signature 待确认

## 12. Interface Extends

```typescript
interface A { a: number }
interface B { b: string }
interface C extends A, B { c: boolean }
```

- 单继承：`interface C extends A`
- 多继承：`interface C extends A, B`
- 继承的成员合并到子 interface
- 冲突成员（同名不同类型）可能导致编译错误

## 13. Class Implements Interface

```typescript
interface IFoo { bar(): void }
class Foo implements IFoo {
  bar(): void { /* implementation */ }
}
```

- class 使用 `implements` 关键字实现 interface
- class 必须实现 interface 的所有必选成员
- 可选成员可以不实现
- 缺少必选成员导致编译错误
- implements 是编译期校验，运行时不产生关系

## 14. Object Structural Compatibility

```typescript
interface Point { x: number; y: number }
let p: Point = { x: 1, y: 2 }  // 结构匹配
```

- TypeScript 使用结构类型（structural typing）
- 对象只需匹配 interface 的结构，不需要显式 implements
- excess property（多余属性）在直接赋值时可能报错
- 鸿蒙动态 ArkTS 是否实现结构兼容检查待确认

## 15. Interface Merging / Duplicate Declaration

```typescript
interface Merged { a: number }
interface Merged { b: string }
// 合并后: { a: number; b: string }
```

- TypeScript 允许同名 interface 声明合并
- 合并后的 interface 包含所有声明的成员
- 同名同类型属性合并
- 同名不同类型属性导致编译错误
- 鸿蒙动态 ArkTS 是否支持 merging 待确认

## 16. Runtime Erasure Boundary

- interface 声明在运行时通常完全擦除
- `typeof MyInterface` 通常非法（无运行时对象）
- `obj instanceof MyInterface` 通常非法（无运行时原型链）
- interface 不产生运行时代码
- 鸿蒙动态 ArkTS 是否完全擦除 interface 待确认

## 17. Compile Negative Conditions

| 条件 | TypeScript 行为 | ArkTS 动态预期 |
|---|---|---|
| class 缺少必选成员 | compile error | compile error（需确认） |
| interface 同名不同类型成员 | compile error | compile error（需确认） |
| excess property 直接赋值 | compile error | compile error（需确认） |
| typeof interface | compile error 或 undefined | 需确认 |
| instanceof interface | compile error | compile error（需确认） |

## 18. Runtime Exception Conditions

interface 相关运行时异常较少，因为 interface 通常在运行时擦除：
- 如果 interface 有运行时表示，typeof 可能返回意外值
- 如果 instanceof interface 被允许（非标准），可能产生 TypeError
- 结构兼容检查如果推迟到运行时，可能产生 TypeError

## 19. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| IF-PQ-P0-001 | interface 声明是否允许在源码中出现 | compiler | P0 |
| IF-PQ-P0-002 | interface 是否在运行时完全擦除 | runtime smoke | P0 |
| IF-PQ-P0-003 | class implements 是否做编译期校验 | compiler | P0 |
| IF-PQ-P0-004 | object literal 结构兼容是否在运行时检查 | runtime smoke | P0 |
| IF-PQ-P1-001 | interface extends 多继承是否支持 | compiler | P1 |
| IF-PQ-P1-002 | index signature 是否支持 | compiler | P1 |
| IF-PQ-P1-003 | call/construct signature 是否支持 | compiler | P1 |
| IF-PQ-P1-004 | interface merging 是否支持 | compiler | P1 |
| IF-PQ-P1-005 | readonly 属性编译期校验 | compiler | P1 |
| IF-PQ-P2-001 | typeof interface 行为 | runtime smoke | P2 |
| IF-PQ-P2-002 | instanceof interface 行为 | compiler / runtime | P2 |
| IF-PQ-P2-003 | generic interface 支持边界 | compiler | P2 |