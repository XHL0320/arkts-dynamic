# Generic Spec Summary

## 1. Feature Scope

泛型体系看护覆盖以下方面：

- 泛型函数、泛型类、泛型接口、泛型方法
- 泛型参数声明、多泛型参数、泛型参数默认值
- 泛型约束 `T extends U`
- 泛型实参显式传入和推断
- 嵌套泛型、数组泛型、对象泛型
- 泛型与 union / intersection / conditional type 的兼容边界
- 泛型运行时擦除边界
- TypeScript generic 语法在鸿蒙动态 ArkTS 中的支持状态
- ArkTS 动态与静态 ArkTS 泛型语义差异

**关键认知**：Generic 在 ECMAScript 运行时中没有原生语义，属于 TypeScript / ArkTS 类型语法兼容层。泛型参数在运行时通常被擦除，不参与运行时行为。

## 2. TypeScript Generic Model

TypeScript 泛型是一种参数化类型的语法：
- 编译期用于类型检查和类型安全
- 运行时通常被完全擦除（不产生类型信息代码）
- 支持泛型函数、泛型类、泛型接口、泛型方法
- 支持泛型约束 `T extends U`
- 支持泛型默认参数 `T = DefaultType`
- 支持泛型实参推断
- 支持嵌套泛型

## 3. ArkTS Dynamic Generic Notes

鸿蒙动态 ArkTS 泛型语义需要确认的差异点：
1. 泛型语法是否允许在源码中出现
2. 泛型参数是否在运行时完全擦除
3. 泛型约束是否在编译期检查
4. 泛型实参推断是否支持
5. 泛型默认参数是否支持
6. 嵌套泛型是否支持
7. `Array<T>` / `Record<K, V>` / `Promise<T>` 等内置泛型是否支持
8. 泛型与 union type 结合是否支持
9. `typeof T` / `instanceof T` 对泛型参数的行为
10. 动态与静态 ArkTS 泛型语义差异

## 4. Generic Function

```typescript
function identity<T>(value: T): T { return value }
let result = identity<number>(42)    // 显式类型实参
let inferred = identity(42)           // 类型推断
```

- 泛型函数使用 `<T>` 声明类型参数
- 调用时可显式传入类型实参或由推断决定
- 泛型参数在函数体内可使用
- 运行时擦除：`T` 不参与运行时

## 5. Generic Class

```typescript
class Container<T> {
  value: T
  constructor(v: T) { this.value = v }
  getValue(): T { return this.value }
}
let c = new Container<number>(42)
```

- 泛型类使用 `<T>` 声明类型参数
- 实例化时传入类型实参
- 成员可使用泛型参数
- 运行时擦除：`T` 不参与运行时

## 6. Generic Interface

```typescript
interface KeyedStore<K, V> {
  get(key: K): V
  set(key: K, value: V): void
}
```

- 泛型接口使用 `<K, V>` 声明多个类型参数
- 实现时传入类型实参
- 运行时擦除

## 7. Generic Method

```typescript
class Utils {
  transform<T>(input: T): T { return input }
}
```

- 泛型方法在类方法中声明类型参数
- 调用时可显式传入或推断
- 运行时擦除

## 8. Type Parameter Declaration

- `<T>` 声明单个类型参数
- `<T, U>` 声明多个类型参数
- 类型参数名通常为 `T` / `U` / `K` / `V` / `E` 等
- 类型参数在声明作用域内可用

## 9. Multiple Type Parameters

```typescript
function pair<K, V>(key: K, value: V): [K, V] { return [key, value] }
```

- 支持多个类型参数
- 每个类型参数独立推断
- 顺序有语义

## 10. Generic Constraints

```typescript
function getLength<T extends { length: number }>(item: T): number {
  return item.length
}
```

- `T extends U` 约束泛型参数
- 约束要求类型实参满足结构
- 编译期检查约束
- 运行时不检查约束

## 11. Default Type Parameters

```typescript
function create<T = string>(): T[] { return [] }
```

- `T = DefaultType` 提供默认类型
- 未传入类型实参时使用默认
- TypeScript 2.3+ 支持

## 12. Explicit Type Arguments

```typescript
identity<number>(42)
```

- 显式传入类型实参
- 用于推断不准确时
- 运行时擦除

## 13. Type Argument Inference

```typescript
let result = identity(42)  // T 推断为 number
```

- 根据参数类型推断类型实参
- 多参数时取联合推断
- 推断可能在运行时擦除

## 14. Nested Generic Types

```typescript
let matrix: Array<Array<number>> = [[1, 2], [3, 4]]
let map: Map<string, Array<number>> = new Map()
```

- 嵌套泛型支持
- `Array<T>` / `Map<K, V>` 等内置泛型
- 运行时擦除

## 15. Generic Runtime Erasure Boundary

- 泛型参数在运行时完全擦除
- `typeof T` 非法（T 无运行时值）
- `instanceof T` 非法（T 无运行时原型）
- 泛型不产生运行时代码
- `Array<number>` 运行时为 `Array`
- 鸿蒙动态 ArkTS 是否完全擦除泛型待确认

## 16. Generic and Union / Intersection / Conditional Type Boundary

- 泛型与 union type `T | U` 结合边界
- 泛型与 intersection type `T & U` 结合边界
- 泛型与 conditional type `T extends U ? X : Y` 结合边界
- 这些是 TypeScript 高级类型特性
- 鸿蒙动态 ArkTS 支持状态待确认

## 17. Compile Negative Conditions

| 条件 | TypeScript 行为 | ArkTS 动态预期 |
|---|---|---|
| 泛型约束不满足 | compile error | compile error（需确认） |
| 重复类型参数名 | compile error | compile error（需确认） |
| typeof 泛型参数 | compile error | compile error（需确认） |
| instanceof 泛型参数 | compile error | compile error（需确认） |

## 18. Runtime Exception Conditions

泛型相关运行时异常较少，因为泛型通常在运行时擦除：
- 如果泛型有运行时表示，typeof 可能返回意外值
- 如果 instanceof 泛型被允许（非标准），可能产生 TypeError
- 泛型约束如果在运行时检查，可能产生 TypeError

## 19. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| GEN-PQ-P0-001 | 泛型语法是否允许在源码中出现 | compiler | P0 |
| GEN-PQ-P0-002 | 泛型参数是否在运行时完全擦除 | runtime smoke | P0 |
| GEN-PQ-P0-003 | 泛型约束是否在编译期检查 | compiler | P0 |
| GEN-PQ-P0-004 | 泛型实参推断是否支持 | compiler | P0 |
| GEN-PQ-P1-001 | 泛型默认参数是否支持 | compiler | P1 |
| GEN-PQ-P1-002 | 嵌套泛型是否支持 | compiler | P1 |
| GEN-PQ-P1-003 | `Array<T>` / `Promise<T>` 内置泛型是否支持 | compiler | P1 |
| GEN-PQ-P1-004 | 泛型与 union type 结合是否支持 | compiler | P1 |
| GEN-PQ-P2-001 | 泛型与 conditional type 结合是否支持 | compiler | P2 |
| GEN-PQ-P2-002 | typeof/instanceof 泛型参数行为 | runtime smoke | P2 |