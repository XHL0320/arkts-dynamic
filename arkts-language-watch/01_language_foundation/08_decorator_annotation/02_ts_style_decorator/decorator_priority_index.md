# Decorator Priority Index

## Priority Definition

| 优先级 | 含义 |
|---|---|
| P0 | 真实历史缺陷、parser/checker 基础负向、transform/lowering 高风险、bytecode regression |
| P1 | 普通 decorator 核心能力：syntax/property/method/class/factory/module |
| P2 | class features integration、execution order、boundary、unsupported target |
| P3 | 长期观察、Pending、规范待确认、低频组合 |

## Directory Priority

| 子目录 | 主线定位 | 优先级 | 原因 | 是否进入首批生成 |
|---|---|---|---|---|
| 00_decorator_syntax | 基础语法/parser-checker | P0/P1 | invalid syntax/target 是首批基础负向 | 是 |
| 01_class_decorator | 普通 class decorator | P1 | class target/return/export 核心能力 | 是 |
| 02_property_decorator | 普通 property decorator | P0/P1 | property target/key 是核心高风险 | 是 |
| 03_method_decorator | 普通 method decorator | P1 | target/key/descriptor 待确认 | 是 |
| 04_decorator_factory | decorator factory | P1 | 参数/IIFE/返回值核心能力 | 是 |
| 05_decorator_transform | transform/lowering | P0 | bytecode/codegen 高风险 | 是 |
| 06_decorator_execution_order | execution order | P1/P2 | multiple/factory order smoke | 部分 |
| 07_decorator_with_sendable | sendable-specific regression | P0 | PR 10632 主归属 | 少量 |
| 08_decorator_with_class_features | class feature integration | P1/P2 | static/readonly/override 等组合 | 部分 |
| 09_decorator_module_scope | module scope/import/export | P1/P2 | multi-file binding/lowering | 部分 |

## P0 Index

| Global ID | 来源目录 | 测试点 | 用例类型 | 建议测试方式 | 备注 |
|---|---|---|---|---|---|
| DECORATOR-TOTAL-0001 | 00_decorator_syntax | decorator after declaration invalid | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0002 | 00_decorator_syntax | decorator 参数列表语法错误 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0003 | 00_decorator_syntax | decorator 只有 @ | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0004 | 00_decorator_syntax | decorator 名称为空 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0005 | 00_decorator_syntax | decorator 后缺少声明 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0006 | 00_decorator_syntax | local variable | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0007 | 00_decorator_syntax | parser accepts but checker rejects invalid return value boundary | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0008 | 00_decorator_syntax | parser accepts but checker rejects non-callable decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0009 | 00_decorator_syntax | parser accepts but checker rejects unresolved decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0010 | 00_decorator_syntax | parser accepts class decorator but class semantic error still报错 | fail_compile | parser/checker | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0011 | 00_decorator_syntax | parser accepts method decorator but method override error still报错 | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0012 | 00_decorator_syntax | parser error: bare @ | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0013 | 00_decorator_syntax | parser error: decorator without declaration | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0014 | 00_decorator_syntax | parser error: invalid target position | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0015 | 00_decorator_syntax | standalone decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0016 | 00_decorator_syntax | type alias | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0017 | 01_class_decorator | decorator 不绕过 checker | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0018 | 01_class_decorator | decorator 名称未定义 | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0019 | 01_class_decorator | decorator 表达式类型错误 | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0020 | 01_class_decorator | invalid class semantics still reported | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0021 | 02_property_decorator | field initializer mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0022 | 02_property_decorator | field type mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0023 | 03_method_decorator | decorated override 参数不匹配仍报错 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0024 | 03_method_decorator | decorated override 返回值不匹配仍报错 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0025 | 03_method_decorator | parameter type mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0026 | 03_method_decorator | return type mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0027 | 04_decorator_factory | factory 未定义 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0028 | 04_decorator_factory | factory 非函数 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0029 | 08_decorator_with_class_features | decorated override parameter mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0030 | 08_decorator_with_class_features | decorated override return mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0031 | 08_decorator_with_class_features | decorated readonly assignment error | fail_compile | parser/checker | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0032 | 00_decorator_syntax | @decorator() call expression | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0033 | 00_decorator_syntax | class 前 @decorator | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0034 | 00_decorator_syntax | decorator 与声明之间换行 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0035 | 00_decorator_syntax | instance method | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0036 | 00_decorator_syntax | method 前 @decorator | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0037 | 00_decorator_syntax | property 前 @decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0038 | 00_decorator_syntax | public property | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0039 | 00_decorator_syntax | readonly property | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0040 | 00_decorator_syntax | static method | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0041 | 01_class_decorator | class decorator | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0042 | 01_class_decorator | class decorator target | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0043 | 01_class_decorator | class decorator 不改变 class 静态类型 | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0044 | 01_class_decorator | class decorator 为 factory call | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0045 | 01_class_decorator | class decorator 为普通标识符 | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0046 | 01_class_decorator | class decorator 无参数 | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0047 | 01_class_decorator | target 为 class constructor / class value | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0048 | 02_property_decorator | instance field property decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0049 | 02_property_decorator | property decorator 为 factory call | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0050 | 02_property_decorator | property decorator 为普通标识符 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0051 | 02_property_decorator | property decorator 单参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0052 | 02_property_decorator | property decorator 参数为 literal | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0053 | 02_property_decorator | property decorator 参数为函数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0054 | 02_property_decorator | property decorator 参数为表达式 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0055 | 02_property_decorator | property decorator 多参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0056 | 02_property_decorator | property decorator 无参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0057 | 02_property_decorator | static field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0058 | 02_property_decorator | static field property decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0059 | 03_method_decorator | instance method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0060 | 03_method_decorator | static method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0061 | 04_decorator_factory | factory 用于 property decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0062 | 04_decorator_factory | factory 调用结果作为 decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0063 | 04_decorator_factory | factory 返回 decorator function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0064 | 04_decorator_factory | 单参 factory | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0065 | 04_decorator_factory | 多参 factory | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0066 | 04_decorator_factory | 无参 factory | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0067 | 06_decorator_execution_order | class decorator 不执行 constructor | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0068 | 06_decorator_execution_order | decorator function 调用 | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0069 | 06_decorator_execution_order | decorator side effect 执行一次 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0070 | 06_decorator_execution_order | decorator 不遗漏调用 | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0071 | 06_decorator_execution_order | decorator 不重复调用 | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0072 | 06_decorator_execution_order | factory call 求值 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0073 | 06_decorator_execution_order | factory 参数先求值 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0074 | 06_decorator_execution_order | identifier decorator expression 求值 | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0075 | 06_decorator_execution_order | method decorator 不执行 method body | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0076 | 06_decorator_execution_order | property decorator 不执行 instance field initializer | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0077 | 06_decorator_execution_order | returned decorator function 调用 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0078 | 08_decorator_with_class_features | class decorator does not execute constructor | pass | XTS smoke | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0079 | 08_decorator_with_class_features | method decorator does not execute constructor | pass | XTS smoke | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0080 | 08_decorator_with_class_features | property decorator does not execute constructor | pass | XTS smoke | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0081 | 01_class_decorator | class decorator and inheritance transform | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0082 | 01_class_decorator | class decorator call after class definition | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0083 | 01_class_decorator | class decorator lowering | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0084 | 01_class_decorator | class decorator target lowering | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0085 | 01_class_decorator | decorator function call lowering | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0086 | 01_class_decorator | factory call lowering | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0087 | 01_class_decorator | factory 与 transform lowering | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0088 | 01_class_decorator | lowering 后 AST state 不污染 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0089 | 01_class_decorator | lowering 后 binder context 不污染 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0090 | 01_class_decorator | lowering 后 class binding 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0091 | 01_class_decorator | lowering 后 decorator 参数 IIFE 作用域 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0092 | 01_class_decorator | lowering 后 decorator 参数 arrow function 作用域 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0093 | 01_class_decorator | lowering 后 export binding 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0094 | 01_class_decorator | lowering 后无遗漏 decorator 调用 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0095 | 01_class_decorator | lowering 后无重复 decorator 调用 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0096 | 02_property_decorator | PR 10632 作为 transform regression 引用 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0097 | 02_property_decorator | lowering 后 codegen 不错用旧上下文 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0098 | 05_decorator_transform | IIFE 参数 bytecode 正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0099 | 05_decorator_transform | PR 10632 bytecode expected | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0100 | 05_decorator_transform | PR 10632 原始形态 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0101 | 05_decorator_transform | class definition 与 decorator call 顺序正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0102 | 05_decorator_transform | decorator function 调用正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0103 | 05_decorator_transform | decorator 参数 function 不生成 sendable 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0104 | 05_decorator_transform | factory 调用正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0105 | 05_decorator_transform | field initializer 不被破坏 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0106 | 05_decorator_transform | instance property target 正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0107 | 05_decorator_transform | key 参数正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0108 | 05_decorator_transform | module import binding 正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0109 | 05_decorator_transform | normal function 参数 bytecode 正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0110 | 05_decorator_transform | property decorator call 生成正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0111 | 05_decorator_transform | property decorator 参数为 IIFE | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0112 | 05_decorator_transform | property decorator 参数为 arrow function | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0113 | 05_decorator_transform | sendable class 本体仍生成 sendable 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0114 | 05_decorator_transform | shared pointer 不污染 checker/type 状态 | bytecode regression | bytecode expected | PR 10632; bytecode regression; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0115 | 05_decorator_transform | shared pointer 不污染 codegen | bytecode regression | bytecode expected | PR 10632; bytecode regression; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0116 | 05_decorator_transform | shared pointer 不污染 inSendable | bytecode regression | bytecode expected | PR 10632; bytecode regression; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0117 | 05_decorator_transform | shared pointer 不污染 scope | bytecode regression | bytecode expected | PR 10632; bytecode regression; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0118 | 05_decorator_transform | static property decorator bytecode target 正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0119 | 05_decorator_transform | static property decorator lowering | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0120 | 05_decorator_transform | static property target 正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0121 | 05_decorator_transform | transform 后 class field 初始化仍正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0122 | 05_decorator_transform | transform/lowering | bytecode regression | bytecode expected | bytecode regression |
| DECORATOR-TOTAL-0123 | 05_decorator_transform | 不遗漏 decorator 调用 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0124 | 05_decorator_transform | 不重复生成 decorator 调用 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0125 | 05_decorator_transform | 参数为 IIFE | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0126 | 05_decorator_transform | 参数为 arrow function | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0127 | 05_decorator_transform | 多 decorator bytecode 顺序正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0128 | 05_decorator_transform | 多 property decorator 不重复调用 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0129 | 06_decorator_execution_order | class decorator lowering 后调用顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0130 | 06_decorator_execution_order | class definition 与 decorator call 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0131 | 06_decorator_execution_order | decorator function call lowering 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0132 | 06_decorator_execution_order | factory call lowering 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0133 | 06_decorator_execution_order | lowering 后 AST state 不影响顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0134 | 06_decorator_execution_order | lowering 后 class/property/method 混合顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0135 | 06_decorator_execution_order | lowering 后 codegen 顺序稳定 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0136 | 06_decorator_execution_order | lowering 后 import binding 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0137 | 06_decorator_execution_order | lowering 后 module import 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0138 | 06_decorator_execution_order | lowering 后 multiple decorators 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0139 | 06_decorator_execution_order | lowering 后 side effect 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0140 | 06_decorator_execution_order | lowering 后 static/instance 顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0141 | 06_decorator_execution_order | lowering 后不遗漏调用 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0142 | 06_decorator_execution_order | lowering 后不重复调用 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0143 | 06_decorator_execution_order | method decorator lowering 后调用顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0144 | 06_decorator_execution_order | property decorator lowering 后调用顺序 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0145 | 07_decorator_with_sendable | IIFE 内部函数不生成 sendable function 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0146 | 07_decorator_with_sendable | PR 10632 原始 bytecode expected | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0147 | 07_decorator_with_sendable | arrow function 参数不生成 sendable function 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0148 | 07_decorator_with_sendable | decorator factory 参数为 IIFE | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0149 | 07_decorator_with_sendable | decorator factory 参数为 arrow function | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0150 | 07_decorator_with_sendable | decorator factory 参数为 normal function | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0151 | 07_decorator_with_sendable | decorator factory 返回 decorator function | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0152 | 07_decorator_with_sendable | decorator factory 返回函数不生成 sendable function 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0153 | 07_decorator_with_sendable | decorator 参数 arrow function 引用 moduleVar | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0154 | 07_decorator_with_sendable | decorator 参数 normal function 引用 moduleVar | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0155 | 07_decorator_with_sendable | decorator 外提后 class 外函数不生成 sendable function 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0156 | 07_decorator_with_sendable | decorator 调用位置在 class definition 后 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0157 | 07_decorator_with_sendable | instance property decorator target 正确 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0158 | 07_decorator_with_sendable | module import binding 访问不改变 sendable 标记 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0159 | 07_decorator_with_sendable | normal function 参数不生成 sendable function 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0160 | 07_decorator_with_sendable | property decorator + initializer + sendable class | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0161 | 07_decorator_with_sendable | property decorator + no initializer + sendable class | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0162 | 07_decorator_with_sendable | sendable class + property decorator + arrow function 参数 + local variable | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0163 | 07_decorator_with_sendable | sendable class + property decorator + arrow function 参数 + module import | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0164 | 07_decorator_with_sendable | sendable class + property decorator + factory 返回 decorator function | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0165 | 07_decorator_with_sendable | sendable class + property decorator + immediate invoked arrow function | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0166 | 07_decorator_with_sendable | sendable class + property decorator + normal function 参数 + module import | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0167 | 07_decorator_with_sendable | sendable class 本体仍生成 sendable class 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0168 | 07_decorator_with_sendable | sendable method 内真正函数仍按 sendable 生成 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0169 | 07_decorator_with_sendable | static property decorator + sendable class | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0170 | 07_decorator_with_sendable | static property decorator target 正确 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0171 | 07_decorator_with_sendable | 原始 AST 与 transform 节点共享指针时不污染 codegen | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0172 | 07_decorator_with_sendable | 多 decorator 不污染 bytecode | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0173 | 08_decorator_with_class_features | initializer lowering not broken | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0174 | 08_decorator_with_class_features | static + transform/lowering | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0175 | 08_decorator_with_class_features | static method decorator target | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0176 | 08_decorator_with_class_features | static property decorator target | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0177 | 08_decorator_with_class_features | static target not instance | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0178 | 08_decorator_with_class_features | static target not prototype | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0179 | 08_decorator_with_class_features | transform/lowering + visibility | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0180 | 08_decorator_with_class_features | transform/lowering does not break constructor binding | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0181 | 08_decorator_with_class_features | transform/lowering does not break override checker | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0182 | 08_decorator_with_class_features | transform/lowering with implements | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0183 | 08_decorator_with_class_features | transform/lowering with inheritance | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0184 | 09_decorator_module_scope | binder context 不影响 module binding | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0185 | 09_decorator_module_scope | closure lowering 后正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0186 | 09_decorator_module_scope | closure transform 后正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0187 | 09_decorator_module_scope | closure 不丢失 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0188 | 09_decorator_module_scope | closure 不错绑 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0189 | 09_decorator_module_scope | export binding not broken | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0190 | 09_decorator_module_scope | lowering 后 IIFE 捕获 import 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0191 | 09_decorator_module_scope | lowering 后 arrow function 捕获 import 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0192 | 09_decorator_module_scope | lowering 后 bytecode/codegen 使用正确 binding | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0193 | 09_decorator_module_scope | lowering 后 class 外 decorator 调用作用域正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0194 | 09_decorator_module_scope | lowering 后 decorator 参数 imported binding 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0195 | 09_decorator_module_scope | lowering 后 import 不错绑 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0196 | 09_decorator_module_scope | lowering 后 imported decorator binding 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0197 | 09_decorator_module_scope | lowering 后 imported factory binding 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0198 | 09_decorator_module_scope | lowering 后 module order 不变 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0199 | 09_decorator_module_scope | lowering 后 nested call 捕获 import 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0200 | 09_decorator_module_scope | lowering 后 normal function 捕获 import 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0201 | 09_decorator_module_scope | lowering 后不改变 module initialization order | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0202 | 09_decorator_module_scope | lowering 后不重复初始化 module | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0203 | 09_decorator_module_scope | transform AST state 不污染 imported binding | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0204 | 09_decorator_module_scope | 参数 import binding transform 后仍正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0205 | 01_class_decorator | target 不应为 instance | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0206 | 01_class_decorator | target 不应为 prototype | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0207 | 01_class_decorator | target 不错配到其他 class | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0208 | 02_property_decorator | instance property decorator lowering target | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0209 | 02_property_decorator | instance property target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0210 | 02_property_decorator | instance target 不应为 class constructor | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0211 | 02_property_decorator | key 不应丢失 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0212 | 02_property_decorator | key 不应错配到其他字段 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0213 | 02_property_decorator | multiple fields target/key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0214 | 02_property_decorator | public field target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0215 | 02_property_decorator | static property decorator lowering target | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0216 | 02_property_decorator | static property target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0217 | 02_property_decorator | static target 不应为 prototype | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0218 | 02_property_decorator | target 不应为 instance object | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0219 | 02_property_decorator | 多 decorator 下 key 不错乱 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0220 | 03_method_decorator | default export class 不影响 method target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0221 | 03_method_decorator | descriptor lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0222 | 03_method_decorator | descriptor 是否存在 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0223 | 03_method_decorator | descriptor.value 是否正确 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0224 | 03_method_decorator | exported class 不影响 method target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0225 | 03_method_decorator | instance method decorator lowering target | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0226 | 03_method_decorator | instance method target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0227 | 03_method_decorator | key 不应错配到其他方法 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0228 | 03_method_decorator | multiple decorators target/key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0229 | 03_method_decorator | multiple methods target/key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0230 | 03_method_decorator | static method decorator lowering target | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0231 | 03_method_decorator | static method target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0232 | 04_decorator_factory | class decorator factory lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0233 | 04_decorator_factory | factory call lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0234 | 04_decorator_factory | factory 参数 lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0235 | 04_decorator_factory | lowering 后 IIFE 参数作用域正确 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0236 | 04_decorator_factory | lowering 后 arrow function 参数作用域正确 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0237 | 04_decorator_factory | lowering 后 import binding 正确 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0238 | 04_decorator_factory | lowering 后 normal function 参数作用域正确 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0239 | 04_decorator_factory | lowering 后 target/key 正确 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0240 | 04_decorator_factory | lowering 后不遗漏 factory call | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0241 | 04_decorator_factory | lowering 后不重复 factory call | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0242 | 04_decorator_factory | method decorator factory lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0243 | 04_decorator_factory | property decorator factory lowering | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0244 | 04_decorator_factory | returned decorator function lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0245 | 08_decorator_with_class_features | static method + method decorator | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0246 | 08_decorator_with_class_features | static property + property decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0247 | 08_decorator_with_class_features | static readonly property + property decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0248 | 09_decorator_module_scope | import class decorator function | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0249 | 09_decorator_module_scope | import method decorator function | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0250 | 09_decorator_module_scope | import property decorator function | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0251 | 02_property_decorator | PR 10632 原始形态 | regression | XTS smoke | PR 10632; Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-TOTAL-0252 | 02_property_decorator | property decorator transform AST state pollution | regression | XTS smoke | PR 10632; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0253 | 04_decorator_factory | PR 10632 中 factory 与 property decorator 关联 | regression | XTS smoke | PR 10632; Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0254 | 04_decorator_factory | PR 10632 中 factory 与 transform AST state pollution 关联 | regression | XTS smoke | PR 10632; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0255 | 04_decorator_factory | PR 10632 中 factory 参数为 arrow IIFE | regression | XTS smoke | PR 10632; Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-TOTAL-0256 | 04_decorator_factory | PR 10632 中 factory 参数函数经 transform 后作用域正确 | regression | XTS smoke | PR 10632; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0257 | 04_decorator_factory | PR 10632 中 factory 参数引用 module import | regression | XTS smoke | PR 10632; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0258 | 05_decorator_transform | property decorator + arrow function | regression | XTS smoke | AST state pollution; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0259 | 05_decorator_transform | sendable class 交叉 | regression | XTS smoke | PR 10632; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0260 | 07_decorator_with_sendable | decorator 外提函数与真正 sendable 内部函数对照 | regression | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0261 | 07_decorator_with_sendable | sendable 交叉 | regression | XTS smoke | PR 10632 related |
| DECORATOR-TOTAL-0262 | 07_decorator_with_sendable | 多 decorator 中 PR 10632 形态重复出现 | regression | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0263 | 07_decorator_with_sendable | 多 decorator 中每个参数函数不应互相污染 | regression | XTS smoke | PR 10632; Not from test262 |

## P1 Index

| Global ID | 来源目录 | 测试点 | 用例类型 | 建议测试方式 | 备注 |
|---|---|---|---|---|---|
| DECORATOR-TOTAL-0264 | 00_decorator_syntax | constructor decorator invalid | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0265 | 00_decorator_syntax | invalid token after @ | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0266 | 00_decorator_syntax | non-callable expression | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0267 | 00_decorator_syntax | parser/checker 负向 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0268 | 00_decorator_syntax | unresolved identifier | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0269 | 00_decorator_syntax | 多 decorators 后缺少声明 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0270 | 01_class_decorator | class field initializer mismatch + decorator | fail_compile | parser/checker | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0271 | 01_class_decorator | constructor parameter type mismatch + decorator | fail_compile | parser/checker | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0272 | 01_class_decorator | decorator factory 参数类型异常 | fail_compile | parser/checker | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0273 | 01_class_decorator | decorator 放在 enum | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0274 | 01_class_decorator | decorator 放在 function declaration | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0275 | 01_class_decorator | decorator 放在 interface | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0276 | 01_class_decorator | decorator 放在 local variable | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0277 | 01_class_decorator | decorator 放在 object literal | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0278 | 01_class_decorator | decorator 放在 type alias | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0279 | 01_class_decorator | missing interface member + decorator still error | fail_compile | parser/checker | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0280 | 01_class_decorator | private member access + decorator still error | fail_compile | parser/checker | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0281 | 01_class_decorator | protected member access + decorator still error | fail_compile | parser/checker | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0282 | 01_class_decorator | wrong override + decorator still error | fail_compile | parser/checker | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0283 | 02_property_decorator | decorator 放在 enum member | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0284 | 02_property_decorator | decorator 放在 interface field | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0285 | 03_method_decorator | constructor decorator invalid | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0286 | 03_method_decorator | decorator 放在 constructor | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0287 | 03_method_decorator | decorator 放在 interface method | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0288 | 03_method_decorator | factory 返回 invalid value | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0289 | 03_method_decorator | instance target 不应为 class constructor | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0290 | 03_method_decorator | interface method | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0291 | 03_method_decorator | interface method decorator boundary | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0292 | 03_method_decorator | static decorated method 通过实例访问错误 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0293 | 04_decorator_factory | factory 参数类型不匹配 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0294 | 04_decorator_factory | 参数类型不匹配 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0295 | 04_decorator_factory | 返回值类型 checker boundary | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0296 | 06_decorator_execution_order | checker error decorator | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0297 | 06_decorator_execution_order | invalid modifier order | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0298 | 06_decorator_execution_order | invalid target order | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0299 | 06_decorator_execution_order | multiple decorators one invalid | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0300 | 06_decorator_execution_order | non-callable decorator | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0301 | 06_decorator_execution_order | non-callable decorator 不应进入 runtime order | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0302 | 06_decorator_execution_order | parser failure 不应进入 runtime order | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0303 | 06_decorator_execution_order | parser/checker failure no runtime order | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0304 | 06_decorator_execution_order | syntax error decorator | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0305 | 06_decorator_execution_order | unresolved decorator | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0306 | 06_decorator_execution_order | unresolved decorator 不应进入 runtime order | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0307 | 06_decorator_execution_order | unsupported target | fail_compile | parser/checker | Pending runtime semantics; Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0308 | 08_decorator_with_class_features | class decorator does not bypass implements | fail_compile | parser/checker | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0309 | 08_decorator_with_class_features | constructor arg type mismatch still error | fail_compile | parser/checker | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0310 | 08_decorator_with_class_features | decorated abstract class cannot instantiate | fail_compile | parser/checker | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0311 | 08_decorator_with_class_features | decorated class missing interface method still error | fail_compile | parser/checker | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0312 | 08_decorator_with_class_features | decorated class missing interface property still error | fail_compile | parser/checker | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0313 | 08_decorator_with_class_features | decorated private access outside class still error | fail_compile | parser/checker | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0314 | 08_decorator_with_class_features | decorated protected access outside hierarchy still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0315 | 08_decorator_with_class_features | decorated readonly initializer type mismatch | fail_compile | parser/checker | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0316 | 08_decorator_with_class_features | generic method parameter mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0317 | 08_decorator_with_class_features | generic method return mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0318 | 08_decorator_with_class_features | generic type mismatch still error | fail_compile | parser/checker | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0319 | 08_decorator_with_class_features | method decorator does not bypass implements | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0320 | 08_decorator_with_class_features | method signature mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0321 | 08_decorator_with_class_features | overload parameter mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0322 | 08_decorator_with_class_features | overload return mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0323 | 08_decorator_with_class_features | private/protected visibility conflict still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0324 | 08_decorator_with_class_features | property decorator does not bypass implements | fail_compile | parser/checker | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0325 | 08_decorator_with_class_features | property decorator does not bypass readonly | fail_compile | parser/checker | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0326 | 08_decorator_with_class_features | property decorator does not change field type | fail_compile | parser/checker | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0327 | 08_decorator_with_class_features | static member type mismatch still error | fail_compile | parser/checker | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0328 | 09_decorator_module_scope | decorator 参数引用未导出 binding | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0329 | 09_decorator_module_scope | decorator 参数引用错误类型 binding | fail_compile | parser/checker | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0330 | 09_decorator_module_scope | import 不存在 decorator | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0331 | 09_decorator_module_scope | import 不存在 factory | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0332 | 09_decorator_module_scope | module path 错误 | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0333 | 09_decorator_module_scope | unresolved imported decorator | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0334 | 09_decorator_module_scope | 参数 import path 错误 | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0335 | 09_decorator_module_scope | 参数 imported binding 类型不匹配 | fail_compile | parser/checker | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0336 | 09_decorator_module_scope | 参数引用未导出 binding | fail_compile | parser/checker | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0337 | 00_decorator_syntax | @dec public prop | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0338 | 00_decorator_syntax | @dec readonly prop | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0339 | 00_decorator_syntax | @dec static prop | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0340 | 00_decorator_syntax | @decorator(arg) call expression | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0341 | 00_decorator_syntax | @decorator(arg1, arg2) call expression | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0342 | 00_decorator_syntax | assignment statement | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0343 | 00_decorator_syntax | block statement | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0344 | 00_decorator_syntax | call expression | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0345 | 00_decorator_syntax | call expression missing parenthesis | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0346 | 00_decorator_syntax | class declaration | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0347 | 00_decorator_syntax | default exported class | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0348 | 00_decorator_syntax | empty argument list | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0349 | 00_decorator_syntax | enum member | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0350 | 00_decorator_syntax | export statement without declaration | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0351 | 00_decorator_syntax | exported class | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0352 | 00_decorator_syntax | expression statement | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0353 | 00_decorator_syntax | factory decorator + 标识符 decorator 混合 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0354 | 00_decorator_syntax | factory with IIFE arg | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0355 | 00_decorator_syntax | factory with arrow function arg | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0356 | 00_decorator_syntax | factory with boolean arg | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0357 | 00_decorator_syntax | factory with normal function arg | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0358 | 00_decorator_syntax | factory with number arg | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0359 | 00_decorator_syntax | factory with string arg | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0360 | 00_decorator_syntax | identifier | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0361 | 00_decorator_syntax | import declaration | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0362 | 00_decorator_syntax | imported identifier | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0363 | 00_decorator_syntax | instance property | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0364 | 00_decorator_syntax | interface member | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0365 | 00_decorator_syntax | local function statement | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0366 | 00_decorator_syntax | nested call expression | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0367 | 00_decorator_syntax | object literal property | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0368 | 00_decorator_syntax | parser accepts property decorator but field type mismatch still报错 | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0369 | 00_decorator_syntax | static method 前 @decorator | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0370 | 00_decorator_syntax | static property | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0371 | 00_decorator_syntax | static property 前 @decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0372 | 00_decorator_syntax | unsupported target should produce stable compile failure | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0373 | 00_decorator_syntax | 三个 decorators 连续 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0374 | 00_decorator_syntax | 两个 decorators 连续 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0375 | 00_decorator_syntax | 基础合法场景 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0376 | 00_decorator_syntax | 多 decorators 与 export class | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0377 | 00_decorator_syntax | 多 decorators 与 property/method | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0378 | 00_decorator_syntax | 多 decorators 中第一个非法 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0379 | 00_decorator_syntax | 多 decorators 中第二个非法 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0380 | 00_decorator_syntax | 多 decorators 中间有注释 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0381 | 00_decorator_syntax | 多 decorators 中间有空行 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0382 | 00_decorator_syntax | 多 decorators 分行 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0383 | 00_decorator_syntax | 多修饰符组合顺序 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0384 | 00_decorator_syntax | 标识符 decorator + factory decorator 混合 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0385 | 01_class_decorator | class decorator 单参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0386 | 01_class_decorator | class decorator 参数为 literal | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0387 | 01_class_decorator | class decorator 参数为函数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0388 | 01_class_decorator | class decorator 参数为表达式 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0389 | 01_class_decorator | class decorator 多参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0390 | 01_class_decorator | class decorator 返回 void | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0391 | 01_class_decorator | class decorator 返回原 class | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0392 | 01_class_decorator | class field type + decorator | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0393 | 01_class_decorator | constructor multiple args | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0394 | 01_class_decorator | constructor no args | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0395 | 01_class_decorator | constructor single arg | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0396 | 01_class_decorator | decorated normal class | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0397 | 01_class_decorator | decorator 不改变 class 可见行为 | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0398 | 01_class_decorator | factory 单 boolean 参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0399 | 01_class_decorator | factory 单 number 参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0400 | 01_class_decorator | factory 单 string 参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0401 | 01_class_decorator | factory 参数为 arrow function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0402 | 01_class_decorator | factory 参数为 local const | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0403 | 01_class_decorator | factory 参数为 normal function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0404 | 01_class_decorator | factory 多参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0405 | 01_class_decorator | factory 无参 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0406 | 01_class_decorator | factory 返回 class decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0407 | 01_class_decorator | factory 返回闭包 class decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0408 | 01_class_decorator | method parameter type + decorator | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0409 | 01_class_decorator | method return type + decorator | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0410 | 01_class_decorator | static field type + decorator | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0411 | 01_class_decorator | static method + decorator | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0412 | 01_class_decorator | target 保留 class name | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0413 | 01_class_decorator | target 保留 constructor | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0414 | 02_property_decorator | accessor decorator 与 property decorator 边界 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0415 | 02_property_decorator | array field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0416 | 02_property_decorator | bigint field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0417 | 02_property_decorator | boolean field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0418 | 02_property_decorator | class type field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0419 | 02_property_decorator | decorator factory 参数类型异常 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0420 | 02_property_decorator | decorator lowering 后 import binding | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0421 | 02_property_decorator | decorator 不影响字段类型推断或检查 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0422 | 02_property_decorator | decorator 不改变字段可访问性 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0423 | 02_property_decorator | decorator 与字段初始化共存 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0424 | 02_property_decorator | decorator 与字段类型共存 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0425 | 02_property_decorator | decorator 与无初始化字段共存 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0426 | 02_property_decorator | default export class + property decorator | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0427 | 02_property_decorator | enum field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0428 | 02_property_decorator | export class + property decorator | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0429 | 02_property_decorator | factory 与 module scope | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0430 | 02_property_decorator | factory 与 transform lowering | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0431 | 02_property_decorator | factory 与多个 property decorators | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0432 | 02_property_decorator | factory 单 boolean 参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0433 | 02_property_decorator | factory 单 number 参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0434 | 02_property_decorator | factory 单 string 参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0435 | 02_property_decorator | factory 参数为 IIFE | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0436 | 02_property_decorator | factory 参数为 arrow function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0437 | 02_property_decorator | factory 参数为 class static value | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0438 | 02_property_decorator | factory 参数为 enum value | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0439 | 02_property_decorator | factory 参数为 imported binding | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0440 | 02_property_decorator | factory 参数为 local const | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0441 | 02_property_decorator | factory 参数为 normal function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0442 | 02_property_decorator | factory 多参数 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0443 | 02_property_decorator | factory 无参 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0444 | 02_property_decorator | factory 求值顺序 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0445 | 02_property_decorator | factory 返回 decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0446 | 02_property_decorator | factory 返回闭包 decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0447 | 02_property_decorator | generic T field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0448 | 02_property_decorator | import decorator factory | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0449 | 02_property_decorator | import decorator function | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0450 | 02_property_decorator | import decorator 参数 | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0451 | 02_property_decorator | imported decorator 与 local field initializer | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0452 | 02_property_decorator | imported factory 返回 decorator | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0453 | 02_property_decorator | interface type field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0454 | 02_property_decorator | module initialization order | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0455 | 02_property_decorator | nullable field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0456 | 02_property_decorator | number field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0457 | 02_property_decorator | object field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0458 | 02_property_decorator | parameter decorator 与 property decorator 边界 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0459 | 02_property_decorator | property decorator 与 moduleVar | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0460 | 02_property_decorator | public field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0461 | 02_property_decorator | readonly field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0462 | 02_property_decorator | static readonly field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0463 | 02_property_decorator | string field | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0464 | 02_property_decorator | unsupported target pending | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0465 | 03_method_decorator | abstract method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0466 | 03_method_decorator | array parameter | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0467 | 03_method_decorator | boolean parameter | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0468 | 03_method_decorator | class type parameter | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0469 | 03_method_decorator | decorated method inheritance | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0470 | 03_method_decorator | decorated method override | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0471 | 03_method_decorator | decorated method super call | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0472 | 03_method_decorator | decorated method this binding | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0473 | 03_method_decorator | decorated method 访问 private 仍遵守规则 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0474 | 03_method_decorator | decorator 不改变 method 可访问性 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0475 | 03_method_decorator | decorator 与 unsupported method key | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0476 | 03_method_decorator | decorator 与 unsupported parameter | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0477 | 03_method_decorator | decorator 与方法参数类型共存 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0478 | 03_method_decorator | decorator 与方法返回值类型共存 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0479 | 03_method_decorator | decorator 与无返回值 method 共存 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0480 | 03_method_decorator | decorator 放在 local function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0481 | 03_method_decorator | decorator 放在 object literal method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0482 | 03_method_decorator | default export class + method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0483 | 03_method_decorator | export class + method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0484 | 03_method_decorator | factory 与多个 method decorators | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0485 | 03_method_decorator | factory 返回 method decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0486 | 03_method_decorator | factory 返回闭包 method decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0487 | 03_method_decorator | implemented method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0488 | 03_method_decorator | import decorator 参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0489 | 03_method_decorator | import method decorator factory | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0490 | 03_method_decorator | import method decorator function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0491 | 03_method_decorator | imported decorator 与 local method body | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0492 | 03_method_decorator | imported factory 返回 method decorator | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0493 | 03_method_decorator | method decorator 不改变方法签名 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0494 | 03_method_decorator | method decorator 与 moduleVar | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0495 | 03_method_decorator | method decorator 为 factory call | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0496 | 03_method_decorator | method decorator 为普通标识符 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0497 | 03_method_decorator | method decorator 单参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0498 | 03_method_decorator | method decorator 参数为 literal | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0499 | 03_method_decorator | method decorator 参数为函数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0500 | 03_method_decorator | method decorator 参数为表达式 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0501 | 03_method_decorator | method decorator 多参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0502 | 03_method_decorator | method decorator 无参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0503 | 03_method_decorator | module initialization order | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0504 | 03_method_decorator | multiple parameter method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0505 | 03_method_decorator | no-arg method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0506 | 03_method_decorator | nullable parameter | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0507 | 03_method_decorator | number parameter | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0508 | 03_method_decorator | object literal method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0509 | 03_method_decorator | optional parameter method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0510 | 03_method_decorator | override method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0511 | 03_method_decorator | public method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0512 | 03_method_decorator | rest parameter method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0513 | 03_method_decorator | returns array | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0514 | 03_method_decorator | returns class type | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0515 | 03_method_decorator | returns number | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0516 | 03_method_decorator | returns string | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0517 | 03_method_decorator | returns void | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0518 | 03_method_decorator | single parameter method | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0519 | 03_method_decorator | static decorated method 通过类名访问 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0520 | 03_method_decorator | string parameter | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0521 | 04_decorator_factory | IIFE | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0522 | 04_decorator_factory | arrow function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0523 | 04_decorator_factory | boolean literal | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0524 | 04_decorator_factory | class static value | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0525 | 04_decorator_factory | default export class + factory decorator | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0526 | 04_decorator_factory | enum value | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0527 | 04_decorator_factory | export class + factory decorator | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0528 | 04_decorator_factory | factory 不应遗漏调用 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0529 | 04_decorator_factory | factory 不应重复调用 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0530 | 04_decorator_factory | factory 参数引用 import | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0531 | 04_decorator_factory | factory 和普通 decorator 标识符对照 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0532 | 04_decorator_factory | factory 所在模块副作用 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0533 | 04_decorator_factory | factory 用于 class decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0534 | 04_decorator_factory | factory 用于 method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0535 | 04_decorator_factory | factory 用于 static property decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0536 | 04_decorator_factory | factory 返回带状态 decorator function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0537 | 04_decorator_factory | factory 返回闭包 decorator function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0538 | 04_decorator_factory | import factory | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0539 | 04_decorator_factory | import returned decorator | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0540 | 04_decorator_factory | imported binding | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0541 | 04_decorator_factory | imported factory 与 local field initializer | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0542 | 04_decorator_factory | local const | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0543 | 04_decorator_factory | lowering 后 import binding | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0544 | 04_decorator_factory | nested call | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0545 | 04_decorator_factory | normal function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0546 | 04_decorator_factory | number literal | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0547 | 04_decorator_factory | returned decorator 捕获 import | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0548 | 04_decorator_factory | string literal | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0549 | 04_decorator_factory | 参数求值副作用 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0550 | 04_decorator_factory | 参数求值顺序 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0551 | 04_decorator_factory | 多参数混合 function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0552 | 04_decorator_factory | 多参数混合 import | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0553 | 04_decorator_factory | 多参数混合 primitive | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0554 | 04_decorator_factory | 返回 class decorator function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0555 | 04_decorator_factory | 返回 class instance | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0556 | 04_decorator_factory | 返回 function 内访问 factory 参数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0557 | 04_decorator_factory | 返回 function 内访问 local const | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0558 | 04_decorator_factory | 返回 function 内访问 module binding | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0559 | 04_decorator_factory | 返回 method decorator function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0560 | 04_decorator_factory | 返回 number | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0561 | 04_decorator_factory | 返回 object | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0562 | 04_decorator_factory | 返回 property decorator function | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0563 | 04_decorator_factory | 返回 string | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0564 | 04_decorator_factory | 返回带状态 function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0565 | 04_decorator_factory | 返回闭包 decorator function | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0566 | 06_decorator_execution_order | class 上三个 decorators | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0567 | 06_decorator_execution_order | class 上两个 decorators | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0568 | 06_decorator_execution_order | factory + identifier 混合 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0569 | 06_decorator_execution_order | factory body side effect | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0570 | 06_decorator_execution_order | factory side effect 与 returned decorator side effect 顺序 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0571 | 06_decorator_execution_order | factory 参数 side effect | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0572 | 06_decorator_execution_order | factory 参数左到右 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0573 | 06_decorator_execution_order | factory 返回 decorator 后调用 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0574 | 06_decorator_execution_order | identifier + factory 混合 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0575 | 06_decorator_execution_order | method 上三个 decorators | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0576 | 06_decorator_execution_order | method 上两个 decorators | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0577 | 06_decorator_execution_order | nested factory call | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0578 | 06_decorator_execution_order | property 上三个 decorators | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0579 | 06_decorator_execution_order | property 上两个 decorators | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0580 | 06_decorator_execution_order | returned decorator side effect | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0581 | 06_decorator_execution_order | 参数为 IIFE | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0582 | 06_decorator_execution_order | 参数为 arrow function 不执行 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0583 | 06_decorator_execution_order | 参数为 nested call | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0584 | 06_decorator_execution_order | 参数为 normal function 不执行 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0585 | 06_decorator_execution_order | 多 decorators 中间注释/空行不影响顺序 | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0586 | 06_decorator_execution_order | 多 decorators 求值顺序 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0587 | 06_decorator_execution_order | 多 decorators 调用顺序 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0588 | 06_decorator_execution_order | 多 factories side effect | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0589 | 06_decorator_execution_order | 多 factory 参数 side effect | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0590 | 06_decorator_execution_order | 多参数 primitive side effect | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0591 | 07_decorator_with_sendable | sendable class 中 constructor 内 arrow function | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0592 | 07_decorator_with_sendable | sendable class 中普通 method 内 arrow function | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0593 | 07_decorator_with_sendable | sendable class 外部普通 function | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0594 | 07_decorator_with_sendable | sendable function 内 arrow function | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0595 | 07_decorator_with_sendable | 普通 class + decorator 参数 arrow function | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0596 | 07_decorator_with_sendable | 普通 class + property decorator | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0597 | 07_decorator_with_sendable | 普通 sendable class 无 decorator | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0598 | 08_decorator_with_class_features | array initializer + decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0599 | 08_decorator_with_class_features | class type initializer + decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0600 | 08_decorator_with_class_features | constructor body type semantics still valid | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0601 | 08_decorator_with_class_features | decorated class constructor multiple args | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0602 | 08_decorator_with_class_features | decorated class constructor no args | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0603 | 08_decorator_with_class_features | decorated class constructor one arg | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0604 | 08_decorator_with_class_features | decorated field no initializer | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0605 | 08_decorator_with_class_features | decorated override parameter match | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0606 | 08_decorator_with_class_features | decorated override return match | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0607 | 08_decorator_with_class_features | decorated public access still ok | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0608 | 08_decorator_with_class_features | number initializer + decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0609 | 08_decorator_with_class_features | static method parameter type + decorator | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0610 | 08_decorator_with_class_features | static method return type + decorator | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0611 | 08_decorator_with_class_features | string initializer + decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0612 | 09_decorator_module_scope | imported factory 单参 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0613 | 09_decorator_module_scope | imported factory 多参 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0614 | 09_decorator_module_scope | imported factory 无参 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0615 | 09_decorator_module_scope | imported factory 返回 decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0616 | 09_decorator_module_scope | imported factory 返回闭包 decorator function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0617 | 09_decorator_module_scope | 参数引用 imported boolean | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0618 | 09_decorator_module_scope | 参数引用 imported class | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0619 | 09_decorator_module_scope | 参数引用 imported const | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0620 | 09_decorator_module_scope | 参数引用 imported function | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0621 | 09_decorator_module_scope | 参数引用 imported number | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0622 | 09_decorator_module_scope | 参数引用 imported string | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0623 | 03_method_decorator | method decorator 是否存在 PR10632-like 风险 | bytecode regression | bytecode expected | PR 10632 reference only; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0624 | 05_decorator_transform | lowered 节点覆盖旧 binder flag | bytecode regression | bytecode expected | bytecode regression; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0625 | 05_decorator_transform | 原始节点保留但不参与错误 codegen | bytecode regression | bytecode expected | bytecode regression; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0626 | 00_decorator_syntax | integration 组合 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0627 | 01_class_decorator | class decorator 与 moduleVar | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0628 | 01_class_decorator | decorated class extends normal base | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0629 | 01_class_decorator | decorated class implements interface | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0630 | 01_class_decorator | decorated class with private member | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0631 | 01_class_decorator | decorated class with protected base member | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0632 | 01_class_decorator | decorated concrete implementation | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0633 | 01_class_decorator | decorated derived class calls super | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0634 | 01_class_decorator | decorated derived class override method | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0635 | 01_class_decorator | decorated exported class | integration | compiler expected | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0636 | 01_class_decorator | decorator lowering 后 import binding | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0637 | 01_class_decorator | decorator 与 class field 类型检查共存 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0638 | 01_class_decorator | decorator 与 class method 类型检查共存 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0639 | 01_class_decorator | decorator 与 constructor 类型检查共存 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0640 | 01_class_decorator | decorator 与 static member 共存 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0641 | 01_class_decorator | export binding after class decorator | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0642 | 01_class_decorator | export decorated class | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0643 | 01_class_decorator | exported class target | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0644 | 01_class_decorator | extends base + decorator | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0645 | 01_class_decorator | factory 与 module scope | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0646 | 01_class_decorator | factory 与多个 class decorators | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0647 | 01_class_decorator | factory 参数为 imported binding | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0648 | 01_class_decorator | implements interface + decorator | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0649 | 01_class_decorator | import class decorator factory | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0650 | 01_class_decorator | import class decorator function | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0651 | 01_class_decorator | import decorator 参数 | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0652 | 01_class_decorator | imported decorator 与 local class body | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0653 | 01_class_decorator | imported factory 返回 class decorator | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0654 | 01_class_decorator | lowering 后 imported binding 作用域 | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0655 | 01_class_decorator | normal class extends decorated base | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0656 | 01_class_decorator | 多 class decorators target 一致 | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0657 | 02_property_decorator | decorator function call lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0658 | 02_property_decorator | export class 不影响 key | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0659 | 02_property_decorator | initializer 不影响 key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0660 | 02_property_decorator | lowering 后 class field 初始化 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0661 | 02_property_decorator | lowering 后 decorator 参数 IIFE 作用域 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0662 | 02_property_decorator | lowering 后 decorator 参数 arrow function 作用域 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0663 | 02_property_decorator | lowering 后 decorator 参数 normal function 作用域 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0664 | 02_property_decorator | lowering 后 decorator 调用顺序 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0665 | 02_property_decorator | lowering 后 imported binding 作用域 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0666 | 02_property_decorator | lowering 后无遗漏 decorator 调用 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0667 | 02_property_decorator | lowering 后无重复 decorator 调用 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0668 | 02_property_decorator | numeric-like key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0669 | 02_property_decorator | property decorator lowering 到 class 外 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0670 | 02_property_decorator | property key lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0671 | 02_property_decorator | string key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0672 | 03_method_decorator | lowering 后 method body 正常 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0673 | 03_method_decorator | method decorator lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0674 | 03_method_decorator | method key lowering | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0675 | 03_method_decorator | numeric-like method key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0676 | 03_method_decorator | string method key | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0677 | 04_decorator_factory | factory call 与 decorator application 分离 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0678 | 04_decorator_factory | factory 内副作用执行次数 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0679 | 04_decorator_factory | factory 参数 IIFE 执行顺序 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0680 | 04_decorator_factory | factory 参数从左到右求值 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0681 | 04_decorator_factory | factory 参数函数表达式不立即执行 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0682 | 04_decorator_factory | factory 求值与 decorator 调用顺序 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0683 | 04_decorator_factory | nested factory call 顺序 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0684 | 04_decorator_factory | returned decorator function 调用次数 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0685 | 04_decorator_factory | 多 factory 求值顺序 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0686 | 04_decorator_factory | 多 property decorators 顺序 | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0687 | 05_decorator_transform | class decorator factory | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0688 | 05_decorator_transform | class decorator lowering | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0689 | 05_decorator_transform | class decorator 与 abstract class | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0690 | 05_decorator_transform | class decorator 与 default export class | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0691 | 05_decorator_transform | class decorator 与 export class | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0692 | 05_decorator_transform | class decorator 与 generic class | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0693 | 05_decorator_transform | class decorator 与 inheritance | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0694 | 05_decorator_transform | class decorator 与 sendable boundary | integration | compiler expected | PR 10632; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0695 | 05_decorator_transform | class decorator 调用位置 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0696 | 05_decorator_transform | class decorator 返回值行为 boundary | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0697 | 05_decorator_transform | factory 与 transform 后作用域 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0698 | 05_decorator_transform | factory 抛异常 boundary | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0699 | 05_decorator_transform | factory 求值顺序 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0700 | 05_decorator_transform | factory 返回 decorator function | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0701 | 05_decorator_transform | factory 返回非函数 boundary | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0702 | 05_decorator_transform | instance method decorator lowering | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0703 | 05_decorator_transform | instance property decorator lowering | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0704 | 05_decorator_transform | method decorator descriptor 或等价结构 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0705 | 05_decorator_transform | method decorator factory | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0706 | 05_decorator_transform | method decorator key | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0707 | 05_decorator_transform | method decorator target | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0708 | 05_decorator_transform | method decorator transform boundary | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0709 | 05_decorator_transform | method decorator 与 async method | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0710 | 05_decorator_transform | method decorator 与 generic method | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0711 | 05_decorator_transform | method decorator 与 override | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0712 | 05_decorator_transform | method decorator 与 super.method | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0713 | 05_decorator_transform | method decorator 参数为函数 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0714 | 05_decorator_transform | property decorator factory | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0715 | 05_decorator_transform | property decorator key 参数 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0716 | 05_decorator_transform | property decorator target 参数 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0717 | 05_decorator_transform | property decorator 与 field initializer | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0718 | 05_decorator_transform | property decorator 与 private field | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0719 | 05_decorator_transform | property decorator 与 protected field | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0720 | 05_decorator_transform | property decorator 与 public field | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0721 | 05_decorator_transform | property decorator 与 readonly field | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0722 | 05_decorator_transform | property decorator 参数为 literal | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0723 | 05_decorator_transform | property decorator 参数为 normal function | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0724 | 05_decorator_transform | property decorator 参数引用 import | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0725 | 05_decorator_transform | static method decorator lowering | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0726 | 05_decorator_transform | transform lowering 扩展矩阵补充 101 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0727 | 05_decorator_transform | transform lowering 扩展矩阵补充 102 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0728 | 05_decorator_transform | transform lowering 扩展矩阵补充 103 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0729 | 05_decorator_transform | transform lowering 扩展矩阵补充 104 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0730 | 05_decorator_transform | transform lowering 扩展矩阵补充 105 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0731 | 05_decorator_transform | transform 后 decorator 调用位于 class 定义之后 | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0732 | 05_decorator_transform | 单参数 factory | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0733 | 05_decorator_transform | 参数为 normal function | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0734 | 05_decorator_transform | 参数为 object/array | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0735 | 05_decorator_transform | 参数为 primitive | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0736 | 05_decorator_transform | 参数引用 import | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0737 | 05_decorator_transform | 多 property decorators | integration | compiler expected | transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0738 | 05_decorator_transform | 多参数 factory | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0739 | 05_decorator_transform | 无参 factory | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0740 | 06_decorator_execution_order | class + property + method decorators 混合 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0741 | 06_decorator_execution_order | class decorator + method decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0742 | 06_decorator_execution_order | class decorator + property decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0743 | 06_decorator_execution_order | class decorator 与 class binding | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0744 | 06_decorator_execution_order | class decorator 与 constructor execution | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0745 | 06_decorator_execution_order | class decorator 与 static field | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0746 | 06_decorator_execution_order | class decorator 与 static method | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0747 | 06_decorator_execution_order | decorator 参数 import binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0748 | 06_decorator_execution_order | factory 与 class decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0749 | 06_decorator_execution_order | factory 与 method decorator | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0750 | 06_decorator_execution_order | factory 与 property decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0751 | 06_decorator_execution_order | import decorator module initialization | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0752 | 06_decorator_execution_order | import factory module initialization | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0753 | 06_decorator_execution_order | imported decorator side effect | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0754 | 06_decorator_execution_order | imported factory side effect | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0755 | 06_decorator_execution_order | imported factory 参数 side effect | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0756 | 06_decorator_execution_order | instance method before static method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0757 | 06_decorator_execution_order | instance property before method | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0758 | 06_decorator_execution_order | instance property before static property | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0759 | 06_decorator_execution_order | local module top-level side effect | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0760 | 06_decorator_execution_order | method before instance property | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0761 | 06_decorator_execution_order | method decorator 与 method body | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0762 | 06_decorator_execution_order | module initialization order with factory | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0763 | 06_decorator_execution_order | module initialization order with multiple decorated classes | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0764 | 06_decorator_execution_order | property decorator + method decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0765 | 06_decorator_execution_order | property decorator 与 field initializer | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0766 | 06_decorator_execution_order | static method before instance method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0767 | 06_decorator_execution_order | static property before instance property | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0768 | 06_decorator_execution_order | 多 decorators 与 export class | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0769 | 06_decorator_execution_order | 多 decorators 与 static method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0770 | 06_decorator_execution_order | 多 decorators 与 static property | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0771 | 06_decorator_execution_order | 多 method decorators 按声明顺序 | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0772 | 06_decorator_execution_order | 多 property decorators 按声明顺序 | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0773 | 07_decorator_with_sendable | decorator factory 从模块 import + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0774 | 07_decorator_with_sendable | decorator factory 参数为 boolean literal | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0775 | 07_decorator_with_sendable | decorator factory 参数为 number literal | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0776 | 07_decorator_with_sendable | decorator factory 参数为 string literal | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0777 | 07_decorator_with_sendable | decorator factory 参数引用 import binding | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0778 | 07_decorator_with_sendable | decorator 从模块 import + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0779 | 07_decorator_with_sendable | decorator 参数引用 moduleVar | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0780 | 07_decorator_with_sendable | decorator 外提后仍能访问 module binding | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0781 | 07_decorator_with_sendable | export sendable class + property decorator | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0782 | 07_decorator_with_sendable | instance property decorator + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0783 | 07_decorator_with_sendable | private property decorator + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0784 | 07_decorator_with_sendable | property decorator + array field + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0785 | 07_decorator_with_sendable | property decorator + class type field + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0786 | 07_decorator_with_sendable | property decorator + number field + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0787 | 07_decorator_with_sendable | property decorator + string field + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0788 | 07_decorator_with_sendable | protected property decorator + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0789 | 07_decorator_with_sendable | public property decorator + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0790 | 07_decorator_with_sendable | readonly property decorator + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0791 | 07_decorator_with_sendable | 单参数 decorator factory + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0792 | 07_decorator_with_sendable | 多参数 decorator factory + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0793 | 07_decorator_with_sendable | 无参 decorator factory + sendable class | integration | compiler expected | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0794 | 08_decorator_with_class_features | concrete subclass implements abstract method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0795 | 08_decorator_with_class_features | constructor + field initializer + decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0796 | 08_decorator_with_class_features | constructor + inheritance + decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0797 | 08_decorator_with_class_features | decorated base class | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0798 | 08_decorator_with_class_features | decorated class extends normal base | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0799 | 08_decorator_with_class_features | decorated class implements interface | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0800 | 08_decorator_with_class_features | decorated concrete method implements abstract method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0801 | 08_decorator_with_class_features | decorated derived class | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0802 | 08_decorator_with_class_features | decorated derived class calls super | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0803 | 08_decorator_with_class_features | decorated method calls super.method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0804 | 08_decorator_with_class_features | decorated method implements interface method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0805 | 08_decorator_with_class_features | decorated method in base class | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0806 | 08_decorator_with_class_features | decorated method in derived class | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0807 | 08_decorator_with_class_features | decorated override method calls super.method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0808 | 08_decorator_with_class_features | decorated property implements interface property | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0809 | 08_decorator_with_class_features | decorated property in base class | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0810 | 08_decorator_with_class_features | decorated property in derived class | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0811 | 08_decorator_with_class_features | decorated protected member inheritance | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0812 | 08_decorator_with_class_features | exported decorated class implements interface | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0813 | 08_decorator_with_class_features | factory decorator + override | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0814 | 08_decorator_with_class_features | inheritance + protected decorated member | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0815 | 08_decorator_with_class_features | method decorator does not break super dispatch | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0816 | 08_decorator_with_class_features | multiple decorators + override | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0817 | 08_decorator_with_class_features | multiple decorators with inheritance | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0818 | 08_decorator_with_class_features | normal class extends decorated base | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0819 | 08_decorator_with_class_features | override + super.method | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0820 | 08_decorator_with_class_features | override method + decorator | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0821 | 08_decorator_with_class_features | property decorator does not break inheritance | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0822 | 08_decorator_with_class_features | public method + decorator | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0823 | 08_decorator_with_class_features | public property + decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0824 | 08_decorator_with_class_features | readonly property + decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0825 | 08_decorator_with_class_features | readonly property with initializer | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0826 | 08_decorator_with_class_features | readonly static property + decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0827 | 08_decorator_with_class_features | static + class decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0828 | 08_decorator_with_class_features | static + export class | integration | compiler expected | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0829 | 08_decorator_with_class_features | static member access after decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0830 | 08_decorator_with_class_features | static method with factory decorator | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0831 | 08_decorator_with_class_features | static property with factory decorator | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0832 | 09_decorator_module_scope | closure 与 export decorated class | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0833 | 09_decorator_module_scope | closure 与 multiple decorators | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0834 | 09_decorator_module_scope | decorated class constructor accessible | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0835 | 09_decorator_module_scope | decorated class implements after import | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0836 | 09_decorator_module_scope | decorated class imported by another module | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0837 | 09_decorator_module_scope | decorated class inheritance after import | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0838 | 09_decorator_module_scope | decorated class instance member accessible | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0839 | 09_decorator_module_scope | decorated class static member accessible | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0840 | 09_decorator_module_scope | decorated module top-level side effect | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0841 | 09_decorator_module_scope | decorator application side effect | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0842 | 09_decorator_module_scope | decorator module side effect before use | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0843 | 09_decorator_module_scope | export class + class decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0844 | 09_decorator_module_scope | export class + method decorator | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0845 | 09_decorator_module_scope | export class + property decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0846 | 09_decorator_module_scope | export decorated class module order | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0847 | 09_decorator_module_scope | factory call side effect | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0848 | 09_decorator_module_scope | factory module side effect before use | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0849 | 09_decorator_module_scope | factory 参数 IIFE 捕获 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0850 | 09_decorator_module_scope | factory 参数函数捕获 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0851 | 09_decorator_module_scope | factory 返回 decorator 访问 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0852 | 09_decorator_module_scope | factory 返回 decorator 访问 local module binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0853 | 09_decorator_module_scope | import class decorator factory | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0854 | 09_decorator_module_scope | import method decorator factory | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0855 | 09_decorator_module_scope | import property decorator factory | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0856 | 09_decorator_module_scope | imported binding module side effect before decorator application | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0857 | 09_decorator_module_scope | imported decorator from nested path | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0858 | 09_decorator_module_scope | imported decorator from sibling module | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0859 | 09_decorator_module_scope | imported decorator side effect | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0860 | 09_decorator_module_scope | imported decorator target/key/descriptor | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0861 | 09_decorator_module_scope | imported decorator 不遗漏调用 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0862 | 09_decorator_module_scope | imported decorator 不重复调用 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0863 | 09_decorator_module_scope | imported decorator 与 export class | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0864 | 09_decorator_module_scope | imported decorator 与 multiple decorated classes | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0865 | 09_decorator_module_scope | imported factory side effect | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0866 | 09_decorator_module_scope | imported factory 不遗漏调用 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0867 | 09_decorator_module_scope | imported factory 不重复调用 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0868 | 09_decorator_module_scope | imported factory 与 class decorator | integration | compiler expected | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0869 | 09_decorator_module_scope | imported factory 与 method decorator | integration | compiler expected | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0870 | 09_decorator_module_scope | imported factory 与 property decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0871 | 09_decorator_module_scope | imported factory 捕获定义模块变量 | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0872 | 09_decorator_module_scope | imported factory 返回 decorator 捕获定义模块变量 | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0873 | 09_decorator_module_scope | local factory 捕获 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0874 | 09_decorator_module_scope | local factory 返回 decorator 捕获 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0875 | 09_decorator_module_scope | multiple decorated classes order | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0876 | 09_decorator_module_scope | multiple decorated exports | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0877 | 09_decorator_module_scope | multiple modules initialization order | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0878 | 09_decorator_module_scope | renamed import decorator | integration | compiler expected | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0879 | 09_decorator_module_scope | renamed import factory | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0880 | 09_decorator_module_scope | returned decorator side effect | integration | compiler expected | Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0881 | 09_decorator_module_scope | 参数为 IIFE 读取 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0882 | 09_decorator_module_scope | 参数为 arrow function 捕获 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0883 | 09_decorator_module_scope | 参数为 imported factory 返回值 | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0884 | 09_decorator_module_scope | 参数为 nested call 读取 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0885 | 09_decorator_module_scope | 参数为 normal function 捕获 imported binding | integration | compiler expected | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0886 | 09_decorator_module_scope | 多模块同名 binding 不混淆 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0887 | 07_decorator_with_sendable | circular import + decorator + sendable boundary | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0888 | 07_decorator_with_sendable | class decorator + property decorator + sendable boundary | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0889 | 07_decorator_with_sendable | decorator factory 返回非函数 boundary | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0890 | 07_decorator_with_sendable | property decorator + method decorator + sendable boundary | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0891 | 07_decorator_with_sendable | static + instance decorators + sendable class | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0892 | 07_decorator_with_sendable | 单字段多个 decorators + sendable class | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0893 | 07_decorator_with_sendable | 多 decorator 执行顺序 pending | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0894 | 07_decorator_with_sendable | 多字段各自 decorators + sendable class | boundary | manual pending | PR 10632; Pending target support; Not from test262 |
| DECORATOR-TOTAL-0895 | 00_decorator_syntax | PR 10632 使用 decorator factory call syntax | regression | XTS smoke | PR 10632; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0896 | 00_decorator_syntax | PR 10632 使用 factory 参数 IIFE syntax | regression | XTS smoke | PR 10632; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0897 | 00_decorator_syntax | PR 10632 使用 module import 参数 syntax | regression | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0898 | 00_decorator_syntax | PR 10632 使用 property decorator syntax | regression | XTS smoke | PR 10632; Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0899 | 00_decorator_syntax | PR 10632 具体 sendable/transform 风险转交其他目录 | regression | XTS smoke | PR 10632; Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-TOTAL-0900 | 01_class_decorator | PR 10632 不是 class decorator bug | regression | XTS smoke | PR 10632 reference only; Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-TOTAL-0901 | 01_class_decorator | class decorator transform 与 bytecode expected 需要后续确认 | regression | XTS smoke | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0902 | 01_class_decorator | class decorator 是否存在 PR10632-like 风险 | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0903 | 01_class_decorator | class decorator 是否存在类似 binder context pollution | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0904 | 01_class_decorator | class decorator 是否存在类似 transform AST state pollution | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0905 | 01_class_decorator | sendable-specific 扩展转交 07_decorator_with_sendable | regression | XTS smoke | Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-TOTAL-0906 | 02_property_decorator | property decorator + IIFE 参数 | regression | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0907 | 02_property_decorator | property decorator + arrow function 参数 | regression | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0908 | 02_property_decorator | property decorator + module import 参数 | regression | XTS smoke | PR 10632; Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0909 | 02_property_decorator | 具体 sendable 变体转交 07_decorator_with_sendable | regression | XTS smoke | Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-TOTAL-0910 | 03_method_decorator | PR 10632 不是 method decorator bug | regression | XTS smoke | PR 10632 reference only; Related: 07_decorator_with_sendable; Not from test262 |
| DECORATOR-TOTAL-0911 | 03_method_decorator | method decorator transform 与 bytecode expected 需要后续确认 | regression | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0912 | 03_method_decorator | method decorator 是否存在类似 binder context pollution | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0913 | 03_method_decorator | method decorator 是否存在类似 transform AST state pollution | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0914 | 05_decorator_transform | property decorator + IIFE | regression | XTS smoke | AST state pollution; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0915 | 05_decorator_transform | property decorator + imported binding | regression | XTS smoke | AST state pollution; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0916 | 05_decorator_transform | property decorator + normal function | regression | XTS smoke | AST state pollution; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0917 | 05_decorator_transform | transform 后节点重设上下文 | regression | XTS smoke | AST state pollution; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0918 | 05_decorator_transform | 原始 decorator 节点与 lowered 节点共享指针 | regression | XTS smoke | AST state pollution; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0919 | 05_decorator_transform | 多 decorator shared state 不互相污染 | regression | XTS smoke | AST state pollution; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0920 | 06_decorator_execution_order | PR 10632 中 factory 参数 IIFE 需保持求值顺序 | regression | XTS smoke | PR 10632 reference only; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0921 | 06_decorator_execution_order | PR 10632 中 module import 参数需保持作用域和顺序 | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0922 | 06_decorator_execution_order | PR 10632 中 property decorator 被 lowering | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0923 | 06_decorator_execution_order | PR 10632 核心归入 transform/sendable/codegen | regression | XTS smoke | PR 10632 reference only; bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0924 | 06_decorator_execution_order | PR10632-like lowering reference | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0925 | 06_decorator_execution_order | moduleVar order reference | regression | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0926 | 08_decorator_with_class_features | PR 10632 涉及 field initializer boundary | regression | XTS smoke | PR 10632 reference only; Pending target support; Related: 06_decorator_execution_order; Not from test262 |
| DECORATOR-TOTAL-0927 | 08_decorator_with_class_features | PR 10632 涉及 property decorator + field | regression | XTS smoke | PR 10632 reference only; Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0928 | 08_decorator_with_class_features | PR 10632 涉及 transform/lowering | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0929 | 08_decorator_with_class_features | PR10632 field/property reference | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0930 | 09_decorator_module_scope | PR 10632 moduleVar reference | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0931 | 09_decorator_module_scope | PR 10632 transform 后 class 外 decorator 调用仍需访问 imported binding | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0932 | 09_decorator_module_scope | PR 10632 中 factory 参数函数捕获 imported binding | regression | XTS smoke | PR 10632 reference only; Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0933 | 09_decorator_module_scope | PR 10632 使用 imported moduleVar | regression | XTS smoke | PR 10632 reference only; Related: 05_decorator_transform; Not from test262 |
