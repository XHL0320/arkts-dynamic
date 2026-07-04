# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- CLASS_FEATURES_DEEPENING_2026_07_03 -->

## Decorator With Class Features Deepening Mapping

## Conclusion

Decorator with ArkTS class features is not directly covered by ECMAScript 2022 test262. These combinations should be covered by ArkTS parser/checker tests, compiler expected tests, bytecode expected tests, integration tests, and XTS smoke tests.

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| decorator + static | Mixed | 否 | static target/lowering 为 ArkTS decorator 组合 | compiler expected |
| decorator + readonly | TS-compatible / ArkTS-specific | 否 | readonly 是 checker 组合 | parser/checker |
| decorator + visibility | Pending / Mixed | 否 | private/protected 支持范围待确认 | boundary |
| decorator + constructor | Mixed | 否 | constructor 与 decorator timing 交叉 | XTS smoke |
| decorator + inheritance/super | Mixed | 否 | inheritance 可参考 ES，但 decorator 不来自 test262 | integration |
| decorator + override | TS-compatible / ArkTS-specific | 否 | override checker 不来自 test262 | parser/checker |
| decorator + abstract | Pending | 否 | ArkTS 支持范围待确认 | boundary |
| decorator + generic | Pending / Mixed | 否 | generic checker/lowering 不来自 test262 | boundary / compiler expected |
| decorator + implements | TS-compatible / ArkTS-specific | 否 | interface checker 不来自 test262 | parser/checker |
| decorator + overload/accessor/parameter boundary | Pending | 否 | target 支持范围待确认 | unsupported boundary |
| decorator + nested/local/class expression | Pending | 否 | syntax/target 支持范围待确认 | parser/checker boundary |
| PR 10632 class-feature reference | ArkTS-specific | 否 | 不是 class-feature bug，仅作 class-field integration risk reminder | regression reference |

PR 10632 is not a class-feature bug, but it involves property decorator with class field and transform/lowering, so it should be referenced only as a class-field integration risk reminder.
