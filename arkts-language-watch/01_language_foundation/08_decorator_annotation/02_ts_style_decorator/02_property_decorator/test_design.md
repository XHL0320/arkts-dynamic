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

<!-- PROPERTY_DEEPENING_2026_07_03 -->

# Test Design

## Goal

围绕 TS style property decorator 建立系统性测试设计，主线为普通 class 下的 property decorator 能力。

## Test Matrix

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-PROPERTY-TD-0001 | instance field property decorator | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0002 | static field property decorator | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0003 | property decorator 为普通标识符 | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0004 | property decorator 为 factory call | property core | pass | P0 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0005 | property decorator 无参数 | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0006 | property decorator 单参数 | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0007 | property decorator 多参数 | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0008 | property decorator 参数为 literal | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0009 | property decorator 参数为表达式 | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0010 | property decorator 参数为函数 | property core | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0011 | decorator 名称未定义 | property core | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0012 | decorator 表达式类型错误 | property core | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0013 | decorator 返回值非法 boundary | property core | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0014 | decorator 与字段类型共存 | property core | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0015 | decorator 与字段初始化共存 | property core | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0016 | decorator 与无初始化字段共存 | property core | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0017 | decorator 不改变字段可访问性 | property core | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0018 | decorator 不绕过 checker | property core | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0019 | number field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0020 | string field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0021 | boolean field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0022 | bigint field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0023 | object field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0024 | class type field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0025 | interface type field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0026 | array field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0027 | enum field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0028 | nullable field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0029 | generic T field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0030 | readonly field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0031 | static field | field type | pass | P0 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0032 | static readonly field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0033 | public field | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0034 | private field boundary | field type | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0035 | protected field boundary | field type | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0036 | field type mismatch + decorator | field type | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0037 | field initializer mismatch + decorator | field type | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0038 | decorator 不影响字段类型推断或检查 | field type | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0039 | instance property target | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0040 | static property target | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0041 | string key | target/key | integration | P1 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0042 | numeric-like key | target/key | integration | P1 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0043 | computed key boundary | target/key | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0044 | symbol key boundary | target/key | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0045 | private field target boundary | target/key | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0046 | protected field target boundary | target/key | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0047 | public field target | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0048 | multiple fields target/key | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0049 | target 不应为 instance object | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0050 | static target 不应为 prototype | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0051 | instance target 不应为 class constructor | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0052 | key 不应丢失 | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0053 | key 不应错配到其他字段 | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0054 | 多 decorator 下 key 不错乱 | target/key | integration | P0 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0055 | initializer 不影响 key | target/key | integration | P1 | compiler expected |  |  |
| DECORATOR-PROPERTY-TD-0056 | export class 不影响 key | target/key | integration | P1 | compiler expected | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0057 | factory 无参 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0058 | factory 单 string 参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0059 | factory 单 number 参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0060 | factory 单 boolean 参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0061 | factory 多参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0062 | factory 参数为 arrow function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0063 | factory 参数为 normal function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0064 | factory 参数为 IIFE | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0065 | factory 参数为 imported binding | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0066 | factory 参数为 class static value | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0067 | factory 参数为 enum value | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0068 | factory 参数为 local const | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0069 | factory 返回 decorator function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0070 | factory 返回闭包 decorator function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0071 | factory 返回非函数 boundary | factory | boundary | P2 | manual pending | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0072 | factory 抛异常 boundary | factory | boundary | P2 | manual pending | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0073 | factory 求值顺序 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0074 | factory 与多个 property decorators | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0075 | factory 与 transform lowering | factory | pass | P1 | XTS smoke | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0076 | factory 与 module scope | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0077 | property decorator lowering 到 class 外 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0078 | instance property decorator lowering target | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0079 | static property decorator lowering target | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0080 | property key lowering | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0081 | factory call lowering | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0082 | decorator function call lowering | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0083 | lowering 后 decorator 调用顺序 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0084 | lowering 后 class field 初始化 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0085 | lowering 后无重复 decorator 调用 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0086 | lowering 后无遗漏 decorator 调用 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0087 | lowering 后 decorator 参数 arrow function 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0088 | lowering 后 decorator 参数 normal function 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0089 | lowering 后 decorator 参数 IIFE 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0090 | lowering 后 imported binding 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0091 | lowering 后 AST state 不污染 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0092 | lowering 后 binder context 不污染 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0093 | lowering 后 codegen 不错用旧上下文 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0094 | PR 10632 作为 transform regression 引用 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform | PR 10632 reference |
| DECORATOR-PROPERTY-TD-0095 | import decorator function | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0096 | import decorator factory | module | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0097 | import decorator 参数 | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0098 | export class + property decorator | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0099 | default export class + property decorator | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0100 | re-export decorator boundary | module | boundary | P2 | manual pending | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0101 | circular import boundary | module | boundary | P2 | manual pending | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0102 | module initialization order | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0103 | decorator lowering 后 import binding | module | pass | P1 | XTS smoke | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0104 | property decorator 与 moduleVar | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0105 | imported factory 返回 decorator | module | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0106 | imported decorator 与 local field initializer | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0107 | private field decorator | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0108 | protected field decorator | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0109 | computed property name | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0110 | symbol property key | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0111 | accessor decorator 与 property decorator 边界 | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0112 | parameter decorator 与 property decorator 边界 | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0113 | decorator 放在 local variable | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0114 | decorator 放在 interface field | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0115 | decorator 放在 type alias | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0116 | decorator 放在 enum member | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-PROPERTY-TD-0117 | decorator expression throw | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0118 | factory 返回 invalid value | boundary | boundary | P2 | manual pending | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0119 | decorator factory 参数类型异常 | boundary | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-PROPERTY-TD-0120 | decorator 与 class expression | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-PROPERTY-TD-0121 | unsupported target pending | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-PROPERTY-TD-0122 | PR 10632 原始形态 | regression | regression | P0 | bytecode expected | 07_decorator_with_sendable | PR 10632 reference |
| DECORATOR-PROPERTY-TD-0123 | property decorator + arrow function 参数 | regression | regression | P1 | bytecode expected |  |  |
| DECORATOR-PROPERTY-TD-0124 | property decorator + IIFE 参数 | regression | regression | P1 | bytecode expected |  |  |
| DECORATOR-PROPERTY-TD-0125 | property decorator + module import 参数 | regression | regression | P1 | bytecode expected | 09_decorator_module_scope |  |
| DECORATOR-PROPERTY-TD-0126 | property decorator transform AST state pollution | regression | regression | P0 | bytecode expected | 05_decorator_transform |  |
| DECORATOR-PROPERTY-TD-0127 | 具体 sendable 变体转交 07_decorator_with_sendable | regression | regression | P1 | bytecode expected | 07_decorator_with_sendable |  |
