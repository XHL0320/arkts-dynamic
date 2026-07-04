# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- PROPERTY_DEEPENING_2026_07_03 -->

# test262 Mapping

## Conclusion

Property decorator is not directly covered by ECMAScript 2022 test262. ArkTS property decorator behavior should be covered by ArkTS compiler tests, bytecode expected tests, and XTS smoke tests.

## Mapping Table

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| instance property decorator | TS-compatible / ArkTS-specific | 否 | TS style decorator 不属于 ES2022 | XTS smoke / compiler expected |
| static property decorator | TS-compatible / ArkTS-specific | 否 | static target 由 ArkTS lowering 决定 | compiler expected |
| property decorator factory | TS-compatible / ArkTS-specific | 否 | factory 检查和 lowering 属于 ArkTS/TS 语义 | parser/checker / smoke |
| property decorator target 参数 | ArkTS-specific | 否 | target 形态依赖 ArkTS transform | compiler expected |
| property decorator key 参数 | ArkTS-specific | 否 | key 传递依赖 ArkTS transform | compiler expected |
| property decorator transform/lowering | ArkTS-specific | 否 | 编译链行为，不是 test262 runtime 语义 | compiler expected / bytecode expected |
| property decorator + module import | Mixed | 否 | module 可参考 ES，但 decorator lowering 不来自 test262 | integration |
| property decorator + field initializer | Mixed | 否 | field runtime 可参考 ES，但 decorator 语义不来自 test262 | XTS smoke |
| property decorator + visibility/readonly | ArkTS-specific / TS-compatible | 否 | 静态规则不来自 test262 | parser/checker |
| PR 10632 regression reference | ArkTS-specific | 否 | compiler pipeline regression | compiler expected / bytecode expected / XTS smoke |

PR 10632 belongs to ArkTS-specific property decorator compiler pipeline regression and should be covered by compiler expected / bytecode expected / XTS smoke, not test262. Its sendable-specific expansion belongs to `07_decorator_with_sendable/`.
