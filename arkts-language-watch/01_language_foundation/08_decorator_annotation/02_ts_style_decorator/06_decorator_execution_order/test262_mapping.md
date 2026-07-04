# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- EXECUTION_ORDER_DEEPENING_2026_07_03 -->

## Execution Order Deepening Mapping

## Conclusion

TS style decorator execution order is not directly covered by ECMAScript 2022 test262. ArkTS decorator execution order should be covered by ArkTS compiler expected tests, bytecode expected tests, and XTS smoke tests.

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| single decorator order | TS-compatible / ArkTS-specific | 否 | TS style decorator 不属于 ES2022 | XTS smoke |
| multiple decorators same target | TS-compatible / ArkTS-specific | 否 | 多 decorator 顺序不属于 test262 | XTS smoke / compiler expected |
| class/property/method mixed order | Mixed | 否 | ArkTS lowering 与 class features 交叉 | integration / compiler expected |
| factory evaluation order | TS-compatible / ArkTS-specific | 否 | decorator factory 非 ES2022 | XTS smoke |
| factory argument evaluation order | TS-compatible / ArkTS-specific | 否 | decorator 参数表达式非 test262 范围 | XTS smoke |
| decorator function invocation order | TS-compatible / ArkTS-specific | 否 | decorator 调用时机非 ES2022 | compiler expected |
| module initialization order | Mixed | 否 | module 与 decorator lowering 交叉 | integration |
| transform/lowering order | ArkTS-specific | 否 | 编译器 lowering/codegen 行为 | bytecode expected |
| throw / invalid return order boundary | Pending | 否 | ArkTS 行为待确认 | boundary |
| PR 10632 order-side reference | ArkTS-specific | 否 | 不是 execution-order bug，仅作为 lowering/order risk reminder | regression reference |

PR 10632 is not an execution-order bug, but it involves property decorator lowering and factory argument expression, so it should be referenced only as a transform/order risk reminder.
