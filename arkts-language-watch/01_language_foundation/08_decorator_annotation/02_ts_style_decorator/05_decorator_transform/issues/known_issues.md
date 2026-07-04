# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- TRANSFORM_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-TRANSFORM-RISK-001 | decorator transform 后原始节点和 lowered 节点共享指针是否还影响其他 flag | Pending | 扩展 AST state pollution 测试 |
| DECORATOR-TRANSFORM-RISK-002 | method decorator 是否存在类似 binder context 污染 | Pending | 设计 boundary/bytecode expected |
| DECORATOR-TRANSFORM-RISK-003 | class decorator 是否存在类似 transform context 污染 | Pending | 设计 boundary |
| DECORATOR-TRANSFORM-RISK-004 | static property decorator target 与 context 是否稳定 | Pending | 设计 compiler expected |
