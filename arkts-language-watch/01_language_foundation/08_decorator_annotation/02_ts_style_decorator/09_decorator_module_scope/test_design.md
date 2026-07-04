# Test Design

## Positive Cases

- 合法 decorator 语法和目标；
- decorator factory 正常求值；
- transform/lowering 后运行或字节码行为符合预期。

## Compile Negative Cases

- decorator 位置错误；
- decorator 名称未定义；
- decorator 表达式类型错误；
- 不支持 target 使用时应被 parser/checker 拦截。

## Runtime / Bytecode Cases

- decorator 调用顺序；
- decorator target/property key 参数；
- transform 后 bytecode 形态；
- sendable 状态不污染 decorator 表达式函数。

## Boundary Cases

- ArkTS 支持范围待确认的 decorator target；
- sendable class 交叉；
- module/circular import boundary。

## Integration Cases

- decorator + class field/method/static/readonly/visibility/inheritance/generic/module。

## Regression Cases

- PR 10632 相关 transformer/binder/codegen 回归。

<!-- MODULE_SCOPE_DEEPENING_2026_07_03 -->

## Decorator Module Scope Deepening Test Matrix

## Goal

围绕 TS style decorator module scope 建立系统性测试设计，主线为普通 class 下的 import/export/module binding 行为。

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-MODULE-TD-0001 | import class decorator function | Imported decorator function | integration | P0 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0002 | import property decorator function | Imported decorator function | integration | P0 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0003 | import method decorator function | Imported decorator function | integration | P0 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0004 | renamed import decorator | Imported decorator function | integration | P1 | compiler expected | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0005 | default import decorator | Imported decorator function | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0006 | namespace import decorator boundary | Imported decorator function | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0007 | re-export decorator boundary | Imported decorator function | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0008 | imported decorator from sibling module | Imported decorator function | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0009 | imported decorator from nested path | Imported decorator function | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0010 | unresolved imported decorator | Imported decorator function | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0011 | imported decorator 非函数 | Imported decorator function | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0012 | imported decorator target/key/descriptor | Imported decorator function | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0013 | imported decorator side effect | Imported decorator function | integration | P1 | XTS smoke | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0014 | imported decorator 与 export class | Imported decorator function | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0015 | imported decorator 与 default export class | Imported decorator function | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0016 | imported decorator 与 multiple decorated classes | Imported decorator function | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0017 | imported decorator 不重复调用 | Imported decorator function | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0018 | imported decorator 不遗漏调用 | Imported decorator function | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0019 | import class decorator factory | Imported decorator factory | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0020 | import property decorator factory | Imported decorator factory | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0021 | import method decorator factory | Imported decorator factory | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0022 | renamed import factory | Imported decorator factory | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0023 | default import factory | Imported decorator factory | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0024 | namespace import factory boundary | Imported decorator factory | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0025 | re-export factory boundary | Imported decorator factory | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0026 | imported factory 无参 | Imported decorator factory | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0027 | imported factory 单参 | Imported decorator factory | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0028 | imported factory 多参 | Imported decorator factory | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0029 | imported factory 返回 decorator function | Imported decorator factory | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0030 | imported factory 返回闭包 decorator function | Imported decorator factory | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0031 | imported factory 返回非函数 boundary | Imported decorator factory | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0032 | imported factory 抛异常 boundary | Imported decorator factory | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0033 | imported factory side effect | Imported decorator factory | integration | P1 | XTS smoke | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0034 | imported factory 不重复调用 | Imported decorator factory | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0035 | imported factory 不遗漏调用 | Imported decorator factory | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0036 | imported factory 与 property decorator | Imported decorator factory | integration | P1 | XTS smoke | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0037 | imported factory 与 method decorator | Imported decorator factory | integration | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0038 | imported factory 与 class decorator | Imported decorator factory | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0039 | 参数引用 imported number | Decorator parameter imported binding | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0040 | 参数引用 imported string | Decorator parameter imported binding | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0041 | 参数引用 imported boolean | Decorator parameter imported binding | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0042 | 参数引用 imported enum | Decorator parameter imported binding | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0043 | 参数引用 imported class | Decorator parameter imported binding | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0044 | 参数引用 imported function | Decorator parameter imported binding | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0045 | 参数引用 imported const | Decorator parameter imported binding | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0046 | 参数引用 imported let boundary | Decorator parameter imported binding | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0047 | 参数引用 default import | Decorator parameter imported binding | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0048 | 参数引用 namespace import boundary | Decorator parameter imported binding | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0049 | 参数为 arrow function 捕获 imported binding | Decorator parameter imported binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0050 | 参数为 normal function 捕获 imported binding | Decorator parameter imported binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0051 | 参数为 IIFE 读取 imported binding | Decorator parameter imported binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0052 | 参数为 nested call 读取 imported binding | Decorator parameter imported binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0053 | 参数为 imported factory 返回值 | Decorator parameter imported binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0054 | 参数 imported binding 类型不匹配 | Decorator parameter imported binding | fail_compile | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0055 | 参数引用未导出 binding | Decorator parameter imported binding | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0056 | 参数引用 circular import binding boundary | Decorator parameter imported binding | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0057 | 参数 import path 错误 | Decorator parameter imported binding | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0058 | 参数 import binding transform 后仍正确 | Decorator parameter imported binding | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0059 | imported factory 捕获定义模块变量 | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0060 | imported factory 返回 decorator 捕获定义模块变量 | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0061 | local factory 捕获 imported binding | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0062 | local factory 返回 decorator 捕获 imported binding | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0063 | factory 参数函数捕获 imported binding | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0064 | factory 参数 IIFE 捕获 imported binding | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0065 | factory 返回 decorator 访问 imported binding | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0066 | factory 返回 decorator 访问 local module binding | Factory closure and binding | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0067 | 多模块同名 binding 不混淆 | Factory closure and binding | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0068 | namespace binding 不丢失 boundary | Factory closure and binding | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0069 | closure lowering 后正确 | Factory closure and binding | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0070 | closure transform 后正确 | Factory closure and binding | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0071 | closure 不错绑 | Factory closure and binding | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0072 | closure 不丢失 | Factory closure and binding | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0073 | closure 与 multiple decorators | Factory closure and binding | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0074 | closure 与 export decorated class | Factory closure and binding | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0075 | export class + class decorator | Export decorated class | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0076 | export class + property decorator | Export decorated class | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0077 | export class + method decorator | Export decorated class | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0078 | default export class + class decorator | Export decorated class | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0079 | default export class + property decorator | Export decorated class | boundary | P2 | manual pending | 02_property_decorator | Pending target support; Related: 02_property_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0080 | default export class + method decorator | Export decorated class | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0081 | decorated class imported by another module | Export decorated class | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0082 | decorated default class imported by another module | Export decorated class | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0083 | decorated class instance member accessible | Export decorated class | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0084 | decorated class static member accessible | Export decorated class | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0085 | decorated class constructor accessible | Export decorated class | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0086 | decorated class inheritance after import | Export decorated class | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0087 | decorated class implements after import | Export decorated class | integration | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0088 | re-export decorated class boundary | Export decorated class | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-MODULE-TD-0089 | export binding not broken | Export decorated class | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0090 | default export binding not broken | Export decorated class | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0091 | export order side effect | Export decorated class | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0092 | multiple decorated exports | Export decorated class | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0093 | decorator module side effect before use | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0094 | factory module side effect before use | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0095 | imported binding module side effect before decorator application | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0096 | decorated module top-level side effect | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0097 | decorator application side effect | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0098 | factory call side effect | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0099 | returned decorator side effect | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0100 | multiple modules initialization order | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0101 | multiple decorated classes order | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0102 | export decorated class module order | Module initialization order | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0103 | default export decorated class module order | Module initialization order | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0104 | re-export order boundary | Module initialization order | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0105 | circular import order boundary | Module initialization order | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0106 | imported decorator throw boundary | Module initialization order | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0107 | imported factory throw boundary | Module initialization order | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0108 | imported binding TDZ-like boundary | Module initialization order | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0109 | moduleVar order reference | Module initialization order | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0110 | lowering 后 module order 不变 | Module initialization order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0111 | lowering 后 imported decorator binding 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0112 | lowering 后 imported factory binding 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0113 | lowering 后 decorator 参数 imported binding 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0114 | lowering 后 arrow function 捕获 import 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0115 | lowering 后 normal function 捕获 import 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0116 | lowering 后 IIFE 捕获 import 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0117 | lowering 后 nested call 捕获 import 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0118 | lowering 后 class 外 decorator 调用作用域正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0119 | lowering 后 export binding 正确 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0120 | lowering 后 default export binding 正确 | Transform/lowering module scope | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0121 | lowering 后 module namespace 不丢失 | Transform/lowering module scope | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0122 | lowering 后 import 不错绑 | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0123 | lowering 后不重复初始化 module | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0124 | lowering 后不改变 module initialization order | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0125 | lowering 后 bytecode/codegen 使用正确 binding | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0126 | PR 10632 moduleVar reference | Transform/lowering module scope | regression | P1 | bytecode expected | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0127 | transform AST state 不污染 imported binding | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0128 | binder context 不影响 module binding | Transform/lowering module scope | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0129 | import 不存在 decorator | Boundary / negative module cases | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0130 | import 不存在 factory | Boundary / negative module cases | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0131 | imported decorator 非函数 | Boundary / negative module cases | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0132 | imported factory 非函数 | Boundary / negative module cases | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0133 | imported factory 返回 invalid value | Boundary / negative module cases | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0134 | decorator 参数引用未导出 binding | Boundary / negative module cases | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0135 | decorator 参数引用错误类型 binding | Boundary / negative module cases | fail_compile | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0136 | namespace import unsupported | Boundary / negative module cases | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0137 | default import unsupported | Boundary / negative module cases | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0138 | re-export unresolved | Boundary / negative module cases | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0139 | circular import uninitialized | Boundary / negative module cases | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0140 | module path 错误 | Boundary / negative module cases | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-MODULE-TD-0141 | imported decorator throw | Boundary / negative module cases | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0142 | imported factory throw | Boundary / negative module cases | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0143 | imported binding TDZ-like boundary | Boundary / negative module cases | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-MODULE-TD-0144 | PR 10632 使用 imported moduleVar | Regression reference matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0145 | PR 10632 中 factory 参数函数捕获 imported binding | Regression reference matrix | regression | P1 | manual pending | 04_decorator_factory | PR 10632 reference only; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-MODULE-TD-0146 | PR 10632 transform 后 class 外 decorator 调用仍需访问 imported binding | Regression reference matrix | regression | P1 | bytecode expected | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0147 | PR 10632 核心归入 transform/sendable/codegen | Regression reference matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-MODULE-TD-0148 | sendable-specific 扩展转交 07_decorator_with_sendable | Regression reference matrix | regression | P1 | manual pending | 07_decorator_with_sendable | Related: 07_decorator_with_sendable; Not from test262 |
