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

<!-- FACTORY_DEEPENING_2026_07_03 -->

# Test Design

## Goal

围绕 TS style decorator factory 建立系统性测试设计，主线为普通 decorator factory 行为。

## Test Matrix

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-FACTORY-TD-0001 | 无参 factory | factory core | pass | P0 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0002 | 单参 factory | factory core | pass | P0 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0003 | 多参 factory | factory core | pass | P0 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0004 | factory 调用结果作为 decorator | factory core | pass | P0 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0005 | factory 和普通 decorator 标识符对照 | factory core | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0006 | factory 用于 property decorator | factory core | pass | P0 | XTS smoke | 02_property_decorator |  |
| DECORATOR-FACTORY-TD-0007 | factory 用于 static property decorator | factory core | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-FACTORY-TD-0008 | factory 用于 method decorator | factory core | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0009 | factory 用于 class decorator | factory core | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0010 | factory 未定义 | factory core | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-FACTORY-TD-0011 | factory 非函数 | factory core | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-FACTORY-TD-0012 | factory 返回非函数 boundary | factory core | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0013 | factory 抛异常 boundary | factory core | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0014 | factory 返回 decorator function | factory core | pass | P0 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0015 | factory 返回闭包 decorator function | factory core | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0016 | factory 返回带状态 decorator function | factory core | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0017 | factory 不应重复调用 | factory core | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0018 | factory 不应遗漏调用 | factory core | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0019 | string literal | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0020 | number literal | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0021 | boolean literal | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0022 | bigint literal boundary | factory parameter | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0023 | enum value | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0024 | class static value | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0025 | local const | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0026 | imported binding | factory parameter | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0027 | arrow function | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0028 | normal function | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0029 | IIFE | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0030 | nested call | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0031 | array literal boundary | factory parameter | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0032 | object literal boundary | factory parameter | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0033 | conditional expression boundary | factory parameter | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0034 | template string boundary | factory parameter | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0035 | null 参数 boundary | factory parameter | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0036 | undefined 参数 boundary | factory parameter | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0037 | 多参数混合 primitive | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0038 | 多参数混合 function | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0039 | 多参数混合 import | factory parameter | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0040 | 参数类型不匹配 | factory parameter | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-FACTORY-TD-0041 | 参数求值副作用 | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0042 | 参数求值顺序 | factory parameter | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0043 | 返回 property decorator function | return value | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-FACTORY-TD-0044 | 返回 method decorator function | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0045 | 返回 class decorator function | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0046 | 返回闭包 decorator function | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0047 | 返回带状态 function | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0048 | 返回 function 内访问 factory 参数 | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0049 | 返回 function 内访问 module binding | return value | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0050 | 返回 function 内访问 local const | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0051 | 返回 undefined | return value | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0052 | 返回 null | return value | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0053 | 返回 number | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0054 | 返回 string | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0055 | 返回 object | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0056 | 返回 class instance | return value | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0057 | 返回 invalid value runtime boundary | return value | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0058 | 返回值类型 checker boundary | return value | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-FACTORY-TD-0059 | factory 参数从左到右求值 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0060 | 多 factory 求值顺序 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0061 | factory 求值与 decorator 调用顺序 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0062 | factory 参数 IIFE 执行顺序 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0063 | factory 参数函数表达式不立即执行 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0064 | factory 内副作用执行次数 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0065 | returned decorator function 调用次数 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0066 | factory 与 field initializer 顺序 boundary | evaluation order | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0067 | factory 与 class evaluation 顺序 boundary | evaluation order | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0068 | factory 与 static field 顺序 boundary | evaluation order | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0069 | factory 与 module initialization 顺序 boundary | evaluation order | boundary | P2 | manual pending | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0070 | factory 与 export class 顺序 boundary | evaluation order | boundary | P2 | manual pending | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0071 | 多 property decorators 顺序 | evaluation order | integration | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-FACTORY-TD-0072 | class/property/method 混合顺序 boundary | evaluation order | boundary | P2 | manual pending | 02_property_decorator |  |
| DECORATOR-FACTORY-TD-0073 | nested factory call 顺序 | evaluation order | integration | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0074 | factory throw 后后续 decorator 是否执行 boundary | evaluation order | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0075 | factory call lowering | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0076 | factory 参数 lowering | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0077 | returned decorator function lowering | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0078 | factory call 与 decorator application 分离 | transform/lowering | integration | P1 | compiler expected |  |  |
| DECORATOR-FACTORY-TD-0079 | lowering 后 target/key 正确 | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0080 | lowering 后 import binding 正确 | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0081 | lowering 后 arrow function 参数作用域正确 | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0082 | lowering 后 normal function 参数作用域正确 | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0083 | lowering 后 IIFE 参数作用域正确 | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0084 | lowering 后不重复 factory call | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0085 | lowering 后不遗漏 factory call | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0086 | lowering 后 AST state 不污染 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0087 | lowering 后 binder context 不污染 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0088 | lowering 后 codegen 不错用旧上下文 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0089 | property decorator factory lowering | transform/lowering | integration | P0 | compiler expected | 02_property_decorator |  |
| DECORATOR-FACTORY-TD-0090 | method decorator factory lowering | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0091 | class decorator factory lowering | transform/lowering | integration | P0 | compiler expected | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0092 | PR 10632 作为 transform regression 引用 | transform/lowering | bytecode regression | P0 | compiler expected | 05_decorator_transform | PR 10632 reference |
| DECORATOR-FACTORY-TD-0093 | import factory | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0094 | import returned decorator | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0095 | factory 参数引用 import | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0096 | returned decorator 捕获 import | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0097 | export class + factory decorator | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0098 | default export class + factory decorator | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0099 | re-export factory boundary | module | boundary | P2 | manual pending | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0100 | circular import boundary | module | boundary | P2 | manual pending | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0101 | module initialization order | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0102 | lowering 后 import binding | module | pass | P1 | XTS smoke | 05_decorator_transform |  |
| DECORATOR-FACTORY-TD-0103 | factory 所在模块副作用 | module | pass | P1 | XTS smoke |  |  |
| DECORATOR-FACTORY-TD-0104 | imported factory 与 local field initializer | module | pass | P1 | XTS smoke | 09_decorator_module_scope |  |
| DECORATOR-FACTORY-TD-0105 | factory 放在 unsupported target | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0106 | factory 参数为 unsupported expression | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0107 | factory 返回 invalid value | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0108 | factory throw | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0109 | factory 参数 throw | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0110 | factory 参数类型不匹配 | boundary | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-FACTORY-TD-0111 | factory 与 accessor decorator boundary | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0112 | factory 与 parameter decorator boundary | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0113 | factory 与 local variable decorator boundary | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0114 | factory 与 interface member decorator boundary | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0115 | factory 与 enum member decorator boundary | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0116 | factory 与 type alias decorator boundary | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0117 | factory 与 computed property key boundary | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DECORATOR-FACTORY-TD-0118 | factory 与 class expression decorator boundary | boundary | boundary | P2 | manual pending |  |  |
| DECORATOR-FACTORY-TD-0119 | PR 10632 中 factory 参数为 arrow IIFE | regression | regression | P0 | bytecode expected | 07_decorator_with_sendable | PR 10632 reference |
| DECORATOR-FACTORY-TD-0120 | PR 10632 中 factory 参数引用 module import | regression | regression | P0 | bytecode expected | 09_decorator_module_scope | PR 10632 reference |
| DECORATOR-FACTORY-TD-0121 | PR 10632 中 factory 参数函数经 transform 后作用域正确 | regression | regression | P0 | bytecode expected | 05_decorator_transform | PR 10632 reference |
| DECORATOR-FACTORY-TD-0122 | PR 10632 中 factory 与 property decorator 关联 | regression | regression | P0 | bytecode expected | 02_property_decorator | PR 10632 reference |
| DECORATOR-FACTORY-TD-0123 | PR 10632 中 factory 与 transform AST state pollution 关联 | regression | regression | P0 | bytecode expected | 05_decorator_transform | PR 10632 reference |
| DECORATOR-FACTORY-TD-0124 | sendable-specific 扩展转交 07_decorator_with_sendable | regression | regression | P1 | bytecode expected | 07_decorator_with_sendable |  |
