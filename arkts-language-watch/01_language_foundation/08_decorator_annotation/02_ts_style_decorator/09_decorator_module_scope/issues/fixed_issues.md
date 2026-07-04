# Fixed Issues

| 问题标题 | Decorator 场景 | 修复说明 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- MODULE_SCOPE_DEEPENING_2026_07_03 -->

| PR 10632 | property decorator transform/sendable/codegen regression，对 module scope 仅有 imported binding 参考价值 | reference only | P1 | fixed elsewhere | module scope 需确认 lowering 后 imported binding 与 factory 参数作用域是否稳定 |
