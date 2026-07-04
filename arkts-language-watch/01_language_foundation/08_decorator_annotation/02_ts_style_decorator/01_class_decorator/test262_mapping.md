# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- CLASS_DEEPENING_2026_07_03 -->

## Class Decorator Deepening Mapping

## Conclusion

Class decorator is not directly covered by ECMAScript 2022 test262. ArkTS class decorator behavior should be covered by ArkTS parser/checker tests, compiler expected tests, bytecode expected tests, and XTS smoke tests.

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| class decorator basic syntax | TS-compatible / ArkTS-specific | 否 | TS style decorator 不属于 ES2022 | parser/checker + XTS smoke |
| class decorator target | ArkTS-specific | 否 | target/lowering 是 ArkTS 编译链行为 | compiler expected |
| class decorator factory | TS-compatible / ArkTS-specific | 否 | factory 行为不属于 test262 | XTS smoke + compiler expected |
| class decorator return value | Pending | 否 | 返回替换 class 行为需确认 | boundary / runtime smoke |
| class decorator export/default | Mixed | 否 | module binding 与 decorator lowering 交叉 | parser/checker + compiler expected |
| class decorator inheritance | Mixed | 否 | class 继承检查可参考语义但 decorator 不来自 test262 | ArkTS checker |
| class decorator abstract/generic boundary | Pending | 否 | ArkTS 支持范围需确认 | manual pending |
| class decorator transform/lowering | ArkTS-specific | 否 | 编译器 lowering/codegen 行为 | bytecode expected |
| class decorator module import | Mixed | 否 | decorator import/lowering 不属于 ES2022 | module integration |
| PR 10632 class-side open question | ArkTS-specific | 否 | PR 10632 不是 class decorator bug，仅提示类似污染风险 | transform regression |

PR 10632 is not a class decorator bug. It should only be referenced here as a reminder to check whether class decorator transform has similar AST state pollution or binder context risks.
