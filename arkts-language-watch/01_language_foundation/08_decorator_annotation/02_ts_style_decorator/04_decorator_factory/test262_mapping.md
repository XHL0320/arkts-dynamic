# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- FACTORY_DEEPENING_2026_07_03 -->

# test262 Mapping

## Conclusion

Decorator factory is not directly covered by ECMAScript 2022 test262. ArkTS decorator factory behavior should be covered by ArkTS compiler tests, bytecode expected tests, and XTS smoke tests.

## Mapping Table

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| decorator factory call | TS-compatible / ArkTS-specific | 否 | TS style decorator 不属于 ES2022 | XTS smoke / compiler expected |
| factory parameters | TS-compatible / ArkTS-specific | 否 | 参数检查与 decorator 绑定是 ArkTS/TS 规则 | parser/checker / smoke |
| factory return decorator function | TS-compatible / ArkTS-specific | 否 | 返回函数作为 decorator 的调用不来自 test262 | compiler expected |
| factory invalid return | ArkTS-specific | 否 | checker/runtime 边界由 ArkTS 决定 | boundary |
| factory evaluation order | ArkTS-specific / TS-compatible | 否 | decorator factory 求值顺序不由 test262 覆盖 | XTS smoke |
| factory transform/lowering | ArkTS-specific | 否 | 编译链 lowering 行为 | compiler expected / bytecode expected |
| factory + property decorator | Mixed | 否 | property decorator 不来自 test262 | integration |
| factory + module import | Mixed | 否 | module 可参考 ES，但 decorator factory 语义不来自 test262 | integration |
| factory + runtime side effects | Mixed | 否 | 副作用可运行验证，但 decorator factory 规则不来自 test262 | XTS smoke |
| PR 10632 regression reference | ArkTS-specific | 否 | compiler pipeline regression | compiler expected / bytecode expected / XTS smoke |

PR 10632 includes a decorator factory parameter-expression risk and should be covered by compiler expected / bytecode expected / XTS smoke. Its sendable-specific expansion belongs to `07_decorator_with_sendable/`.
