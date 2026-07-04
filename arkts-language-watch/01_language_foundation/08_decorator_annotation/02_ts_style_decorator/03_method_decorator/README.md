# 03 Method Decorator

本目录用于看护 TS style decorator 的 `03_method_decorator` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- METHOD_DEEPENING_2026_07_03 -->

# Method Decorator

本目录用于看护 TS style method decorator 方法装饰器相关能力。

## Scope

重点关注：

1. instance method decorator；
2. static method decorator；
3. method decorator 标识符形式；
4. method decorator factory 调用形式；
5. method decorator 参数表达式；
6. method decorator target 参数；
7. method decorator method key 参数；
8. method decorator descriptor 或 ArkTS 等价结构；
9. method decorator 与参数类型；
10. method decorator 与返回值类型；
11. method decorator 与 visibility/static/override；
12. method decorator 与 super.method；
13. method decorator 与 async/generic/overload boundary；
14. method decorator 与 transform/lowering；
15. method decorator runtime smoke / compile negative / boundary。

## Regression Boundary

PR 10632 属于 property decorator + transform + sendable 的历史 regression，不属于 method decorator 主线。

本目录只保留一个 regression reference：

- method decorator 是否存在类似 transform/binder context 污染风险，需要作为 open question；
- sendable-specific 扩展归入 `07_decorator_with_sendable/`；
- transform 根因归入 `05_decorator_transform/`。

## Out of Scope

本目录不直接展开：

1. ArkUI UI decorators；
2. `@interface/@Retention/@Target` annotation；
3. property decorator target/key 完整矩阵；
4. class decorator 返回值语义；
5. decorator factory 求值顺序完整语义；
6. decorator execution order 完整规则；
7. sendable class 语义本体。

相关交叉目录：

- `00_decorator_syntax/`
- `04_decorator_factory/`
- `05_decorator_transform/`
- `06_decorator_execution_order/`
- `07_decorator_with_sendable/`
