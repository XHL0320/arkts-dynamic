# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- METHOD_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-METHOD-RISK-001 | method decorator target/key/descriptor 在 ArkTS 中的实际 lowering 规则 | Pending | 设计 compiler expected |
| DECORATOR-METHOD-RISK-002 | static method decorator target 是否与 class constructor 绑定 | Pending | 设计 compiler expected |
| DECORATOR-METHOD-RISK-003 | method decorator 是否存在类似 PR 10632 的 AST state pollution | Pending | 设计 transform regression |
| DECORATOR-METHOD-RISK-004 | method decorator 是否存在类似 binder context pollution | Pending | 设计 bytecode expected |
| DECORATOR-METHOD-RISK-005 | accessor/parameter decorator 是否属于 method decorator 支持范围 | Pending | 设计 unsupported target boundary |
| DECORATOR-METHOD-RISK-006 | descriptor 或 ArkTS 等价结构是否可观察 | Pending | 设计 runtime smoke / compiler expected |
