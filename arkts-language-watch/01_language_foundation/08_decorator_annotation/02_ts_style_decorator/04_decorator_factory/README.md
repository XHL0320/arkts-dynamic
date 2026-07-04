# 04 Decorator Factory

本目录用于看护 TS style decorator 的 `04_decorator_factory` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- FACTORY_DEEPENING_2026_07_03 -->

# Decorator Factory

本目录用于看护 TS style decorator factory 调用表达式相关能力。

## Scope

重点关注：

1. decorator factory 基础调用；
2. factory 无参 / 单参 / 多参；
3. factory 参数表达式求值；
4. factory 参数为 literal / identifier / function / IIFE；
5. factory 参数引用 module import；
6. factory 返回 decorator function；
7. factory 返回闭包 decorator function；
8. factory 返回非法值；
9. factory 抛异常；
10. factory 求值顺序；
11. 多个 decorator factories；
12. factory 与 class/property/method decorator 的组合；
13. factory 与 transform/lowering；
14. factory 与 module scope；
15. factory runtime smoke / compile negative / boundary。

## Regression Boundary

PR 10632 中包含 factory 参数表达式形态：

`@decoratorFactory((() => { print(moduleVar) })())`

该问题在本目录中只作为：

- factory 参数表达式；
- IIFE / arrow function 参数；
- module import 参数；
- transform/lowering regression reference；

不作为 sendable class 主线展开。

sendable-specific 扩展归入：

`07_decorator_with_sendable/`

## Out of Scope

本目录不直接展开：

1. ArkUI UI decorators；
2. `@interface/@Retention/@Target` annotation；
3. sendable class 语义本体；
4. property decorator target/key 完整矩阵；
5. method/class decorator 完整矩阵；
6. decorator execution order 的完整规则。

相关交叉目录：

- `02_property_decorator/`
- `05_decorator_transform/`
- `09_decorator_module_scope/`
- `07_decorator_with_sendable/`
