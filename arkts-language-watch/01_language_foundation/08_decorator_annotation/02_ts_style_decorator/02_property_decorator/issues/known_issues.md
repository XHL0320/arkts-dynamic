# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- PROPERTY_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-PROPERTY-RISK-001 | static property decorator target 是否与 ArkTS lowering 规则完全一致 | Pending | 设计 compiler expected |
| DECORATOR-PROPERTY-RISK-002 | private/protected field 是否支持 property decorator | Pending | 设计 boundary |
| DECORATOR-PROPERTY-RISK-003 | computed property key 与 property decorator 是否支持 | Pending | 设计 parser/checker boundary |
| DECORATOR-PROPERTY-RISK-004 | property decorator factory 返回非函数时行为 | Pending | 设计 fail_runtime 或 boundary |
| DECORATOR-PROPERTY-RISK-005 | property decorator transform 是否还存在非 sendable 的 AST state pollution 风险 | Pending | 扩展 transform regression |
