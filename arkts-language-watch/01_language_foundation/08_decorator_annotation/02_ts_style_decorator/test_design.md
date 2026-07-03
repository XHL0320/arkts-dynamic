# Test Design

## Positive Cases

- decorator syntax for supported targets；
- class/property/method decorator；
- decorator factory；
- decorator execution order smoke。

## Compile Negative Cases

- decorator position error；
- undefined decorator；
- decorator expression type error；
- unsupported target。

## Runtime / Bytecode Cases

- decorator call order；
- transform/lowering；
- bytecode expected；
- binder sendable state。

## Boundary Cases

- support range pending；
- module/circular import；
- sendable target combinations。

## Integration Cases

- decorator + class field/method/static/readonly/visibility/inheritance/generic/module/sendable。

## Regression Cases

- PR 10632 sendable property decorator inSendable pollution。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 建议目录 | 备注 |
|---|---|---|---|---|---|
| 001 | class 前使用普通 decorator | pass | P1 | 00_decorator_syntax | Pending target support |
| 002 | property 前使用普通 decorator | pass | P1 | 00_decorator_syntax | Pending target support |
| 003 | method 前使用普通 decorator | pass | P1 | 00_decorator_syntax | Pending target support |
| 004 | decorator factory 调用表达式 | pass | P1 | 00_decorator_syntax | Pending target support |
| 005 | decorator 参数为 literal | pass | P1 | 00_decorator_syntax | Pending target support |
| 006 | decorator 参数为 arrow function | pass | P1 | 00_decorator_syntax | Pending target support |
| 007 | decorator 参数为普通 function | pass | P1 | 00_decorator_syntax | Pending target support |
| 008 | decorator 语法位置错误 | fail_compile | P1 | 00_decorator_syntax | Pending target support |
| 009 | decorator 名称未定义 | fail_compile | P1 | 00_decorator_syntax | Pending target support |
| 010 | decorator 表达式类型错误 | fail_compile | P1 | 00_decorator_syntax | Pending target support |
| 011 | class decorator 基础 | pass | P1 | 01_class_decorator | Not from test262 |
| 012 | class decorator factory | pass | P1 | 01_class_decorator | Not from test262 |
| 013 | 多个 class decorators | pass | P1 | 01_class_decorator | Not from test262 |
| 014 | class decorator 与 export | pass | P1 | 01_class_decorator | Not from test262 |
| 015 | class decorator 与 default export | pass | P1 | 01_class_decorator | Not from test262 |
| 016 | class decorator 与 inheritance | pass | P1 | 01_class_decorator | Not from test262 |
| 017 | class decorator 与 generic class | pass | P1 | 01_class_decorator | Not from test262 |
| 018 | class decorator 与 abstract class | pass | P1 | 01_class_decorator | Not from test262 |
| 019 | class decorator 与 sendable class boundary | boundary | P0 | 01_class_decorator | Not from test262 |
| 020 | class decorator transform 是否正确 | bytecode regression | P0 | 01_class_decorator | Not from test262 |
| 021 | property decorator 基础 | pass | P1 | 02_property_decorator | Not from test262 |
| 022 | property decorator factory | pass | P1 | 02_property_decorator | Not from test262 |
| 023 | property decorator 作用于 instance field | pass | P1 | 02_property_decorator | Not from test262 |
| 024 | property decorator 作用于 static field | pass | P1 | 02_property_decorator | Not from test262 |
| 025 | property decorator 参数包含 arrow function | pass | P0 | 02_property_decorator | PR 10632 adjacent |
| 026 | property decorator 参数包含普通 function | pass | P1 | 02_property_decorator | Not from test262 |
| 027 | property decorator 参数引用 module import | pass | P1 | 02_property_decorator | Not from test262 |
| 028 | property decorator 与 field initializer | integration | P1 | 02_property_decorator | Not from test262 |
| 029 | property decorator 与 readonly field | integration | P1 | 02_property_decorator | Not from test262 |
| 030 | property decorator 与 private/protected/public field | integration | P1 | 02_property_decorator | Not from test262 |
| 031 | property decorator transform 后调用目标是否正确 | bytecode regression | P0 | 02_property_decorator | PR 10632 adjacent |
| 032 | property decorator 与 sendable class | integration | P0 | 02_property_decorator | PR 10632 adjacent |
| 033 | method decorator 基础 | pass | P1 | 03_method_decorator | Not from test262 |
| 034 | method decorator factory | pass | P1 | 03_method_decorator | Not from test262 |
| 035 | method decorator 作用于 instance method | pass | P1 | 03_method_decorator | Not from test262 |
| 036 | method decorator 作用于 static method | pass | P1 | 03_method_decorator | Not from test262 |
| 037 | method decorator 与 method 参数 | integration | P1 | 03_method_decorator | Not from test262 |
| 038 | method decorator 与 return type | integration | P1 | 03_method_decorator | Not from test262 |
| 039 | method decorator 与 override | integration | P1 | 03_method_decorator | Not from test262 |
| 040 | method decorator 与 super.method | integration | P1 | 03_method_decorator | Not from test262 |
| 041 | method decorator 参数中函数表达式 | pass | P1 | 03_method_decorator | Not from test262 |
| 042 | method decorator transform/lowering | bytecode regression | P1 | 03_method_decorator | Not from test262 |
| 043 | 无参 decorator factory | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 044 | 单参数 decorator factory | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 045 | 多参数 decorator factory | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 046 | factory 参数为 string/number/boolean | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 047 | factory 参数为 arrow function | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 048 | factory 参数为普通 function | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 049 | factory 参数为 imported variable | integration | P1 | 04_decorator_factory | Pending runtime semantics |
| 050 | factory 返回 decorator function | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 051 | factory 返回非函数报错或 runtime boundary | boundary | P1 | 04_decorator_factory | Pending runtime semantics |
| 052 | factory 调用顺序 | pass | P1 | 04_decorator_factory | Pending runtime semantics |
| 053 | property decorator 被外提到 class 外部 | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 054 | method decorator lowering | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 055 | class decorator lowering | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 056 | decorator 调用顺序 | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 057 | decorator target 参数 | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 058 | decorator property key 参数 | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 059 | decorator 与 class prototype | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 060 | decorator 与 static field target | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 061 | decorator 表达式中的函数作用域 | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 062 | decorator transform 不应污染原 AST 节点状态 | bytecode regression | P0 | 05_decorator_transform | bytecode regression / Not from test262 |
| 063 | 单 decorator 执行 | pass | P1 | 06_decorator_execution_order | Execution order pending |
| 064 | 多 decorator 求值顺序 | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 065 | 多 decorator 调用顺序 | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 066 | class + property decorator 组合顺序 | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 067 | property + method decorator 组合顺序 | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 068 | decorator factory evaluation order | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 069 | decorator return function invocation order | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 070 | static member decorator order | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 071 | inherited class decorator order | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 072 | module import 后 decorator execution order | integration | P1 | 06_decorator_execution_order | Execution order pending |
| 073 | sendable class 中 property decorator | integration | P0 | 07_decorator_with_sendable | PR 10632 |
| 074 | property decorator 参数为 arrow function | bytecode regression | P0 | 07_decorator_with_sendable | PR 10632 |
| 075 | property decorator 参数为 arrow function 引用 module import | bytecode regression | P0 | 07_decorator_with_sendable | PR 10632 |
| 076 | decorator transform 后函数不应被标记 inSendable | bytecode regression | P0 | 07_decorator_with_sendable | PR 10632 |
| 077 | decorator 相关字节码不应生成 sendable function 字节码 | bytecode regression | P0 | 07_decorator_with_sendable | PR 10632 |
| 078 | sendable class 本身仍应生成 sendable class 字节码 | bytecode regression | P0 | 07_decorator_with_sendable | PR 10632 |
| 079 | 非 sendable class property decorator 对照 | pass | P1 | 07_decorator_with_sendable | PR 10632 contrast |
| 080 | sendable class 中普通方法内部函数仍应保持 sendable 语义 | integration | P1 | 07_decorator_with_sendable | sendable control |
| 081 | 多 property decorators 不应互相污染 inSendable | regression | P0 | 07_decorator_with_sendable | PR 10632 |
| 082 | decorator factory 返回函数不应错误标记为 inSendable | bytecode regression | P0 | 07_decorator_with_sendable | PR 10632 |
| 083 | decorator + field | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 084 | decorator + method | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 085 | decorator + static | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 086 | decorator + readonly | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 087 | decorator + visibility | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 088 | decorator + inheritance | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 089 | decorator + abstract | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 090 | decorator + generic | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 091 | decorator + interface implements | integration | P1 | 08_decorator_with_class_features | Not from test262 |
| 092 | decorator + this/super boundary | boundary | P1 | 08_decorator_with_class_features | Not from test262 |
| 093 | decorator 从其他模块 import | integration | P1 | 09_decorator_module_scope | Module scope |
| 094 | decorator factory 从其他模块 import | integration | P1 | 09_decorator_module_scope | Module scope |
| 095 | decorator 参数引用 import 变量 | integration | P1 | 09_decorator_module_scope | Module scope |
| 096 | decorator 应用在 export class | integration | P1 | 09_decorator_module_scope | Module scope |
| 097 | decorator 应用在 default export class | integration | P1 | 09_decorator_module_scope | Module scope |
| 098 | re-export decorator | integration | P1 | 09_decorator_module_scope | Module scope |
| 099 | circular import boundary | boundary | P1 | 09_decorator_module_scope | Module scope |
| 100 | decorator 与 module initialization order | integration | P1 | 09_decorator_module_scope | Module scope |
| 101 | property decorator 调用外提后仍能访问模块变量 | integration | P1 | 09_decorator_module_scope | Module scope |
| 102 | sendable class decorator 参数访问 moduleVar regression | regression | P0 | 09_decorator_module_scope | Module scope |
| 103 | PR10632 sendable class 中 property decorator 参数里的 arrow function 不应被标记为 inSendable | bytecode regression | P0 | 99_mapping_and_regression | PR 10632 |
| 104 | PR10632 property decorator transform 后 class 外部 decorator 调用不应生成 sendable function 字节码 | bytecode regression | P0 | 99_mapping_and_regression | PR 10632 |
| 105 | PR10632 sendable class 本体仍应生成 sendable class 字节码 | bytecode regression | P0 | 99_mapping_and_regression | PR 10632 |
| 106 | PR10632 非 sendable class property decorator 对照 | regression | P0 | 99_mapping_and_regression | PR 10632 |
| 107 | PR10632 sendable class 普通方法内部 arrow function 仍应保持 sendable 语义 | regression | P0 | 99_mapping_and_regression | PR 10632 |
| 108 | PR10632 多个 property decorators 不应互相污染 inSendable 标记 | bytecode regression | P0 | 99_mapping_and_regression | PR 10632 |
