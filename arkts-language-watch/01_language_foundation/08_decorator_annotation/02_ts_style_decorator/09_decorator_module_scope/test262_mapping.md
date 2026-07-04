# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- MODULE_SCOPE_DEEPENING_2026_07_03 -->

## Decorator Module Scope Deepening Mapping

## Conclusion

TS style decorator module-scope behavior is not directly covered by ECMAScript 2022 test262. ArkTS decorator module-scope behavior should be covered by ArkTS compiler expected tests, bytecode expected tests, multi-file integration tests, and XTS smoke tests.

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| imported decorator function | Mixed | 否 | TS style decorator import/module 交叉不属于 ES2022 test262 | multi-file integration |
| imported decorator factory | Mixed | 否 | factory import/lowering 是 ArkTS compiler 行为 | compiler expected |
| decorator parameter imported binding | Mixed | 否 | decorator 参数表达式不属于 test262 | XTS smoke / compiler expected |
| factory closure with module binding | Mixed | 否 | closure + lowering 需 ArkTS 验证 | compiler expected |
| export decorated class | Mixed | 否 | export binding 与 decorator lowering 交叉 | multi-file integration |
| default export decorated class | Pending | 否 | 支持范围待确认 | boundary |
| module initialization order | Mixed | 否 | module order + decorator side effect 非 test262 主线 | integration |
| circular import boundary | Pending | 否 | ArkTS 行为待确认 | boundary |
| transform/lowering module binding | ArkTS-specific | 否 | 编译器 lowering/codegen 行为 | bytecode expected |
| PR 10632 module-side reference | ArkTS-specific | 否 | 不是 module-scope bug，仅作为 moduleVar 风险提醒 | regression reference |

PR 10632 is not a module-scope bug, but it uses imported `moduleVar` inside a decorator factory parameter expression, so it should be referenced only as a transform/module-binding risk reminder.
