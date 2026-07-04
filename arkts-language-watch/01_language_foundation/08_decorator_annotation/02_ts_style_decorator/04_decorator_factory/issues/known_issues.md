# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- FACTORY_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-FACTORY-RISK-001 | factory 返回非函数时 ArkTS 行为是 checker 报错还是 runtime 报错 | Pending | 设计 boundary |
| DECORATOR-FACTORY-RISK-002 | 多个 decorator factories 的求值顺序是否与 TS legacy 行为一致 | Pending | 设计 execution order 测试 |
| DECORATOR-FACTORY-RISK-003 | factory 参数 IIFE 与 transform lowering 后作用域是否稳定 | Pending | 设计 compiler expected |
| DECORATOR-FACTORY-RISK-004 | imported factory 的 module initialization order 是否稳定 | Pending | 设计 module scope 测试 |
| DECORATOR-FACTORY-RISK-005 | factory 参数中的 function expression 是否存在非 sendable 的 AST state pollution 风险 | Pending | 关联 transform regression |
