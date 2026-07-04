# 02 Property Decorator

本目录用于看护 TS style decorator 的 `02_property_decorator` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- PROPERTY_DEEPENING_2026_07_03 -->

# Property Decorator

本目录用于看护 TS style property decorator 属性装饰器相关能力。

## Scope

重点关注：

1. instance property decorator；
2. static property decorator；
3. property decorator 标识符形式；
4. property decorator factory 调用形式；
5. property decorator 参数表达式；
6. property decorator target 参数；
7. property decorator property key 参数；
8. property decorator 与 field initializer；
9. property decorator 与 readonly/static/visibility；
10. property decorator 与字段类型系统；
11. property decorator 与 transform/lowering；
12. property decorator 与 module scope；
13. property decorator compile negative / boundary；
14. property decorator runtime smoke。

## Regression Boundary

PR 10632 属于 property decorator 的历史回归问题，但它的核心交叉点是：

`property decorator + sendable class + transformer + binder + bytecode`

因此 PR 10632 在本目录只作为 regression 关联，不作为普通 property decorator 全量测试的主线。

## Out of Scope

本目录不直接展开：

1. ArkUI UI decorators；
2. `@interface/@Retention/@Target` annotation；
3. method decorator；
4. class decorator；
5. decorator execution order 的完整规则；
6. sendable class 语义本体；
7. 大量 sendable class 组合变体。

相关交叉目录：

- `05_decorator_transform/`
- `04_decorator_factory/`
- `09_decorator_module_scope/`
- `07_decorator_with_sendable/`
