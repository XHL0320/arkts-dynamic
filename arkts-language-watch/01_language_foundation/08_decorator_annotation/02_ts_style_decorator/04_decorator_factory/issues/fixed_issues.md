# Fixed Issues

| 问题标题 | Decorator 场景 | 修复说明 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- FACTORY_DEEPENING_2026_07_03 -->

| PR 10632 | decorator factory 参数表达式在 property decorator transform 后触发错误上下文传播 | factory parameter + property decorator + transform + binder + codegen | P0 | fixed | 本目录记录 factory 关联；sendable 扩展详见 `07_decorator_with_sendable/` |
