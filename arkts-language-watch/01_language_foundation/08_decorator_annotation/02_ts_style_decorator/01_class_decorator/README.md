# 01 Class Decorator

本目录用于看护 TS style decorator 的 `01_class_decorator` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- CLASS_DEEPENING_2026_07_03 -->

## Class Decorator Watch Focus

本目录用于看护 TS style class decorator 类装饰器相关能力。

### Scope

1. class declaration decorator；
2. class decorator 标识符形式；
3. class decorator factory 调用形式；
4. class decorator 参数表达式；
5. class decorator target 为 class constructor / class value；
6. class decorator 与 export class；
7. class decorator 与 default export class；
8. class decorator 与 inheritance；
9. class decorator 与 abstract/generic boundary；
10. class decorator 返回值行为；
11. class decorator 与 transform/lowering；
12. class decorator runtime smoke / compile negative / boundary。

### Regression Boundary

PR 10632 属于 property decorator + transform + sendable 的历史 regression，不属于 class decorator 主线。本目录只保留 class-side open question：class decorator 是否存在类似 transform/binder context 污染风险。

### Cross References

- `00_decorator_syntax/`
- `04_decorator_factory/`
- `05_decorator_transform/`
- `06_decorator_execution_order/`
- `07_decorator_with_sendable/`
