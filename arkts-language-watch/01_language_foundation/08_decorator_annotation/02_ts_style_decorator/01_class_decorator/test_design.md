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

<!-- CLASS_DEEPENING_2026_07_03 -->

## Class Decorator Deepening Test Matrix

## Goal

围绕 TS style class decorator 建立系统性测试设计，主线为普通 class declaration 下的 class decorator 能力。

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-CLASS-TD-0001 | class decorator | Basic class decorator | pass | P0 | XTS smoke | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0002 | class decorator 为普通标识符 | Basic class decorator | pass | P0 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0003 | class decorator 为 factory call | Basic class decorator | pass | P0 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0004 | class decorator 无参数 | Basic class decorator | pass | P0 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0005 | class decorator 单参数 | Basic class decorator | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0006 | class decorator 多参数 | Basic class decorator | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0007 | class decorator 参数为 literal | Basic class decorator | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0008 | class decorator 参数为表达式 | Basic class decorator | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0009 | class decorator 参数为函数 | Basic class decorator | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0010 | decorator 名称未定义 | Basic class decorator | fail_compile | P0 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0011 | decorator 表达式类型错误 | Basic class decorator | fail_compile | P0 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0012 | decorator 返回值非法 boundary | Basic class decorator | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0013 | decorator 与 constructor 类型检查共存 | Basic class decorator | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0014 | decorator 与 class field 类型检查共存 | Basic class decorator | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0015 | decorator 与 class method 类型检查共存 | Basic class decorator | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0016 | decorator 与 static member 共存 | Basic class decorator | integration | P1 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0017 | decorator 不改变 class 可见行为 | Basic class decorator | pass | P1 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0018 | decorator 不绕过 checker | Basic class decorator | fail_compile | P0 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0019 | class decorator target | Target / constructor matrix | pass | P0 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0020 | target 为 class constructor / class value | Target / constructor matrix | pass | P0 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0021 | target 不应为 instance | Target / constructor matrix | integration | P0 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0022 | target 不应为 prototype | Target / constructor matrix | integration | P0 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0023 | target 保留 class name | Target / constructor matrix | pass | P1 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0024 | target 保留 constructor | Target / constructor matrix | pass | P1 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0025 | 多 class decorators target 一致 | Target / constructor matrix | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-TD-0026 | target 不错配到其他 class | Target / constructor matrix | integration | P0 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0027 | exported class target | Target / constructor matrix | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0028 | default export class target | Target / constructor matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0029 | anonymous default export class target boundary | Target / constructor matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0030 | local class target boundary | Target / constructor matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0031 | nested class target boundary | Target / constructor matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0032 | generic class target | Target / constructor matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0033 | abstract class target boundary | Target / constructor matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0034 | target 规则待确认时 Pending | Target / constructor matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0035 | factory 无参 | Decorator factory matrix | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0036 | factory 单 string 参数 | Decorator factory matrix | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0037 | factory 单 number 参数 | Decorator factory matrix | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0038 | factory 单 boolean 参数 | Decorator factory matrix | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0039 | factory 多参数 | Decorator factory matrix | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0040 | factory 参数为 arrow function | Decorator factory matrix | pass | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0041 | factory 参数为 normal function | Decorator factory matrix | pass | P1 | compiler expected | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0042 | factory 参数为 IIFE | Decorator factory matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0043 | factory 参数为 imported binding | Decorator factory matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0044 | factory 参数为 local const | Decorator factory matrix | pass | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0045 | factory 返回 class decorator function | Decorator factory matrix | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0046 | factory 返回闭包 class decorator function | Decorator factory matrix | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0047 | factory 返回非函数 boundary | Decorator factory matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0048 | factory 抛异常 boundary | Decorator factory matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0049 | factory 求值顺序 | Decorator factory matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-TD-0050 | factory 与多个 class decorators | Decorator factory matrix | integration | P1 | compiler expected | 06_decorator_execution_order | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-TD-0051 | factory 与 transform lowering | Decorator factory matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0052 | factory 与 module scope | Decorator factory matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0053 | decorated normal class | Export/default matrix | pass | P1 | XTS smoke | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0054 | decorated exported class | Export/default matrix | integration | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0055 | decorated default export class | Export/default matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0056 | anonymous default export decorated class boundary | Export/default matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0057 | `@dec export class A` order boundary | Export/default matrix | boundary | P2 | parser/checker | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0058 | `export @dec class A` order boundary | Export/default matrix | boundary | P2 | parser/checker | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0059 | `@dec export default class A` order boundary | Export/default matrix | boundary | P2 | parser/checker | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0060 | `export default @dec class A` order boundary | Export/default matrix | boundary | P2 | parser/checker | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0061 | decorated class imported by another module | Export/default matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0062 | decorated default class imported by another module | Export/default matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0063 | re-export decorated class boundary | Export/default matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0064 | export binding after class decorator | Export/default matrix | integration | P1 | compiler expected | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0065 | default export binding after class decorator | Export/default matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0066 | export order with factory side effects boundary | Export/default matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-TD-0067 | constructor no args | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0068 | constructor single arg | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0069 | constructor multiple args | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0070 | constructor parameter type mismatch + decorator | Class type system matrix | fail_compile | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0071 | class field type + decorator | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0072 | class field initializer mismatch + decorator | Class type system matrix | fail_compile | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0073 | static field type + decorator | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0074 | method parameter type + decorator | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0075 | method return type + decorator | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0076 | static method + decorator | Class type system matrix | pass | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0077 | getter/setter in decorated class boundary | Class type system matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0078 | implements interface + decorator | Class type system matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0079 | missing interface member + decorator still error | Class type system matrix | fail_compile | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0080 | extends base + decorator | Class type system matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0081 | wrong override + decorator still error | Class type system matrix | fail_compile | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0082 | private member access + decorator still error | Class type system matrix | fail_compile | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0083 | protected member access + decorator still error | Class type system matrix | fail_compile | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0084 | generic class type argument + decorator | Class type system matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0085 | class decorator 不改变 class 静态类型 | Class type system matrix | pass | P0 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0086 | invalid class semantics still reported | Class type system matrix | fail_compile | P0 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0087 | decorated base class | Inheritance / implements matrix | integration | P1 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0088 | decorated derived class | Inheritance / implements matrix | integration | P1 | XTS smoke | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0089 | decorated class extends normal base | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0090 | normal class extends decorated base | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0091 | decorated derived class calls super | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0092 | decorated derived class override method | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0093 | decorated class implements interface | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0094 | decorated class missing interface method still error | Inheritance / implements matrix | fail_compile | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0095 | decorated abstract base boundary | Inheritance / implements matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0096 | decorated concrete implementation | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0097 | decorated class with protected base member | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0098 | decorated class with private member | Inheritance / implements matrix | integration | P1 | parser/checker | 05_decorator_transform | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0099 | class decorator and inheritance transform | Inheritance / implements matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0100 | class decorator 不破坏 prototype chain boundary | Inheritance / implements matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0101 | class decorator 返回 void | Return value behavior matrix | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0102 | class decorator 返回 undefined | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0103 | class decorator 返回原 class | Return value behavior matrix | pass | P1 | XTS smoke | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0104 | class decorator 返回 subclass boundary | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0105 | class decorator 返回 new class boundary | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0106 | class decorator 返回 object boundary | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0107 | class decorator 返回 number/string boundary | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0108 | class decorator 返回 null boundary | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0109 | class decorator 返回 invalid value checker/runtime boundary | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0110 | class decorator 替换 constructor 是否支持 Pending | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0111 | 替换 class 后 static members 行为 Pending | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0112 | 替换 class 后 instance members 行为 Pending | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0113 | 替换 class 后 instanceof 行为 Pending | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0114 | 替换 class 后 type checker 行为 Pending | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0115 | factory 返回 class decorator 的返回值行为 | Return value behavior matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0116 | multiple class decorators 返回值组合 boundary | Return value behavior matrix | boundary | P2 | manual pending | 06_decorator_execution_order | Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-CLASS-TD-0117 | class decorator lowering | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0118 | class decorator call after class definition | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0119 | class decorator target lowering | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0120 | factory call lowering | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0121 | decorator function call lowering | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0122 | lowering 后 class binding 正确 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0123 | lowering 后 export binding 正确 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0124 | lowering 后 default export binding 正确 | Transform/lowering matrix | boundary | P2 | manual pending | 05_decorator_transform | Pending target support; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0125 | lowering 后 imported binding 作用域 | Transform/lowering matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0126 | lowering 后 decorator 参数 arrow function 作用域 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0127 | lowering 后 decorator 参数 IIFE 作用域 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0128 | lowering 后无重复 decorator 调用 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0129 | lowering 后无遗漏 decorator 调用 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0130 | lowering 后 AST state 不污染 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0131 | lowering 后 binder context 不污染 | Transform/lowering matrix | bytecode regression | P0 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0132 | class decorator 是否存在 PR10632-like 风险 | Transform/lowering matrix | regression | P1 | bytecode expected | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0133 | import class decorator function | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0134 | import class decorator factory | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0135 | import decorator 参数 | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0136 | export decorated class | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0137 | default export decorated class | Module/export matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0138 | re-export decorator boundary | Module/export matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0139 | circular import boundary | Module/export matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0140 | module initialization order | Module/export matrix | boundary | P2 | manual pending | 09_decorator_module_scope | Pending target support; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0141 | decorator lowering 后 import binding | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0142 | class decorator 与 moduleVar | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0143 | imported factory 返回 class decorator | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0144 | imported decorator 与 local class body | Module/export matrix | integration | P1 | compiler expected | 09_decorator_module_scope | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-CLASS-TD-0145 | decorator 放在 interface | Boundary/unsupported matrix | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0146 | decorator 放在 enum | Boundary/unsupported matrix | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0147 | decorator 放在 type alias | Boundary/unsupported matrix | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0148 | decorator 放在 object literal | Boundary/unsupported matrix | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0149 | decorator 放在 function declaration | Boundary/unsupported matrix | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0150 | decorator 放在 local variable | Boundary/unsupported matrix | fail_compile | P1 | parser/checker | 00_decorator_syntax | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0151 | decorator 放在 class expression boundary | Boundary/unsupported matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0152 | decorator expression throw | Boundary/unsupported matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0153 | factory 返回 invalid value | Boundary/unsupported matrix | boundary | P2 | manual pending | 04_decorator_factory | Pending target support; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0154 | decorator factory 参数类型异常 | Boundary/unsupported matrix | fail_compile | P1 | parser/checker | 04_decorator_factory | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-CLASS-TD-0155 | decorator 与 unsupported abstract class | Boundary/unsupported matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0156 | decorator 与 unsupported generic class | Boundary/unsupported matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0157 | decorator 与 unsupported export order | Boundary/unsupported matrix | boundary | P2 | parser/checker | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0158 | unsupported target pending | Boundary/unsupported matrix | boundary | P2 | manual pending | 00_decorator_syntax | Pending target support; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-CLASS-TD-0159 | PR 10632 不是 class decorator bug | Regression reference matrix | regression | P1 | manual pending | 07_decorator_with_sendable | PR 10632 reference only; Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-CLASS-TD-0160 | class decorator 是否存在类似 transform AST state pollution | Regression reference matrix | regression | P1 | bytecode expected | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0161 | class decorator 是否存在类似 binder context pollution | Regression reference matrix | regression | P1 | bytecode expected | 05_decorator_transform | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0162 | class decorator transform 与 bytecode expected 需要后续确认 | Regression reference matrix | regression | P1 | bytecode expected | 05_decorator_transform | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-CLASS-TD-0163 | sendable-specific 扩展转交 07_decorator_with_sendable | Regression reference matrix | regression | P1 | manual pending | 07_decorator_with_sendable | Related: 07_decorator_with_sendable; Not from test262 |
