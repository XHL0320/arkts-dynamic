# Decorator Duplicate And Overlap Report

## Summary

| 指标 | 数量 |
|---|---|
| 扫描 coverage 项数量 | 1383 |
| 完全重复项数量 | 139 |
| 语义重叠项数量 | 71 |
| 已归并项数量 | 139 |
| 删除 legacy/generic 占位归并组数量 | 5 |
| Need Review 项数量 | 6 |

## Duplicate Groups

| Group ID | 归并后测试点 | 涉及 Coverage ID | 保留位置 | 被归并位置 | 原因 |
|---|---|---|---|---|---|
| DECORATOR-DUP-0001 | parameter decorator boundary | DECORATOR-SYNTAX-0030, DECORATOR-METHOD-0121, DECORATOR-CLASS-FEATURE-0154 | 00_decorator_syntax | 03_method_decorator, 08_decorator_with_class_features | 通用 unsupported target/parser-checker 负向归属 syntax |
| DECORATOR-DUP-0002 | class expression boundary | DECORATOR-SYNTAX-0047, DECORATOR-ORDER-0053 | 00_decorator_syntax | 06_decorator_execution_order | 通用语法位置归属 syntax，order 只保留顺序交叉 |
| DECORATOR-DUP-0003 | decorator 名称未定义 | DECORATOR-CLASS-0010, DECORATOR-PROPERTY-0011, DECORATOR-METHOD-0011 | 00_decorator_syntax | 01_class_decorator, 02_property_decorator, 03_method_decorator | 通用 checker negative 归属 syntax |
| DECORATOR-DUP-0004 | decorator 表达式类型错误 | DECORATOR-CLASS-0011, DECORATOR-PROPERTY-0012, DECORATOR-METHOD-0012 | 00_decorator_syntax | 01_class_decorator, 02_property_decorator, 03_method_decorator | 通用 checker negative 归属 syntax |
| DECORATOR-DUP-0005 | decorator 返回值非法 boundary | DECORATOR-PROPERTY-0013, DECORATOR-METHOD-0013, DECORATOR-CLASS-0012 | 00_decorator_syntax | 01_class_decorator, 02_property_decorator, 03_method_decorator | 通用 checker/runtime 边界由 syntax/open questions 统一跟踪 |
| DECORATOR-DUP-0006 | factory 返回非函数 boundary | DECORATOR-FACTORY-0012, DECORATOR-CLASS-0047, DECORATOR-PROPERTY-0071, DECORATOR-METHOD-0089 | 04_decorator_factory | 01_class_decorator, 02_property_decorator, 03_method_decorator | factory 基础能力归属 factory 目录 |
| DECORATOR-DUP-0007 | factory throw boundary | DECORATOR-FACTORY-0013, DECORATOR-CLASS-0048, DECORATOR-PROPERTY-0072, DECORATOR-METHOD-0090 | 04_decorator_factory | 01_class_decorator, 02_property_decorator, 03_method_decorator | factory runtime boundary 归属 factory 目录 |
| DECORATOR-DUP-0008 | decorated class imported by another module | DECORATOR-MODULE-0081, DECORATOR-CLASS-0061 | 09_decorator_module_scope | 01_class_decorator | 跨文件 import/export 归属 module scope |
| DECORATOR-DUP-0009 | decorated base/derived class | DECORATOR-CLASS-FEATURE-0067, DECORATOR-CLASS-0087 | 08_decorator_with_class_features | 01_class_decorator | inheritance 组合归属 class features |
| DECORATOR-DUP-0010 | AST state / binder context pollution | DECORATOR-CLASS-0130, DECORATOR-PROPERTY-0091, DECORATOR-METHOD-0110, DECORATOR-FACTORY-0086 | 05_decorator_transform | 01_class_decorator, 02_property_decorator, 03_method_decorator, 04_decorator_factory | transform 根因归属 transform 目录 |
| DECORATOR-DUP-0011 | circular import boundary | DECORATOR-CLASS-0139, DECORATOR-PROPERTY-0101, DECORATOR-METHOD-0134, DECORATOR-FACTORY-0100, DECORATOR-ORDER-0101 | 09_decorator_module_scope | 01_class_decorator, 02_property_decorator, 03_method_decorator, 04_decorator_factory, 06_decorator_execution_order | module graph 边界归属 module scope |
| DECORATOR-DUP-0012 | factory call lowering | DECORATOR-FACTORY-0075, DECORATOR-PROPERTY-0081, DECORATOR-METHOD-0100 | 05_decorator_transform | 02_property_decorator, 03_method_decorator, 04_decorator_factory | lowering/codegen 归属 transform 目录 |
| DECORATOR-DUP-0013 | multiple decorators order | DECORATOR-ORDER-0025, DECORATOR-FACTORY-0062, DECORATOR-PROPERTY-0073 | 06_decorator_execution_order | 02_property_decorator, 04_decorator_factory | 求值/调用顺序归属 execution order |
| DECORATOR-DUP-0014 | imported binding in decorator parameter | DECORATOR-MODULE-0113, DECORATOR-FACTORY-0026, DECORATOR-PROPERTY-0065 | 09_decorator_module_scope | 02_property_decorator, 04_decorator_factory | import binding 与 module scope 归属 module scope |
| DECORATOR-DUP-0015 | sendable-specific expansion | DECORATOR-SENDABLE-0001, DECORATOR-SENDABLE-0069, DECORATOR-SENDABLE-0070 | 07_decorator_with_sendable | 02_property_decorator, 04_decorator_factory, 05_decorator_transform | sendable 变体不扩散到普通主线 |

## Overlap Rules

| 规则 | 说明 |
|---|---|
| 通用 syntax / parser error | 归属 `00_decorator_syntax`，包括 bare `@`、decorator without declaration、invalid position |
| 通用 checker negative | 归属 `00_decorator_syntax`，包括 unresolved decorator、non-callable decorator、decorator expression type error |
| target-specific 语义 | class/property/method target 分别归属 `01`/`02`/`03` |
| factory 基础能力 | 归属 `04_decorator_factory`，target-specific 目录只保留交叉引用 |
| transform/lowering | 归属 `05_decorator_transform` |
| execution order | 归属 `06_decorator_execution_order` |
| sendable-specific | 归属 `07_decorator_with_sendable`，普通目录不扩散 sendable 变体 |
| module scope | 归属 `09_decorator_module_scope` |

## Need Review

| 测试点 | 涉及目录 | 原因 | 建议处理 |
|---|---|---|---|
| decorator factory 返回非函数：checker 报错还是 runtime 报错 | 04_decorator_factory | 阶段不明确 | 设计 fail_compile/runtime boundary 对照 |
| method decorator descriptor 是否可观察 | 03_method_decorator | ArkTS 等价结构待确认 | 设计 compiler expected 与 runtime smoke |
| class decorator 返回新 class 是否支持 | 01_class_decorator | 返回值语义待确认 | 设计 boundary/compiler expected |
| accessor decorator 是否支持 | 00_decorator_syntax, 08_decorator_with_class_features | target support 待确认 | 设计 unsupported target fail_compile |
| parameter decorator 是否支持 | 00_decorator_syntax, 08_decorator_with_class_features | target support 待确认 | 设计 unsupported target fail_compile |
| bytecode expected 放置目录 | 05_decorator_transform, 07_decorator_with_sendable | PR 10632 与普通 transform 均需要 | 约定 transform 普通根因、sendable 专项分目录 |
