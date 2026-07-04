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
| 06_decorator_execution_order | execution order | P1/P2 | multiple/factory order smoke | 是，少量 |
| 07_decorator_with_sendable | sendable-specific regression | P0 | PR 10632 主归属 | 是，少量 |
| 08_decorator_with_class_features | class feature integration | P1/P2 | static/readonly/override 等组合 | 是，少量 |
| 09_decorator_module_scope | module scope/import/export | P1/P2 | multi-file binding/lowering | 是，少量 |

## P0 Index

| Global ID | 来源目录 | 测试点 | 用例类型 | 建议测试方式 | 备注 |
|---|---|---|---|---|---|
| DECORATOR-TOTAL-0033 | 00_decorator_syntax | class 前 @decorator | pass | XTS smoke | Related: 01_class_decorator; Not from test262 |
| DECORATOR-TOTAL-0037 | 00_decorator_syntax | property 前 @decorator | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0036 | 00_decorator_syntax | method 前 @decorator | pass | XTS smoke | Related: 03_method_decorator; Not from test262 |
| DECORATOR-TOTAL-0032 | 00_decorator_syntax | @decorator() call expression | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0012 | 00_decorator_syntax | parser error: bare @ | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0013 | 00_decorator_syntax | parser error: decorator without declaration | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0006 | 00_decorator_syntax | local variable | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0016 | 00_decorator_syntax | type alias | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0048 | 02_property_decorator | instance field property decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0058 | 02_property_decorator | static field property decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0209 | 02_property_decorator | instance property target | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0049 | 02_property_decorator | property decorator 为 factory call | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0052 | 02_property_decorator | property decorator 参数为 literal | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0053 | 02_property_decorator | property decorator 参数为函数 | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0022 | 02_property_decorator | field type mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0021 | 02_property_decorator | field initializer mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0066 | 04_decorator_factory | 无参 factory | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0064 | 04_decorator_factory | 单参 factory | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0065 | 04_decorator_factory | 多参 factory | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0028 | 04_decorator_factory | factory 非函数 | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0059 | 03_method_decorator | instance method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0060 | 03_method_decorator | static method decorator | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0222 | 03_method_decorator | descriptor 是否存在 | integration | compiler expected | Not from test262 |
| DECORATOR-TOTAL-0025 | 03_method_decorator | parameter type mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0026 | 03_method_decorator | return type mismatch + decorator | fail_compile | parser/checker | Not from test262 |
| DECORATOR-TOTAL-0041 | 01_class_decorator | class decorator | pass | XTS smoke | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0044 | 01_class_decorator | class decorator 为 factory call | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0042 | 01_class_decorator | class decorator target | pass | XTS smoke | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0110 | 05_decorator_transform | property decorator call 生成正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0104 | 05_decorator_transform | factory 调用正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0106 | 05_decorator_transform | instance property target 正确 | bytecode regression | bytecode expected | bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0102 | 05_decorator_transform | decorator function 调用正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0101 | 05_decorator_transform | class definition 与 decorator call 顺序正确 | bytecode regression | bytecode expected | bytecode regression; transform/lowering; Not from test262 |
| DECORATOR-TOTAL-0114 | 05_decorator_transform | shared pointer 不污染 checker/type 状态 | bytecode regression | bytecode expected | PR 10632; bytecode regression; AST state pollution; Not from test262 |
| DECORATOR-TOTAL-0146 | 07_decorator_with_sendable | PR 10632 原始 bytecode expected | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0147 | 07_decorator_with_sendable | arrow function 参数不生成 sendable function 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0167 | 07_decorator_with_sendable | sendable class 本体仍生成 sendable class 字节码 | bytecode regression | bytecode expected | PR 10632; bytecode regression; Not from test262 |
| DECORATOR-TOTAL-0194 | 09_decorator_module_scope | lowering 后 decorator 参数 imported binding 正确 | bytecode regression | bytecode expected | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0246 | 08_decorator_with_class_features | static property + property decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |

## P1 Index

| Global ID | 来源目录 | 测试点 | 用例类型 | 建议测试方式 | 备注 |
|---|---|---|---|---|---|
| DECORATOR-TOTAL-0521 | 04_decorator_factory | IIFE | pass | XTS smoke | Not from test262 |
| DECORATOR-TOTAL-0540 | 04_decorator_factory | imported binding | pass | XTS smoke | Related: 09_decorator_module_scope; Not from test262 |
| DECORATOR-TOTAL-0635 | 01_class_decorator | decorated exported class | integration | compiler expected | Related: 00_decorator_syntax; Not from test262 |
| DECORATOR-TOTAL-0391 | 01_class_decorator | class decorator 返回原 class | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0595 | 07_decorator_with_sendable | 普通 class + decorator 参数 arrow function | pass | XTS smoke | PR 10632; Not from test262 |
| DECORATOR-TOTAL-0579 | 06_decorator_execution_order | property 上两个 decorators | pass | XTS smoke | Related: 02_property_decorator; Not from test262 |
| DECORATOR-TOTAL-0570 | 06_decorator_execution_order | factory side effect 与 returned decorator side effect 顺序 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0740 | 06_decorator_execution_order | class + property + method decorators 混合 | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0858 | 09_decorator_module_scope | imported decorator from sibling module | integration | compiler expected | Related: 05_decorator_transform; Not from test262 |
| DECORATOR-TOTAL-0614 | 09_decorator_module_scope | imported factory 无参 | pass | XTS smoke | Related: 04_decorator_factory; Not from test262 |
| DECORATOR-TOTAL-0824 | 08_decorator_with_class_features | readonly property + decorator | integration | compiler expected | Related: 02_property_decorator; Not from test262 |
