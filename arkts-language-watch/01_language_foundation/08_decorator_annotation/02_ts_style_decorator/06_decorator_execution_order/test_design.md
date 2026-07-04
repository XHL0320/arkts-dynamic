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

<!-- EXECUTION_ORDER_DEEPENING_2026_07_03 -->

## Execution Order Deepening Test Matrix

## Goal

围绕 TS style decorator execution order 建立系统性测试设计，主线为普通 class 下的 decorator 求值/调用顺序。

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-ORDER-TD-0001 | identifier decorator expression 求值 | Single decorator order | pass | P0 | XTS smoke | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0002 | decorator function 调用 | Single decorator order | pass | P0 | XTS smoke | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0003 | factory call 求值 | Single decorator order | pass | P0 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0004 | returned decorator function 调用 | Single decorator order | pass | P0 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0005 | factory 参数先求值 | Single decorator order | pass | P0 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0006 | factory 参数 side effect | Single decorator order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0007 | decorator side effect 执行一次 | Single decorator order | pass | P0 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0008 | decorator 不重复调用 | Single decorator order | pass | P0 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0009 | decorator 不遗漏调用 | Single decorator order | pass | P0 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0010 | decorator function throw boundary | Single decorator order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0011 | factory throw boundary | Single decorator order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0012 | argument expression throw boundary | Single decorator order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0013 | non-callable decorator 不应进入 runtime order | Single decorator order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0014 | unresolved decorator 不应进入 runtime order | Single decorator order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0015 | parser failure 不应进入 runtime order | Single decorator order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0016 | class 上两个 decorators | Multiple decorators same target | pass | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0017 | class 上三个 decorators | Multiple decorators same target | pass | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0018 | property 上两个 decorators | Multiple decorators same target | pass | P1 | XTS smoke | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0019 | property 上三个 decorators | Multiple decorators same target | pass | P1 | XTS smoke | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0020 | method 上两个 decorators | Multiple decorators same target | pass | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0021 | method 上三个 decorators | Multiple decorators same target | pass | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0022 | identifier + factory 混合 | Multiple decorators same target | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0023 | factory + identifier 混合 | Multiple decorators same target | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0024 | 多 factory 参数 side effect | Multiple decorators same target | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0025 | 多 decorators 求值顺序 | Multiple decorators same target | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0026 | 多 decorators 调用顺序 | Multiple decorators same target | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0027 | 多 decorators 中第一个 throw | Multiple decorators same target | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0028 | 多 decorators 中第二个 throw | Multiple decorators same target | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0029 | 多 decorators 返回值组合 boundary | Multiple decorators same target | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0030 | 多 decorators 与 export class | Multiple decorators same target | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0031 | 多 decorators 与 static property | Multiple decorators same target | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0032 | 多 decorators 与 static method | Multiple decorators same target | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0033 | 多 decorators 中间注释/空行不影响顺序 | Multiple decorators same target | pass | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0034 | class decorator + property decorator | Cross target order | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0035 | class decorator + method decorator | Cross target order | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0036 | property decorator + method decorator | Cross target order | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0037 | class + property + method decorators 混合 | Cross target order | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0038 | instance property before method | Cross target order | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0039 | method before instance property | Cross target order | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0040 | static property before instance property | Cross target order | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0041 | instance property before static property | Cross target order | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0042 | static method before instance method | Cross target order | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0043 | instance method before static method | Cross target order | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0044 | 多 property decorators 按声明顺序 | Cross target order | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0045 | 多 method decorators 按声明顺序 | Cross target order | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0046 | property/method 混合按声明顺序或 ArkTS 规则 | Cross target order | boundary | P2 | manual pending | 05_decorator_transform | Pending runtime semantics; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0047 | base class decorator 与 derived class decorator | Cross target order | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0048 | decorated base class member 与 derived class member | Cross target order | boundary | P2 | manual pending | 05_decorator_transform | Pending runtime semantics; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0049 | export class decorator 与 member decorators | Cross target order | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0050 | default export class decorator 与 member decorators | Cross target order | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0051 | nested class boundary | Cross target order | boundary | P2 | manual pending | 00_decorator_syntax | Pending runtime semantics; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0052 | local class boundary | Cross target order | boundary | P2 | manual pending | 00_decorator_syntax | Pending runtime semantics; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0053 | class expression boundary | Cross target order | boundary | P2 | manual pending | 00_decorator_syntax | Pending runtime semantics; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0054 | factory 参数左到右 | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0055 | 多参数 primitive side effect | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0056 | 参数为 IIFE | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0057 | 参数为 nested call | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0058 | 参数为 arrow function 不执行 | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0059 | 参数为 normal function 不执行 | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0060 | factory body side effect | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0061 | returned decorator side effect | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0062 | factory side effect 与 returned decorator side effect 顺序 | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0063 | 多 factories side effect | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0064 | nested factory call | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0065 | factory 返回 decorator 后调用 | Factory evaluation order | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0066 | factory 返回非函数 boundary | Factory evaluation order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0067 | factory throw 后是否继续后续 decorators | Factory evaluation order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0068 | argument throw 后是否继续后续 decorators | Factory evaluation order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0069 | imported factory side effect | Factory evaluation order | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0070 | imported factory 参数 side effect | Factory evaluation order | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0071 | factory 与 property decorator | Factory evaluation order | integration | P1 | XTS smoke | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0072 | factory 与 method decorator | Factory evaluation order | integration | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0073 | factory 与 class decorator | Factory evaluation order | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0074 | class decorator 与 class binding | Class evaluation interaction | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0075 | class decorator 与 constructor execution | Class evaluation interaction | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0076 | class decorator 不执行 constructor | Class evaluation interaction | pass | P0 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0077 | property decorator 与 field initializer | Class evaluation interaction | integration | P1 | XTS smoke | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0078 | property decorator 不执行 instance field initializer | Class evaluation interaction | pass | P0 | XTS smoke | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0079 | static property decorator 与 static field initializer | Class evaluation interaction | boundary | P2 | manual pending | 02_property_decorator | Pending runtime semantics; Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0080 | method decorator 与 method body | Class evaluation interaction | integration | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0081 | method decorator 不执行 method body | Class evaluation interaction | pass | P0 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0082 | class decorator 与 static field | Class evaluation interaction | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0083 | class decorator 与 static method | Class evaluation interaction | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0084 | class decorator 返回值与 class binding boundary | Class evaluation interaction | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0085 | field initializer side effect 与 decorator side effect | Class evaluation interaction | boundary | P2 | manual pending | 02_property_decorator | Pending runtime semantics; Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0086 | static initializer side effect boundary | Class evaluation interaction | boundary | P2 | manual pending | 02_property_decorator | Pending runtime semantics; Related: 02_property_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0087 | constructor side effect 与 decorator side effect | Class evaluation interaction | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0088 | method body side effect 与 decorator side effect | Class evaluation interaction | boundary | P2 | manual pending | 03_method_decorator | Pending runtime semantics; Related: 03_method_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0089 | inherited class evaluation order | Class evaluation interaction | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0090 | class decorator 与 super class evaluation | Class evaluation interaction | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0091 | decorator 与 class member declaration order | Class evaluation interaction | boundary | P2 | manual pending | 05_decorator_transform | Pending runtime semantics; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0092 | import decorator module initialization | Module/export order | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0093 | import factory module initialization | Module/export order | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0094 | decorator 参数 import binding | Module/export order | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0095 | imported decorator side effect | Module/export order | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0096 | imported factory side effect | Module/export order | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0097 | local module top-level side effect | Module/export order | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0098 | export decorated class | Module/export order | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0099 | default export decorated class | Module/export order | boundary | P2 | manual pending | 01_class_decorator | Pending runtime semantics; Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0100 | re-export decorator boundary | Module/export order | boundary | P2 | manual pending | 05_decorator_transform | Pending runtime semantics; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0101 | circular import boundary | Module/export order | boundary | P2 | manual pending | 05_decorator_transform | Pending runtime semantics; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0102 | moduleVar order reference | Module/export order | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0103 | lowering 后 import binding 顺序 | Module/export order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0104 | module initialization order with factory | Module/export order | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0105 | module initialization order with multiple decorated classes | Module/export order | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-ORDER-TD-0106 | property decorator lowering 后调用顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0107 | method decorator lowering 后调用顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0108 | class decorator lowering 后调用顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0109 | factory call lowering 顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0110 | decorator function call lowering 顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0111 | class definition 与 decorator call 顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0112 | lowering 后不重复调用 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0113 | lowering 后不遗漏调用 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0114 | lowering 后 multiple decorators 顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0115 | lowering 后 class/property/method 混合顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0116 | lowering 后 static/instance 顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0117 | lowering 后 module import 顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0118 | lowering 后 side effect 顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0119 | lowering 后 AST state 不影响顺序 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0120 | lowering 后 codegen 顺序稳定 | Transform/lowering order | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0121 | PR10632-like lowering reference | Transform/lowering order | regression | P1 | bytecode expected | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0122 | factory throw | Boundary / negative order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0123 | decorator function throw | Boundary / negative order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0124 | argument expression throw | Boundary / negative order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0125 | unresolved decorator | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0126 | non-callable decorator | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0127 | factory returns invalid value | Boundary / negative order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0128 | unsupported target | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Pending runtime semantics; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0129 | syntax error decorator | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0130 | checker error decorator | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0131 | multiple decorators one invalid | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0132 | multiple decorators one throw | Boundary / negative order | boundary | P2 | manual pending | 04_decorator_factory | Pending runtime semantics; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0133 | invalid modifier order | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0134 | invalid target order | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0135 | parser/checker failure no runtime order | Boundary / negative order | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-ORDER-TD-0136 | PR 10632 中 property decorator 被 lowering | Regression reference matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0137 | PR 10632 中 factory 参数 IIFE 需保持求值顺序 | Regression reference matrix | regression | P1 | manual pending | 04_decorator_factory | PR 10632 reference only; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-ORDER-TD-0138 | PR 10632 中 module import 参数需保持作用域和顺序 | Regression reference matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0139 | PR 10632 核心归入 transform/sendable/codegen | Regression reference matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-ORDER-TD-0140 | sendable-specific 扩展转交 07_decorator_with_sendable | Regression reference matrix | regression | P1 | manual pending | 07_decorator_with_sendable | Related: 07_decorator_with_sendable; Not from test262 |
