# Coverage Matrix

| 测试点 | Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| class 前使用普通 decorator | Pending | pass | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| property 前使用普通 decorator | Pending | pass | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| method 前使用普通 decorator | Pending | pass | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| decorator factory 调用表达式 | Pending | pass | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| decorator 参数为 literal | Pending | pass | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| decorator 参数为 arrow function | Pending | pass | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| decorator 参数为普通 function | Pending | pass | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| decorator 语法位置错误 | Pending | fail_compile | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| decorator 名称未定义 | Pending | fail_compile | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| decorator 表达式类型错误 | Pending | fail_compile | 否 | 00_decorator_syntax/xts/ | P1 | Pending target support; Not from test262 |
| class decorator 基础 | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| class decorator factory | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| 多个 class decorators | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| class decorator 与 export | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| class decorator 与 default export | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| class decorator 与 inheritance | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| class decorator 与 generic class | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| class decorator 与 abstract class | Mixed | pass | 否 | 01_class_decorator/xts/ | P1 | Not from test262 |
| class decorator 与 sendable class boundary | ArkTS-specific | boundary | 否 | 01_class_decorator/xts/ | P0 | Not from test262 |
| class decorator transform 是否正确 | ArkTS-specific | bytecode regression | 否 | 01_class_decorator/xts/ | P0 | bytecode regression; Not from test262 |
| property decorator 基础 | Mixed | pass | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator factory | Mixed | pass | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator 作用于 instance field | Mixed | pass | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator 作用于 static field | Mixed | pass | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator 参数包含 arrow function | ArkTS-specific | pass | 否 | 02_property_decorator/xts/ | P0 | PR 10632; Not from test262 |
| property decorator 参数包含普通 function | Mixed | pass | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator 参数引用 module import | Mixed | pass | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator 与 field initializer | Mixed | integration | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator 与 readonly field | Mixed | integration | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator 与 private/protected/public field | Mixed | integration | 否 | 02_property_decorator/xts/ | P1 | Not from test262 |
| property decorator transform 后调用目标是否正确 | ArkTS-specific | bytecode regression | 否 | 02_property_decorator/xts/ | P0 | PR 10632; bytecode regression; Not from test262 |
| property decorator 与 sendable class | ArkTS-specific | integration | 否 | 02_property_decorator/xts/ | P0 | PR 10632; Not from test262 |
| method decorator 基础 | Mixed | pass | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator factory | Mixed | pass | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator 作用于 instance method | Mixed | pass | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator 作用于 static method | Mixed | pass | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator 与 method 参数 | Mixed | integration | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator 与 return type | Mixed | integration | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator 与 override | Mixed | integration | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator 与 super.method | Mixed | integration | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator 参数中函数表达式 | Mixed | pass | 否 | 03_method_decorator/xts/ | P1 | Not from test262 |
| method decorator transform/lowering | ArkTS-specific | bytecode regression | 否 | 03_method_decorator/xts/ | P1 | bytecode regression; Not from test262 |
| 无参 decorator factory | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| 单参数 decorator factory | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| 多参数 decorator factory | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| factory 参数为 string/number/boolean | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| factory 参数为 arrow function | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| factory 参数为普通 function | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| factory 参数为 imported variable | Pending | integration | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| factory 返回 decorator function | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| factory 返回非函数报错或 runtime boundary | Pending | boundary | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| factory 调用顺序 | Pending | pass | 否 | 04_decorator_factory/xts/ | P1 | Pending runtime semantics; Not from test262 |
| property decorator 被外提到 class 外部 | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| method decorator lowering | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| class decorator lowering | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| decorator 调用顺序 | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| decorator target 参数 | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| decorator property key 参数 | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| decorator 与 class prototype | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| decorator 与 static field target | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| decorator 表达式中的函数作用域 | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| decorator transform 不应污染原 AST 节点状态 | ArkTS-specific | bytecode regression | 否 | 05_decorator_transform/xts/ | P0 | bytecode regression; Not from test262 |
| 单 decorator 执行 | Mixed | pass | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| 多 decorator 求值顺序 | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| 多 decorator 调用顺序 | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| class + property decorator 组合顺序 | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| property + method decorator 组合顺序 | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| decorator factory evaluation order | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| decorator return function invocation order | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| static member decorator order | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| inherited class decorator order | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| module import 后 decorator execution order | Mixed | integration | 否 | 06_decorator_execution_order/xts/ | P1 | Execution order pending; Not from test262 |
| sendable class 中 property decorator | ArkTS-specific | integration | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; Not from test262 |
| property decorator 参数为 arrow function | ArkTS-specific | bytecode regression | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; bytecode regression; Not from test262 |
| property decorator 参数为 arrow function 引用 module import | ArkTS-specific | bytecode regression | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; bytecode regression; Not from test262 |
| decorator transform 后函数不应被标记 inSendable | ArkTS-specific | bytecode regression | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; bytecode regression; Not from test262 |
| decorator 相关字节码不应生成 sendable function 字节码 | ArkTS-specific | bytecode regression | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; bytecode regression; Not from test262 |
| sendable class 本身仍应生成 sendable class 字节码 | ArkTS-specific | bytecode regression | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; bytecode regression; Not from test262 |
| 非 sendable class property decorator 对照 | ArkTS-specific | pass | 否 | 07_decorator_with_sendable/xts/ | P1 | PR 10632; Not from test262 |
| sendable class 中普通方法内部函数仍应保持 sendable 语义 | ArkTS-specific | integration | 否 | 07_decorator_with_sendable/xts/ | P1 | Not from test262; sendable control |
| 多 property decorators 不应互相污染 inSendable | ArkTS-specific | regression | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; Not from test262 |
| decorator factory 返回函数不应错误标记为 inSendable | ArkTS-specific | bytecode regression | 否 | 07_decorator_with_sendable/xts/ | P0 | PR 10632; bytecode regression; Not from test262 |
| decorator + field | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + method | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + static | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + readonly | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + visibility | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + inheritance | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + abstract | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + generic | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + interface implements | Mixed | integration | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator + this/super boundary | Pending | boundary | 否 | 08_decorator_with_class_features/xts/ | P1 | Not from test262 |
| decorator 从其他模块 import | Mixed | integration | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
| decorator factory 从其他模块 import | Mixed | integration | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
| decorator 参数引用 import 变量 | Mixed | integration | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
| decorator 应用在 export class | Mixed | integration | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
| decorator 应用在 default export class | Mixed | integration | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
| re-export decorator | Mixed | integration | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
| circular import boundary | Pending | boundary | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
| decorator 与 module initialization order | Mixed | integration | 否 | 09_decorator_module_scope/xts/ | P1 | Not from test262; Module scope |
