# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- METHOD_DEEPENING_2026_07_03 -->

# test262 Mapping

## Conclusion

Method decorator is not directly covered by ECMAScript 2022 test262. ArkTS method decorator behavior should be covered by ArkTS parser/checker tests, compiler expected tests, bytecode expected tests, and XTS smoke tests.

## Mapping Table

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| instance method decorator | TS-compatible / ArkTS-specific | 否 | TS style decorator 不属于 ES2022 | XTS smoke / compiler expected |
| static method decorator | TS-compatible / ArkTS-specific | 否 | static target 由 ArkTS lowering 决定 | compiler expected |
| method decorator target | ArkTS-specific | 否 | target 形态依赖 ArkTS transform | compiler expected |
| method decorator key | ArkTS-specific | 否 | key 传递依赖 ArkTS transform | compiler expected |
| method descriptor / equivalent structure | ArkTS-specific | 否 | descriptor 或等价结构依赖 ArkTS 实现 | compiler expected |
| method decorator factory | TS-compatible / ArkTS-specific | 否 | factory 检查和 lowering 不来自 test262 | parser/checker / XTS smoke |
| method decorator transform/lowering | ArkTS-specific | 否 | 编译链行为 | compiler expected / bytecode expected |
| method decorator + override/super | Mixed | 否 | override 静态规则不来自 test262，super runtime 可作交叉验证 | integration |
| method decorator + async/generic/overload boundary | Pending | 否 | 支持范围待确认 | boundary |
| PR 10632 method-side open question | ArkTS-specific | 否 | 不是 method decorator bug，仅提示类似风险 | transform regression |

PR 10632 is not a method decorator bug. It should only be referenced here as a reminder to check whether method decorator transform has similar AST state pollution or binder context risks.
