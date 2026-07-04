# Fixed Issues

| 问题标题 | Decorator 场景 | 修复说明 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- EXECUTION_ORDER_DEEPENING_2026_07_03 -->

| PR 10632 | property decorator transform/sendable/codegen regression，对 execution order 仅有 lowering 顺序参考价值 | reference only | P1 | fixed elsewhere | execution order 需确认 lowering 后 factory 参数求值和 decorator 调用顺序是否稳定 |
