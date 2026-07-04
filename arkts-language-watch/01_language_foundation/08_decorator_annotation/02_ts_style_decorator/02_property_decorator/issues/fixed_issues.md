# Fixed Issues

| 问题标题 | Decorator 场景 | 修复说明 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- PROPERTY_DEEPENING_2026_07_03 -->

| PR 10632 | property decorator 参数函数在 sendable class 场景下被错误标记为 inSendable，导致错误字节码 | property decorator + transform + binder + codegen | P0 | fixed | 本目录记录 property decorator 关联；sendable 扩展详见 `07_decorator_with_sendable/` |
