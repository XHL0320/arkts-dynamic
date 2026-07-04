# Known Issues

| 问题标题 | Decorator 场景 | 影响范围 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- CLASS_FEATURES_DEEPENING_2026_07_03 -->

| ID | 风险点 | 状态 | 建议 |
|---|---|---|---|
| DECORATOR-CLASS-FEATURE-RISK-001 | private/protected member 是否支持 decorator 以及 target/key 如何表示 | Pending | 设计 parser/checker/compiler expected |
| DECORATOR-CLASS-FEATURE-RISK-002 | abstract class/method/property 与 decorator 的支持范围 | Pending | 设计 unsupported boundary |
| DECORATOR-CLASS-FEATURE-RISK-003 | generic class/method 与 decorator lowering 是否稳定 | Pending | 设计 compiler expected |
| DECORATOR-CLASS-FEATURE-RISK-004 | override + decorator 是否影响 override checker | Pending | 设计 fail_compile/pass 对照 |
| DECORATOR-CLASS-FEATURE-RISK-005 | overload/accessor/parameter decorator 是否属于支持范围 | Pending | 设计 unsupported boundary |
| DECORATOR-CLASS-FEATURE-RISK-006 | class decorator 返回值是否会影响 inheritance/prototype chain | Pending | 设计 runtime smoke/boundary |
| DECORATOR-CLASS-FEATURE-RISK-007 | static initializer / field initializer 与 decorator 的相对顺序 | Pending | 关联 execution order 测试 |
