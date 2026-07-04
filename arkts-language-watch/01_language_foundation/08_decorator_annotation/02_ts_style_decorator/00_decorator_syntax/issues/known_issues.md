# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- SYNTAX_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-SYNTAX-RISK-001 | ArkTS 当前正式支持哪些 decorator target | Pending | 从 parser/checker 和官方规范确认 |
| DECORATOR-SYNTAX-RISK-002 | modifier order 是否与 TS legacy decorator 一致 | Pending | 设计 fail_compile/boundary |
| DECORATOR-SYNTAX-RISK-003 | member expression decorator 是否支持 | Pending | 设计 parser/checker boundary |
| DECORATOR-SYNTAX-RISK-004 | parameter/accessor decorator 是否支持 | Pending | 设计 unsupported target |
| DECORATOR-SYNTAX-RISK-005 | unsupported target 的报错阶段是 parser 还是 checker | Pending | 区分 parser/checker 用例 |
