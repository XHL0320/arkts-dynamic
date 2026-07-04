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

<!-- METHOD_DEEPENING_2026_07_03 -->

# Test Design

## Goal

围绕 TS style method decorator 建立系统性测试设计，主线为普通 class 下的 method decorator 能力。

## Test Matrix

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-METHOD-TD-0001 | instance method decorator | method core | pass | P0 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0002 | static method decorator | method core | pass | P0 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0003 | method decorator 为普通标识符 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0004 | method decorator 为 factory call | method core | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0005 | method decorator 无参数 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0006 | method decorator 单参数 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0007 | method decorator 多参数 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0008 | method decorator 参数为 literal | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0009 | method decorator 参数为表达式 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0010 | method decorator 参数为函数 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0011 | decorator 名称未定义 | method core | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0012 | decorator 表达式类型错误 | method core | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0013 | decorator 返回值非法 boundary | method core | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0014 | decorator 与方法参数类型共存 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0015 | decorator 与方法返回值类型共存 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0016 | decorator 与无返回值 method 共存 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0017 | decorator 不改变 method 可访问性 | method core | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0018 | decorator 不绕过 checker | method core | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0019 | instance method target | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0020 | static method target | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0021 | string method key | target/key/descriptor | integration | P1 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0022 | numeric-like method key | target/key/descriptor | integration | P1 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0023 | computed method key boundary | target/key/descriptor | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0024 | symbol method key boundary | target/key/descriptor | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0025 | descriptor 是否存在 | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0026 | descriptor.value 是否正确 | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0027 | descriptor.writable 是否可观察 boundary | target/key/descriptor | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0028 | descriptor.enumerable/configurable boundary | target/key/descriptor | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0029 | target 不应为 instance object | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0030 | static target 不应为 prototype | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0031 | instance target 不应为 class constructor | target/key/descriptor | fail_compile | P1 | parser/checker | 00_decorator_syntax |  |
| DECORATOR-METHOD-TD-0032 | key 不应丢失 | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0033 | key 不应错配到其他方法 | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0034 | multiple methods target/key | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0035 | multiple decorators target/key | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0036 | exported class 不影响 method target | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0037 | default export class 不影响 method target | target/key/descriptor | integration | P0 | compiler expected |  |  |
| DECORATOR-METHOD-TD-0038 | descriptor 规则待确认时标记 Pending | target/key/descriptor | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0039 | no-arg method | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0040 | single parameter method | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0041 | multiple parameter method | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0042 | optional parameter method | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0043 | rest parameter method | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0044 | number parameter | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0045 | string parameter | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0046 | boolean parameter | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0047 | class type parameter | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0048 | array parameter | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0049 | nullable parameter | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0050 | generic parameter boundary | method type | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0051 | returns void | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0052 | returns number | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0053 | returns string | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0054 | returns class type | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0055 | returns array | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0056 | parameter type mismatch + decorator | method type | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0057 | return type mismatch + decorator | method type | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0058 | method decorator 不改变方法签名 | method type | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0059 | static method decorator | static/visibility/override | pass | P0 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0060 | public method decorator | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0061 | private method decorator boundary | static/visibility/override | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0062 | protected method decorator boundary | static/visibility/override | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0063 | override method decorator | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0064 | decorated override 参数不匹配仍报错 | static/visibility/override | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0065 | decorated override 返回值不匹配仍报错 | static/visibility/override | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0066 | decorated method 访问 private 仍遵守规则 | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0067 | static decorated method 通过类名访问 | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0068 | static decorated method 通过实例访问错误 | static/visibility/override | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0069 | decorated method inheritance | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0070 | decorated method override | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0071 | decorated method super call | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0072 | decorated method this binding | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0073 | abstract method decorator boundary | static/visibility/override | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0074 | interface method decorator boundary | static/visibility/override | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0075 | implemented method decorator | static/visibility/override | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0076 | overloaded method decorator boundary | static/visibility/override | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0077 | factory 无参 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0078 | factory 单 string 参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0079 | factory 单 number 参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0080 | factory 单 boolean 参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0081 | factory 多参数 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0082 | factory 参数为 arrow function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0083 | factory 参数为 normal function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0084 | factory 参数为 IIFE | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0085 | factory 参数为 imported binding | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0086 | factory 参数为 local const | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0087 | factory 返回 method decorator function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0088 | factory 返回闭包 method decorator function | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0089 | factory 返回非函数 boundary | factory | boundary | P2 | manual pending | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0090 | factory 抛异常 boundary | factory | boundary | P2 | manual pending | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0091 | factory 求值顺序 | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0092 | factory 与多个 method decorators | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0093 | factory 与 transform lowering | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0094 | factory 与 module scope | factory | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0095 | method decorator lowering | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0096 | instance method decorator lowering target | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0097 | static method decorator lowering target | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0098 | method key lowering | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0099 | descriptor lowering | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0100 | factory call lowering | transform/lowering | integration | P1 | compiler expected | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0101 | decorator function call lowering | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0102 | lowering 后 decorator 调用顺序 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0103 | lowering 后 method body 正常 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0104 | lowering 后无重复 decorator 调用 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0105 | lowering 后无遗漏 decorator 调用 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0106 | lowering 后 decorator 参数 arrow function 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0107 | lowering 后 decorator 参数 normal function 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0108 | lowering 后 decorator 参数 IIFE 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0109 | lowering 后 imported binding 作用域 | transform/lowering | integration | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0110 | lowering 后 AST state 不污染 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0111 | lowering 后 binder context 不污染 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0112 | method decorator 是否存在 PR10632-like 风险 | transform/lowering | bytecode regression | P1 | compiler expected |  | PR 10632 reference only |
| DECORATOR-METHOD-TD-0113 | async method decorator | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0114 | generator method decorator | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0115 | generic method decorator | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0116 | overloaded method decorator | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0117 | getter decorator boundary | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0118 | setter decorator boundary | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0119 | accessor decorator boundary | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0120 | constructor decorator invalid | feature boundary | fail_compile | P1 | parser/checker | 00_decorator_syntax |  |
| DECORATOR-METHOD-TD-0121 | parameter decorator boundary | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0122 | computed method name | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0123 | symbol method name | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0124 | abstract method | feature boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0125 | interface method | feature boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0126 | object literal method | feature boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0127 | class expression method boundary | feature boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0128 | import method decorator function | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0129 | import method decorator factory | module | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0130 | import decorator 参数 | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0131 | export class + method decorator | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0132 | default export class + method decorator | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0133 | re-export decorator boundary | module | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0134 | circular import boundary | module | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0135 | module initialization order | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0136 | decorator lowering 后 import binding | module | pass | P1 | XTS smoke | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0137 | method decorator 与 moduleVar | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0138 | imported factory 返回 method decorator | module | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0139 | imported decorator 与 local method body | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0140 | decorator 放在 constructor | boundary | fail_compile | P1 | parser/checker | 00_decorator_syntax |  |
| DECORATOR-METHOD-TD-0141 | decorator 放在 local function | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0142 | decorator 放在 function declaration | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0143 | decorator 放在 interface method | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0144 | decorator 放在 object literal method | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0145 | decorator 放在 type alias | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0146 | decorator 放在 enum member | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-METHOD-TD-0147 | decorator expression throw | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0148 | factory 返回 invalid value | boundary | fail_compile | P1 | parser/checker | 00_decorator_syntax |  |
| DECORATOR-METHOD-TD-0149 | decorator factory 参数类型异常 | boundary | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-METHOD-TD-0150 | decorator 与 unsupported accessor | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0151 | decorator 与 unsupported parameter | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0152 | decorator 与 unsupported method key | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0153 | decorator 与 class expression | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-METHOD-TD-0154 | unsupported target pending | boundary | pass | P1 | XTS smoke |  |  |
| DECORATOR-METHOD-TD-0155 | PR 10632 不是 method decorator bug | regression | regression | P1 | compiler expected | 07_decorator_with_sendable | PR 10632 reference only |
| DECORATOR-METHOD-TD-0156 | method decorator 是否存在类似 transform AST state pollution | regression | regression | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0157 | method decorator 是否存在类似 binder context pollution | regression | regression | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0158 | method decorator transform 与 bytecode expected 需要后续确认 | regression | regression | P1 | compiler expected | 05_decorator_transform |  |
| DECORATOR-METHOD-TD-0159 | sendable-specific 扩展转交 07_decorator_with_sendable | regression | regression | P1 | compiler expected | 07_decorator_with_sendable |  |
