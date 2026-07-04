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

<!-- CLASS_FEATURES_DEEPENING_2026_07_03 -->

## Decorator With Class Features Deepening Test Matrix

## Goal

围绕 TS style decorator 与 ArkTS class features 的组合建立系统性测试设计，主线为普通 class feature integration。

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-CLASS-FEATURE-TD-0001 | static property + property decorator | Static matrix | integration | P0 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0002 | static method + method decorator | Static matrix | integration | P0 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0003 | static readonly property + property decorator | Static matrix | integration | P0 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0004 | static property decorator target | Static matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0005 | static method decorator target | Static matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0006 | static property with factory decorator | Static matrix | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0007 | static method with factory decorator | Static matrix | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0008 | static property initializer + decorator | Static matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0009 | static method return type + decorator | Static matrix | pass | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0010 | static method parameter type + decorator | Static matrix | pass | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0011 | static member access after decorator | Static matrix | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0012 | static member type mismatch still error | Static matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0013 | static target not prototype | Static matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0014 | static target not instance | Static matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0015 | static + export class | Static matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0016 | static + class decorator | Static matrix | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0017 | static + transform/lowering | Static matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0018 | static initializer order boundary | Static matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0019 | readonly property + decorator | Readonly / field initializer matrix | integration | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0020 | readonly property with initializer | Readonly / field initializer matrix | integration | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0021 | readonly property without initializer | Readonly / field initializer matrix | boundary | P2 | manual pending | 02_property_decorator | Pending target support; Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0022 | readonly static property + decorator | Readonly / field initializer matrix | integration | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0023 | decorated readonly assignment error | Readonly / field initializer matrix | fail_compile | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0024 | decorated readonly initializer type mismatch | Readonly / field initializer matrix | fail_compile | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0025 | decorated field initializer side effect | Readonly / field initializer matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0026 | decorated field no initializer | Readonly / field initializer matrix | pass | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0027 | number initializer + decorator | Readonly / field initializer matrix | pass | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0028 | string initializer + decorator | Readonly / field initializer matrix | pass | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0029 | class type initializer + decorator | Readonly / field initializer matrix | pass | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0030 | array initializer + decorator | Readonly / field initializer matrix | pass | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0031 | factory arg references field-related value boundary | Readonly / field initializer matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0032 | property decorator does not change field type | Readonly / field initializer matrix | fail_compile | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0033 | property decorator does not bypass readonly | Readonly / field initializer matrix | fail_compile | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0034 | initializer lowering not broken | Readonly / field initializer matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0035 | field initializer order boundary | Readonly / field initializer matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0036 | PR10632 field/property reference | Readonly / field initializer matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0037 | public property + decorator | Visibility matrix | integration | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0038 | public method + decorator | Visibility matrix | integration | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0039 | private property + decorator boundary | Visibility matrix | boundary | P2 | manual pending | 02_property_decorator | Pending target support; Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0040 | private method + decorator boundary | Visibility matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0041 | protected property + decorator boundary | Visibility matrix | boundary | P2 | manual pending | 02_property_decorator | Pending target support; Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0042 | protected method + decorator boundary | Visibility matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0043 | decorated private access outside class still error | Visibility matrix | fail_compile | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0044 | decorated protected access outside hierarchy still error | Visibility matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0045 | decorated public access still ok | Visibility matrix | pass | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0046 | visibility modifier order + decorator | Visibility matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0047 | private target/key behavior pending | Visibility matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0048 | protected target/key behavior pending | Visibility matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0049 | factory + private boundary | Visibility matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0050 | transform/lowering + visibility | Visibility matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0051 | inheritance + protected decorated member | Visibility matrix | integration | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0052 | unsupported visibility combination fail_compile/Pending | Visibility matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0053 | decorated class constructor no args | Constructor matrix | pass | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0054 | decorated class constructor one arg | Constructor matrix | pass | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0055 | decorated class constructor multiple args | Constructor matrix | pass | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0056 | constructor arg type mismatch still error | Constructor matrix | fail_compile | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0057 | class decorator does not execute constructor | Constructor matrix | pass | P0 | XTS smoke | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0058 | property decorator does not execute constructor | Constructor matrix | pass | P0 | XTS smoke | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0059 | method decorator does not execute constructor | Constructor matrix | pass | P0 | XTS smoke | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0060 | constructor body type semantics still valid | Constructor matrix | pass | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0061 | constructor decorator invalid/Pending | Constructor matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0062 | constructor parameter decorator invalid/Pending | Constructor matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0063 | constructor + field initializer + decorator | Constructor matrix | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0064 | constructor + inheritance + decorator | Constructor matrix | integration | P1 | compiler expected | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0065 | transform/lowering does not break constructor binding | Constructor matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0066 | class decorator return value and constructor boundary | Constructor matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0067 | decorated base class | Inheritance / super matrix | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0068 | decorated derived class | Inheritance / super matrix | integration | P1 | XTS smoke | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0069 | decorated class extends normal base | Inheritance / super matrix | integration | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0070 | normal class extends decorated base | Inheritance / super matrix | integration | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0071 | decorated derived class calls super | Inheritance / super matrix | integration | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0072 | decorated method calls super.method | Inheritance / super matrix | integration | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0073 | decorated override method calls super.method | Inheritance / super matrix | integration | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0074 | decorated property in base class | Inheritance / super matrix | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0075 | decorated property in derived class | Inheritance / super matrix | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0076 | decorated method in base class | Inheritance / super matrix | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0077 | decorated method in derived class | Inheritance / super matrix | integration | P1 | compiler expected | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0078 | class decorator does not break prototype chain | Inheritance / super matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0079 | method decorator does not break super dispatch | Inheritance / super matrix | integration | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0080 | property decorator does not break inheritance | Inheritance / super matrix | integration | P1 | compiler expected | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0081 | decorated static member inheritance boundary | Inheritance / super matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0082 | decorated protected member inheritance | Inheritance / super matrix | integration | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0083 | decorated private member boundary | Inheritance / super matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0084 | class decorator return value and inheritance Pending | Inheritance / super matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0085 | multiple decorators with inheritance | Inheritance / super matrix | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0086 | transform/lowering with inheritance | Inheritance / super matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0087 | override method + decorator | Override matrix | integration | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0088 | decorated override parameter match | Override matrix | pass | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0089 | decorated override parameter mismatch still error | Override matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0090 | decorated override return match | Override matrix | pass | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0091 | decorated override return mismatch still error | Override matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0092 | decorated method missing override still error if ArkTS requires | Override matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0093 | decorator order with override modifier boundary | Override matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0094 | factory decorator + override | Override matrix | integration | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0095 | multiple decorators + override | Override matrix | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0096 | override + super.method | Override matrix | integration | P1 | XTS smoke | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0097 | override + generic method boundary | Override matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0098 | override + visibility boundary | Override matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0099 | transform/lowering does not break override checker | Override matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0100 | unsupported override/decorator order Pending | Override matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0101 | abstract class + class decorator | Abstract matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0102 | abstract method + method decorator | Abstract matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0103 | abstract property + property decorator | Abstract matrix | boundary | P2 | manual pending | 02_property_decorator | Pending target support; Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0104 | decorated abstract class cannot instantiate | Abstract matrix | fail_compile | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0105 | concrete subclass implements abstract method | Abstract matrix | integration | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0106 | decorated concrete method implements abstract method | Abstract matrix | integration | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0107 | decorated abstract class export | Abstract matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0108 | decorated abstract class factory decorator | Abstract matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0109 | generic abstract class + decorator | Abstract matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0110 | abstract method decorator target pending | Abstract matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0111 | abstract property decorator target pending | Abstract matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0112 | transform/lowering with abstract | Abstract matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0113 | unsupported abstract combination fail_compile/Pending | Abstract matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0114 | abstract decorator return value boundary | Abstract matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0115 | generic class + class decorator | Generic matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0116 | generic class property + property decorator | Generic matrix | boundary | P2 | manual pending | 02_property_decorator | Pending target support; Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0117 | generic class method + method decorator | Generic matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0118 | generic method + method decorator | Generic matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0119 | generic constraint + decorator | Generic matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0120 | generic default type parameter + decorator | Generic matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0121 | generic instantiation after decorator | Generic matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0122 | generic type mismatch still error | Generic matrix | fail_compile | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0123 | generic method parameter mismatch still error | Generic matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0124 | generic method return mismatch still error | Generic matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0125 | factory decorator on generic class | Generic matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0126 | factory arg unrelated to type parameter boundary | Generic matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0127 | exported generic decorated class | Generic matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0128 | inherited generic decorated class | Generic matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0129 | transform/lowering with generic | Generic matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0130 | unsupported generic combination Pending | Generic matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0131 | decorated class implements interface | Implements matrix | integration | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0132 | decorated class missing interface method still error | Implements matrix | fail_compile | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0133 | decorated class missing interface property still error | Implements matrix | fail_compile | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0134 | decorated method implements interface method | Implements matrix | integration | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0135 | decorated property implements interface property | Implements matrix | integration | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0136 | class decorator does not bypass implements | Implements matrix | fail_compile | P1 | parser/checker | 01_class_decorator | Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0137 | property decorator does not bypass implements | Implements matrix | fail_compile | P1 | parser/checker | 02_property_decorator | Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0138 | method decorator does not bypass implements | Implements matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0139 | generic interface + decorated class | Implements matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0140 | exported decorated class implements interface | Implements matrix | integration | P1 | parser/checker | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0141 | private/protected visibility conflict still error | Implements matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0142 | method signature mismatch still error | Implements matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0143 | interface member decorator invalid/Pending | Implements matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0144 | transform/lowering with implements | Implements matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0145 | overloaded method + decorator | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0146 | decorator on overload signature boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0147 | decorator on overload implementation boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0148 | overload parameter mismatch still error | Overload / accessor / parameter boundary matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0149 | overload return mismatch still error | Overload / accessor / parameter boundary matrix | fail_compile | P1 | parser/checker | 03_method_decorator | Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0150 | getter + decorator boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0151 | setter + decorator boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 03_method_decorator | Pending target support; Related: 03_method_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0152 | accessor decorator boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0153 | property vs accessor decorator boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 02_property_decorator | Pending target support; Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0154 | parameter decorator boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0155 | constructor parameter decorator boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0156 | factory + accessor boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0157 | transform/lowering with accessor | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0158 | unsupported accessor fail_compile/Pending | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0159 | unsupported parameter decorator fail_compile/Pending | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0160 | execution order with accessor boundary | Overload / accessor / parameter boundary matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0161 | nested class + decorator | Nested/local/class expression matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0162 | local class declaration + decorator | Nested/local/class expression matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0163 | class expression + decorator boundary | Nested/local/class expression matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0164 | anonymous class + decorator boundary | Nested/local/class expression matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0165 | default export anonymous decorated class boundary | Nested/local/class expression matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0166 | nested decorator binding resolution | Nested/local/class expression matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0167 | local decorator binding resolution | Nested/local/class expression matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0168 | class name binding after decorator | Nested/local/class expression matrix | boundary | P2 | manual pending | 01_class_decorator | Pending target support; Related: 01_class_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0169 | factory closure with local class | Nested/local/class expression matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0170 | transform/lowering with nested class | Nested/local/class expression matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0171 | unsupported class form fail_compile/Pending | Nested/local/class expression matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0172 | class expression order boundary | Nested/local/class expression matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0173 | PR 10632 涉及 property decorator + field | Regression reference matrix | regression | P1 | manual pending | 02_property_decorator | PR 10632 reference only; Related: 02_property_decorator; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0174 | PR 10632 涉及 field initializer boundary | Regression reference matrix | regression | P1 | manual pending | 06_decorator_execution_order | PR 10632 reference only; Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0175 | PR 10632 涉及 transform/lowering | Regression reference matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0176 | PR 10632 核心归入 transform/sendable/codegen | Regression reference matrix | regression | P1 | manual pending | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-FEATURE-TD-0177 | sendable-specific 扩展转交 07_decorator_with_sendable | Regression reference matrix | regression | P1 | manual pending | 07_decorator_with_sendable | Related: 07_decorator_with_sendable; Not from test262 |
