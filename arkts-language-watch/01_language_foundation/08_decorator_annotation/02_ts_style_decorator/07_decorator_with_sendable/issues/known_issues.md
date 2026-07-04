# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- SENDABLE_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-SENDABLE-RISK-001 | method decorator + sendable class 是否存在类似 transform/binder 上下文污染 | Pending | 设计 boundary 与 bytecode expected |
| DECORATOR-SENDABLE-RISK-002 | class decorator + sendable class 是否存在类似 transform/binder 上下文污染 | Pending | 设计 boundary |
| DECORATOR-SENDABLE-RISK-003 | static property decorator + sendable class target 与 inSendable 标记是否正确 | Pending | 设计 bytecode regression |
| DECORATOR-SENDABLE-RISK-004 | 多 decorator 下不同 decorator 参数函数是否会共享或污染状态 | Pending | 设计 regression |
