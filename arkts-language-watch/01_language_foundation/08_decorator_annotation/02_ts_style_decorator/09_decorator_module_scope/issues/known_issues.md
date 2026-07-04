# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- MODULE_SCOPE_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-MODULE-RISK-001 | lowering 后 class 外 decorator 调用是否稳定解析 imported binding | Pending | 设计 compiler expected |
| DECORATOR-MODULE-RISK-002 | imported decorator/factory 的 module initialization order 是否稳定 | Pending | 设计 multi-file integration |
| DECORATOR-MODULE-RISK-003 | factory 参数函数捕获 imported binding 是否在 lowering 后仍正确 | Pending | 设计 transform regression |
| DECORATOR-MODULE-RISK-004 | circular import 中 decorator/factory 是否有稳定行为 | Pending | 设计 boundary |
| DECORATOR-MODULE-RISK-005 | re-export decorator/factory 是否支持 | Pending | 设计 parser/checker/multi-file boundary |
| DECORATOR-MODULE-RISK-006 | namespace/default import decorator 是否属于支持范围 | Pending | 设计 unsupported target boundary |
