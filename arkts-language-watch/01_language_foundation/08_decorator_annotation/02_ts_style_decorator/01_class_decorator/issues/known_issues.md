# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- CLASS_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-CLASS-RISK-001 | class decorator target 在 ArkTS 中的实际 lowering 规则 | Pending | 设计 compiler expected |
| DECORATOR-CLASS-RISK-002 | class decorator 返回值是否允许替换 class | Pending | 设计 boundary/runtime smoke |
| DECORATOR-CLASS-RISK-003 | class decorator 是否存在类似 PR 10632 的 AST state pollution | Pending | 设计 transform regression |
| DECORATOR-CLASS-RISK-004 | class decorator 是否存在类似 binder context pollution | Pending | 设计 bytecode expected |
| DECORATOR-CLASS-RISK-005 | export/default export 与 class decorator 的合法顺序 | Pending | 设计 parser/checker boundary |
| DECORATOR-CLASS-RISK-006 | generic/abstract/class expression 是否属于 class decorator 支持范围 | Pending | 设计 unsupported target boundary |
