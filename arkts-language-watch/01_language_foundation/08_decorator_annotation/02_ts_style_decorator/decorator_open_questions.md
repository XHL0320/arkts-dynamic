# Decorator Open Questions

## Summary

| 指标 | 数量 |
|---|---|
| 原始问题数量 | 120+ |
| 去重后问题数量 | 18 |
| P0 问题数量 | 6 |
| P1 问题数量 | 8 |
| P2 问题数量 | 4 |
| P3 问题数量 | 0 |

## P0 Open Questions

| ID | 问题 | 涉及目录 | 建议确认方式 | 备注 |
|---|---|---|---|---|
| DECORATOR-OQ-P0-001 | ArkTS 当前正式支持哪些 TS style decorator target | 00_decorator_syntax | 官方规范/parser-checker 对照 | 总入口问题 |
| DECORATOR-OQ-P0-002 | property decorator target/key lowering 规则 | 02_property_decorator, 05_decorator_transform | compiler expected / bytecode expected | 核心 P0 |
| DECORATOR-OQ-P0-003 | static property/method target 规则 | 02_property_decorator, 03_method_decorator, 08_decorator_with_class_features | compiler expected | static target |
| DECORATOR-OQ-P0-004 | transform 后 AST shallow copy 是否还影响其他 flag | 05_decorator_transform | bytecode expected | PR 10632 扩展 |
| DECORATOR-OQ-P0-005 | binder context pollution 是否存在非 sendable 版本 | 05_decorator_transform | bytecode expected | 高风险 |
| DECORATOR-OQ-P0-006 | bytecode expected 测试应该放在哪个目录 | 05_decorator_transform, 07_decorator_with_sendable | 仓库测试规范确认 | 落地前置 |

## P1 Open Questions

| ID | 问题 | 涉及目录 | 建议确认方式 | 备注 |
|---|---|---|---|---|
| DECORATOR-OQ-P1-001 | class decorator 是否支持 | 01_class_decorator | parser/checker + smoke | 核心 target |
| DECORATOR-OQ-P1-002 | property decorator 是否支持 | 02_property_decorator | parser/checker + smoke | 核心 target |
| DECORATOR-OQ-P1-003 | method decorator 是否支持 | 03_method_decorator | parser/checker + smoke | 核心 target |
| DECORATOR-OQ-P1-004 | decorator factory 返回非函数时是 checker 报错还是 runtime 报错 | 04_decorator_factory | boundary | factory |
| DECORATOR-OQ-P1-005 | class decorator 返回新 class 是否支持 | 01_class_decorator | boundary/runtime smoke | return value |
| DECORATOR-OQ-P1-006 | method decorator descriptor 或等价结构如何表现 | 03_method_decorator | compiler expected | descriptor |
| DECORATOR-OQ-P1-007 | multiple decorators 的求值/调用顺序 | 06_decorator_execution_order | runtime smoke/compiler expected | order |
| DECORATOR-OQ-P1-008 | imported binding lowering 后是否稳定 | 09_decorator_module_scope, 05_decorator_transform | bytecode expected | module binding |

## P2/P3 Open Questions

| ID | 问题 | 涉及目录 | 建议确认方式 | 备注 |
|---|---|---|---|---|
| DECORATOR-OQ-P2-001 | accessor decorator 是否支持 | 00_decorator_syntax, 08_decorator_with_class_features | unsupported boundary | Pending |
| DECORATOR-OQ-P2-002 | parameter decorator 是否支持 | 00_decorator_syntax, 08_decorator_with_class_features | unsupported boundary | Pending |
| DECORATOR-OQ-P2-003 | abstract/generic/class expression 与 decorator 支持范围 | 01_class_decorator, 08_decorator_with_class_features | manual confirmation | Pending |
| DECORATOR-OQ-P2-004 | circular import 中 decorator/factory 行为 | 09_decorator_module_scope | boundary | Pending |

## PR 10632 Boundary

PR 10632 不作为普通 decorator 主线 open question 扩散；普通目录只保留 transform-like、module-binding-like 的待确认问题。
