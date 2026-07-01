# Class Overall Test Design

## Design Principle

Class 看护目录不按每个小语法点无限拆分，而是在每个聚合目录中细化测试设计。

测试设计需要覆盖：

- 语法合法性；
- 类型检查；
- 运行时行为；
- 编译负向；
- 边界条件；
- 组合场景；
- ArkTS 与 ECMAScript / TypeScript 差异；
- 历史缺陷回归。

## Required Test Types

每个子特性至少考虑：

| 用例类型 | 说明 |
|---|---|
| pass | 合法语法、合法类型、正常运行 |
| fail_compile | parser/checker 应拦截的错误 |
| fail_runtime | ECMA 运行时异常，如 TypeError、ReferenceError |
| boundary | 空类、空构造、继承边界、初始化顺序等 |
| regression | 历史缺陷回归 |
| integration | 与 interface、generic、module、null safety、function type 等组合 |

## P0 First Batch

优先补充以下目录测试设计：

1. 03_field
2. 04_method
3. 05_constructor
4. 07_inheritance
5. 08_super
6. 13_abstract_class
7. 14_class_and_interface

## Cross Feature Matrix

| 交叉点 | 看护内容 |
|---|---|
| class as type | `let a: A = new A()` |
| class as value | `let ctor = A` |
| constructor type | `typeof A` / construct signature |
| instance type | 实例字段和方法访问 |
| class implements interface | 成员完整性检查 |
| class extends class | 基类/派生类兼容 |
| abstract class type | 抽象类不可实例化但可作为类型 |
| object literal to class | 结构兼容还是名义限制 |
| private/protected compatibility | 可见性是否影响结构兼容 |
| generic class type | `Box<T>` 类型兼容 |
| this type | 方法返回 this、链式调用 |
| static side vs instance side | 静态成员不属于实例类型 |
