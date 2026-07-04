# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- EXECUTION_ORDER_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-ORDER-RISK-001 | 多个 decorators 的求值顺序与调用顺序在 ArkTS 中是否与 TS legacy 一致 | Pending | 设计 runtime smoke / compiler expected |
| DECORATOR-ORDER-RISK-002 | class/property/method decorator 混合顺序是否稳定 | Pending | 设计 integration order 测试 |
| DECORATOR-ORDER-RISK-003 | factory 参数 IIFE 与 returned decorator function 调用顺序是否稳定 | Pending | 设计 compiler expected |
| DECORATOR-ORDER-RISK-004 | transform/lowering 后是否改变原始 decorator 执行顺序 | Pending | 设计 bytecode expected |
| DECORATOR-ORDER-RISK-005 | decorator throw / factory throw 后后续 decorators 是否执行 | Pending | 设计 fail_runtime/boundary |
| DECORATOR-ORDER-RISK-006 | decorator 与 static field initializer 的相对顺序 | Pending | 设计 runtime smoke |
