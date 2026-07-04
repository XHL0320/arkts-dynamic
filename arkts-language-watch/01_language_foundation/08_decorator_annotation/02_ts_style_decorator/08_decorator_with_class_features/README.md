# 08 Decorator With Class Features

本目录用于看护 TS style decorator 的 `08_decorator_with_class_features` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- CLASS_FEATURES_DEEPENING_2026_07_03 -->

## Decorator With Class Features Watch Focus

本目录用于看护 TS style decorator 与 ArkTS class features 的组合行为。

### Scope

1. decorator + static；
2. decorator + readonly；
3. decorator + public/private/protected；
4. decorator + field initializer；
5. decorator + constructor；
6. decorator + inheritance；
7. decorator + super；
8. decorator + override；
9. decorator + abstract class / abstract method boundary；
10. decorator + generic class / generic method；
11. decorator + implements interface；
12. decorator + method overload boundary；
13. decorator + getter/setter/accessor boundary；
14. decorator + nested/local/class expression boundary；
15. decorator + transform/lowering 与 class features 的交叉。

### Regression Boundary

PR 10632 属于 property decorator + transform + sendable 的历史 regression，不属于本目录主线。本目录只保留 property decorator 与 class field / transform 的组合参考。

### Cross References

- `01_class_decorator/`
- `02_property_decorator/`
- `03_method_decorator/`
- `04_decorator_factory/`
- `05_decorator_transform/`
- `06_decorator_execution_order/`
- `07_decorator_with_sendable/`
- `09_decorator_module_scope/`
