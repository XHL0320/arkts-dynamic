# Decorator Duplicate And Overlap Report

## Summary

| 指标 | 数量 |
|---|---|
| 扫描 coverage 项数量 | 1383 |
| 完全重复项数量 | 144 |
| 语义重叠项数量 | 76 |
| 已归并项数量 | 144 |
| Need Review 项数量 | 5 |

## Duplicate Groups

| Group ID | 归并后测试点 | 涉及 Coverage ID | 保留位置 | 被归并位置 | 原因 |
|---|---|---|---|---|---|
| DECORATOR-DUP-0001 | 基础合法场景 | 00_decorator_syntax:legacy:0001, 01_class_decorator:legacy:0001, 02_property_decorator:legacy:0001, 03_method_decorator:legacy:0001, 04_decorator_factory:legacy:0001, 05_decorator_transform:legacy:0001, 06_decorator_execution_order:legacy:0001, 07_decorator_with_sendable:legacy:0001, 08_decorator_with_class_features:legacy:0001, 09_decorator_module_scope:legacy:0001 | 00_decorator_syntax | 01_class_decorator, 02_property_decorator, 03_method_decorator, 04_decorator_factory, 05_decorator_transform, 06_decorator_execution_order, 07_decorator_with_sendable, 08_decorator_with_class_features, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0002 | parser/checker 负向 | 00_decorator_syntax:legacy:0002, 01_class_decorator:legacy:0002, 02_property_decorator:legacy:0002, 03_method_decorator:legacy:0002, 04_decorator_factory:legacy:0002, 05_decorator_transform:legacy:0002, 06_decorator_execution_order:legacy:0002, 07_decorator_with_sendable:legacy:0002, 08_decorator_with_class_features:legacy:0002, 09_decorator_module_scope:legacy:0002 | 00_decorator_syntax | 01_class_decorator, 02_property_decorator, 03_method_decorator, 04_decorator_factory, 05_decorator_transform, 06_decorator_execution_order, 07_decorator_with_sendable, 08_decorator_with_class_features, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0003 | transform/lowering | 05_decorator_transform:legacy:0003, 07_decorator_with_sendable:legacy:0003, 00_decorator_syntax:legacy:0003, 01_class_decorator:legacy:0003, 02_property_decorator:legacy:0003, 03_method_decorator:legacy:0003, 04_decorator_factory:legacy:0003, 06_decorator_execution_order:legacy:0003, 08_decorator_with_class_features:legacy:0003, 09_decorator_module_scope:legacy:0003 | 05_decorator_transform | 00_decorator_syntax, 01_class_decorator, 02_property_decorator, 03_method_decorator, 04_decorator_factory, 06_decorator_execution_order, 07_decorator_with_sendable, 08_decorator_with_class_features, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0004 | sendable 交叉 | 07_decorator_with_sendable:legacy:0004, 00_decorator_syntax:legacy:0004, 01_class_decorator:legacy:0004, 02_property_decorator:legacy:0004, 03_method_decorator:legacy:0004, 04_decorator_factory:legacy:0004, 05_decorator_transform:legacy:0004, 06_decorator_execution_order:legacy:0004, 08_decorator_with_class_features:legacy:0004, 09_decorator_module_scope:legacy:0004 | 07_decorator_with_sendable | 00_decorator_syntax, 01_class_decorator, 02_property_decorator, 03_method_decorator, 04_decorator_factory, 05_decorator_transform, 06_decorator_execution_order, 08_decorator_with_class_features, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0005 | integration 组合 | 00_decorator_syntax:legacy:0005, 01_class_decorator:legacy:0005, 02_property_decorator:legacy:0005, 03_method_decorator:legacy:0005, 04_decorator_factory:legacy:0005, 05_decorator_transform:legacy:0005, 06_decorator_execution_order:legacy:0005, 07_decorator_with_sendable:legacy:0005, 08_decorator_with_class_features:legacy:0005, 09_decorator_module_scope:legacy:0005 | 00_decorator_syntax | 01_class_decorator, 02_property_decorator, 03_method_decorator, 04_decorator_factory, 05_decorator_transform, 06_decorator_execution_order, 07_decorator_with_sendable, 08_decorator_with_class_features, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0006 | parameter decorator boundary | DECORATOR-SYNTAX-0030, DECORATOR-METHOD-0121, DECORATOR-CLASS-FEATURE-0154 | 00_decorator_syntax | 03_method_decorator, 08_decorator_with_class_features | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0007 | class expression boundary | DECORATOR-SYNTAX-0047, DECORATOR-ORDER-0053 | 00_decorator_syntax | 06_decorator_execution_order | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0008 | decorator 名称未定义 | DECORATOR-CLASS-0010, DECORATOR-PROPERTY-0011, DECORATOR-METHOD-0011 | 01_class_decorator | 02_property_decorator, 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0009 | decorator 表达式类型错误 | DECORATOR-CLASS-0011, DECORATOR-PROPERTY-0012, DECORATOR-METHOD-0012 | 01_class_decorator | 02_property_decorator, 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0010 | decorator 返回值非法 boundary | DECORATOR-PROPERTY-0013, DECORATOR-METHOD-0013, DECORATOR-CLASS-0012 | 02_property_decorator | 01_class_decorator, 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0011 | decorator 不绕过 checker | DECORATOR-CLASS-0018, DECORATOR-PROPERTY-0018, DECORATOR-METHOD-0018 | 01_class_decorator | 02_property_decorator, 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0012 | factory 返回非函数 boundary | DECORATOR-FACTORY-0012, DECORATOR-CLASS-0047, DECORATOR-PROPERTY-0071, DECORATOR-METHOD-0089, DECORATOR-ORDER-0066 | 04_decorator_factory | 01_class_decorator, 02_property_decorator, 03_method_decorator, 06_decorator_execution_order | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0013 | factory 抛异常 boundary | DECORATOR-FACTORY-0013, DECORATOR-CLASS-0048, DECORATOR-PROPERTY-0072, DECORATOR-METHOD-0090 | 04_decorator_factory | 01_class_decorator, 02_property_decorator, 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0014 | decorated class imported by another module | DECORATOR-MODULE-0081, DECORATOR-CLASS-0061 | 09_decorator_module_scope | 01_class_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0015 | re-export decorated class boundary | DECORATOR-MODULE-0088, DECORATOR-CLASS-0063 | 09_decorator_module_scope | 01_class_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0016 | decorated base class | DECORATOR-CLASS-FEATURE-0067, DECORATOR-CLASS-0087 | 08_decorator_with_class_features | 01_class_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0017 | decorated derived class | DECORATOR-CLASS-FEATURE-0068, DECORATOR-CLASS-0088 | 08_decorator_with_class_features | 01_class_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0018 | decorated class missing interface method still error | DECORATOR-CLASS-FEATURE-0132, DECORATOR-CLASS-0094 | 08_decorator_with_class_features | 01_class_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0019 | lowering 后 export binding 正确 | DECORATOR-CLASS-0123, DECORATOR-MODULE-0119 | 01_class_decorator | 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0020 | lowering 后 AST state 不污染 | DECORATOR-CLASS-0130, DECORATOR-PROPERTY-0091, DECORATOR-METHOD-0110, DECORATOR-FACTORY-0086 | 01_class_decorator | 02_property_decorator, 03_method_decorator, 04_decorator_factory | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0021 | lowering 后 binder context 不污染 | DECORATOR-CLASS-0131, DECORATOR-PROPERTY-0092, DECORATOR-METHOD-0111, DECORATOR-FACTORY-0087 | 01_class_decorator | 02_property_decorator, 03_method_decorator, 04_decorator_factory | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0022 | export decorated class | DECORATOR-CLASS-0136, DECORATOR-ORDER-0098 | 01_class_decorator | 06_decorator_execution_order | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0023 | re-export decorator boundary | DECORATOR-CLASS-0138, DECORATOR-PROPERTY-0100, DECORATOR-METHOD-0133, DECORATOR-ORDER-0100, DECORATOR-MODULE-0007 | 01_class_decorator | 02_property_decorator, 03_method_decorator, 06_decorator_execution_order, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0024 | circular import boundary | DECORATOR-CLASS-0139, DECORATOR-PROPERTY-0101, DECORATOR-METHOD-0134, DECORATOR-FACTORY-0100, DECORATOR-ORDER-0101 | 01_class_decorator | 02_property_decorator, 03_method_decorator, 04_decorator_factory, 06_decorator_execution_order | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0025 | decorator 放在 type alias | DECORATOR-CLASS-0147, DECORATOR-PROPERTY-0115, DECORATOR-METHOD-0145 | 01_class_decorator | 02_property_decorator, 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0026 | decorator 放在 function declaration | DECORATOR-CLASS-0149, DECORATOR-METHOD-0142 | 01_class_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0027 | decorator 放在 local variable | DECORATOR-CLASS-0150, DECORATOR-PROPERTY-0113 | 01_class_decorator | 02_property_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0028 | sendable-specific 扩展转交 07_decorator_with_sendable | DECORATOR-CLASS-0163, DECORATOR-METHOD-0159, DECORATOR-FACTORY-0124, DECORATOR-ORDER-0140, DECORATOR-CLASS-FEATURE-0177, DECORATOR-MODULE-0148 | 01_class_decorator | 03_method_decorator, 04_decorator_factory, 06_decorator_execution_order, 08_decorator_with_class_features, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0029 | target 不应为 instance object | DECORATOR-PROPERTY-0049, DECORATOR-METHOD-0029 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0030 | static target 不应为 prototype | DECORATOR-PROPERTY-0050, DECORATOR-METHOD-0030 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0031 | key 不应丢失 | DECORATOR-PROPERTY-0052, DECORATOR-METHOD-0032 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0032 | factory 无参 | DECORATOR-PROPERTY-0057, DECORATOR-METHOD-0077 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0033 | factory 单 string 参数 | DECORATOR-PROPERTY-0058, DECORATOR-METHOD-0078 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0034 | factory 单 number 参数 | DECORATOR-PROPERTY-0059, DECORATOR-METHOD-0079 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0035 | factory 单 boolean 参数 | DECORATOR-PROPERTY-0060, DECORATOR-METHOD-0080 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0036 | factory 多参数 | DECORATOR-PROPERTY-0061, DECORATOR-METHOD-0081 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0037 | factory 参数为 arrow function | DECORATOR-PROPERTY-0062, DECORATOR-METHOD-0082 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0038 | factory 参数为 normal function | DECORATOR-PROPERTY-0063, DECORATOR-METHOD-0083 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0039 | factory 参数为 IIFE | DECORATOR-PROPERTY-0064, DECORATOR-METHOD-0084 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0040 | factory 参数为 imported binding | DECORATOR-PROPERTY-0065, DECORATOR-METHOD-0085 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0041 | factory 参数为 local const | DECORATOR-PROPERTY-0068, DECORATOR-METHOD-0086 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0042 | factory 求值顺序 | DECORATOR-PROPERTY-0073, DECORATOR-METHOD-0091 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0043 | factory 与 transform lowering | DECORATOR-PROPERTY-0075, DECORATOR-METHOD-0093 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0044 | factory 与 module scope | DECORATOR-PROPERTY-0076, DECORATOR-METHOD-0094 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0045 | factory call lowering | DECORATOR-FACTORY-0075, DECORATOR-PROPERTY-0081, DECORATOR-METHOD-0100 | 04_decorator_factory | 02_property_decorator, 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0046 | decorator function call lowering | DECORATOR-PROPERTY-0082, DECORATOR-METHOD-0101 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0047 | lowering 后 decorator 调用顺序 | DECORATOR-PROPERTY-0083, DECORATOR-METHOD-0102 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0048 | lowering 后无重复 decorator 调用 | DECORATOR-PROPERTY-0085, DECORATOR-METHOD-0104 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0049 | lowering 后无遗漏 decorator 调用 | DECORATOR-PROPERTY-0086, DECORATOR-METHOD-0105 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0050 | lowering 后 decorator 参数 arrow function 作用域 | DECORATOR-PROPERTY-0087, DECORATOR-METHOD-0106 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0051 | lowering 后 decorator 参数 normal function 作用域 | DECORATOR-PROPERTY-0088, DECORATOR-METHOD-0107 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0052 | lowering 后 decorator 参数 IIFE 作用域 | DECORATOR-PROPERTY-0089, DECORATOR-METHOD-0108 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0053 | lowering 后 imported binding 作用域 | DECORATOR-PROPERTY-0090, DECORATOR-METHOD-0109 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0054 | lowering 后 codegen 不错用旧上下文 | DECORATOR-PROPERTY-0093, DECORATOR-FACTORY-0088 | 02_property_decorator | 04_decorator_factory | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0055 | PR 10632 作为 transform regression 引用 | DECORATOR-PROPERTY-0094, DECORATOR-FACTORY-0092 | 02_property_decorator | 04_decorator_factory | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0056 | module initialization order | DECORATOR-PROPERTY-0102, DECORATOR-FACTORY-0101 | 02_property_decorator | 04_decorator_factory | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0057 | decorator lowering 后 import binding | DECORATOR-PROPERTY-0103, DECORATOR-METHOD-0136 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0058 | private field decorator | DECORATOR-TRANSFORM-0093, DECORATOR-PROPERTY-0107 | 05_decorator_transform | 02_property_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0059 | protected field decorator | DECORATOR-TRANSFORM-0094, DECORATOR-PROPERTY-0108 | 05_decorator_transform | 02_property_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0060 | computed property name | DECORATOR-PROPERTY-0109, DECORATOR-TRANSFORM-0092 | 02_property_decorator | 05_decorator_transform | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0061 | decorator 放在 enum member | DECORATOR-PROPERTY-0116, DECORATOR-METHOD-0146 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0062 | decorator expression throw | DECORATOR-PROPERTY-0117, DECORATOR-METHOD-0147, DECORATOR-TRANSFORM-0097 | 02_property_decorator | 03_method_decorator, 05_decorator_transform | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0063 | factory 返回 invalid value | DECORATOR-FACTORY-0107, DECORATOR-PROPERTY-0118 | 04_decorator_factory | 02_property_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0064 | decorator factory 参数类型异常 | DECORATOR-PROPERTY-0119, DECORATOR-METHOD-0149 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0065 | decorator 与 class expression | DECORATOR-PROPERTY-0120, DECORATOR-METHOD-0153 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0066 | unsupported target pending | DECORATOR-PROPERTY-0121, DECORATOR-METHOD-0154 | 02_property_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0067 | static method decorator | DECORATOR-METHOD-0002, DECORATOR-METHOD-0059 | 03_method_decorator | 03_method_decorator | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0068 | accessor decorator boundary | DECORATOR-METHOD-0119, DECORATOR-CLASS-FEATURE-0152 | 03_method_decorator | 08_decorator_with_class_features | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0069 | re-export factory boundary | DECORATOR-FACTORY-0099, DECORATOR-MODULE-0025 | 04_decorator_factory | 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0070 | factory throw | DECORATOR-FACTORY-0108, DECORATOR-ORDER-0122 | 04_decorator_factory | 06_decorator_execution_order | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0071 | imported factory side effect | DECORATOR-ORDER-0069, DECORATOR-ORDER-0096 | 06_decorator_execution_order | 06_decorator_execution_order | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0072 | moduleVar order reference | DECORATOR-ORDER-0102, DECORATOR-MODULE-0109 | 06_decorator_execution_order | 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0073 | PR 10632 核心归入 transform/sendable/codegen | DECORATOR-ORDER-0139, DECORATOR-CLASS-FEATURE-0176, DECORATOR-MODULE-0147 | 06_decorator_execution_order | 08_decorator_with_class_features, 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0074 | sendable class 本体仍生成 sendable class 字节码 | DECORATOR-SENDABLE-0006, DECORATOR-SENDABLE-0073 | 07_decorator_with_sendable | 07_decorator_with_sendable | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0075 | imported decorator 非函数 | DECORATOR-MODULE-0011, DECORATOR-MODULE-0131 | 09_decorator_module_scope | 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |
| DECORATOR-DUP-0076 | imported binding TDZ-like boundary | DECORATOR-MODULE-0108, DECORATOR-MODULE-0143 | 09_decorator_module_scope | 09_decorator_module_scope | normalized same test/case/baseline; ownership rule applied |

## Overlap Rules

| 规则 | 说明 |
|---|---|
| factory | decorator factory 基础保留在 `04_decorator_factory`，target-specific 只保留交叉引用 |
| transform/lowering | 根因与 bytecode 保留在 `05_decorator_transform` |
| module import/export | import/export/module binding 保留在 `09_decorator_module_scope` |
| execution order | 求值/调用顺序保留在 `06_decorator_execution_order` |
| PR 10632 | 主归属 `07_decorator_with_sendable`，普通目录只保留 reference |
| sendable | sendable-specific 不扩散到普通主线 |

## Need Review

| 测试点 | 涉及目录 | 原因 | 建议处理 |
|---|---|---|---|
| 基础合法场景 | 00_decorator_syntax | legacy/generic row or unclear ownership | 人工确认是否保留为目录占位项 |
| parser/checker 负向 | 00_decorator_syntax | legacy/generic row or unclear ownership | 人工确认是否保留为目录占位项 |
| transform/lowering | 05_decorator_transform | legacy/generic row or unclear ownership | 人工确认是否保留为目录占位项 |
| sendable 交叉 | 07_decorator_with_sendable | legacy/generic row or unclear ownership | 人工确认是否保留为目录占位项 |
| integration 组合 | 00_decorator_syntax | legacy/generic row or unclear ownership | 人工确认是否保留为目录占位项 |
