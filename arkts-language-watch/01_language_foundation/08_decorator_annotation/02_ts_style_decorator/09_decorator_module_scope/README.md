# 09 Decorator Module Scope

本目录用于看护 TS style decorator 的 `09_decorator_module_scope` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- MODULE_SCOPE_DEEPENING_2026_07_03 -->

## Decorator Module Scope Watch Focus

本目录用于看护 TS style decorator 与 ArkTS module scope / import / export 的交叉行为。

### Scope

1. decorator function 从模块 import；
2. decorator factory 从模块 import；
3. decorator 参数引用 imported binding；
4. decorator 参数函数捕获 imported binding；
5. factory 返回 decorator function 并捕获 module binding；
6. class/property/method decorator 与 export class；
7. class/property/method decorator 与 default export class；
8. decorated class 被其他模块 import；
9. decorator module 的 side effect；
10. decorated module 的 top-level side effect；
11. module initialization order；
12. circular import / re-export boundary；
13. transform/lowering 后 module binding 是否稳定；
14. runtime smoke / compile negative / boundary。

### Regression Boundary

PR 10632 在本目录中只作为 imported binding、factory 参数函数捕获 imported binding、transform/lowering 后 module binding 的 regression reference；sendable-specific 扩展归入 `07_decorator_with_sendable/`。

### Cross References

- `01_class_decorator/`
- `02_property_decorator/`
- `03_method_decorator/`
- `04_decorator_factory/`
- `05_decorator_transform/`
- `06_decorator_execution_order/`
- `07_decorator_with_sendable/`
