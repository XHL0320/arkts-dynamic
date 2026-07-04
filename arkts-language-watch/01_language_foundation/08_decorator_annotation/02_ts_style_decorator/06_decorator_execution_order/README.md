# 06 Decorator Execution Order

本目录用于看护 TS style decorator 的 `06_decorator_execution_order` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- EXECUTION_ORDER_DEEPENING_2026_07_03 -->

## Decorator Execution Order Watch Focus

本目录用于看护 TS style decorator 的执行顺序相关能力。

### Scope

1. 单个 decorator 的求值与调用顺序；
2. 多个 decorators 的求值顺序；
3. 多个 decorators 的调用顺序；
4. decorator factory 求值顺序；
5. factory 参数表达式求值顺序；
6. factory 返回 decorator function 后的调用顺序；
7. class decorator / property decorator / method decorator 混合顺序；
8. static member 与 instance member 的 decorator 顺序；
9. decorator side effect 顺序；
10. decorator 与 field initializer / static initializer 的相对顺序；
11. decorator 与 module initialization 的相对顺序；
12. transform/lowering 后顺序是否稳定。

### Regression Boundary

PR 10632 属于 property decorator + transform + sendable 的历史 regression，不属于 execution order 主线。本目录只保留 lowering/order reference。

### Cross References

- `00_decorator_syntax/`
- `01_class_decorator/`
- `02_property_decorator/`
- `03_method_decorator/`
- `04_decorator_factory/`
- `05_decorator_transform/`
- `07_decorator_with_sendable/`
