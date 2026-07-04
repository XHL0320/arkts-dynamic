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

<!-- TRANSFORM_DEEPENING_2026_07_03 -->

# Test Design

## Goal

围绕 TS style decorator transform / lowering 建立系统性测试设计。

## Test Matrix

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DTR-TD-0001 | instance property decorator lowering | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0002 | static property decorator lowering | property transform | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0003 | property decorator target 参数 | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0004 | property decorator key 参数 | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0005 | property decorator factory | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0006 | property decorator 参数为 literal | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0007 | property decorator 参数为 arrow function | property transform | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0008 | property decorator 参数为 normal function | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0009 | property decorator 参数为 IIFE | property transform | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0010 | property decorator 参数引用 import | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0011 | property decorator 与 field initializer | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0012 | property decorator 与 readonly field | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0013 | property decorator 与 public field | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0014 | property decorator 与 private field | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0015 | property decorator 与 protected field | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0016 | 多 property decorators | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0017 | 多 property decorator 不重复调用 | property transform | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0018 | transform 后 class field 初始化仍正确 | property transform | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0019 | transform 后 decorator 调用位于 class 定义之后 | property transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0020 | PR 10632 原始形态 | property transform | bytecode regression | P0 | bytecode expected | 07_decorator_with_sendable | PR 10632 related |
| DTR-TD-0021 | instance method decorator lowering | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0022 | static method decorator lowering | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0023 | method decorator target | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0024 | method decorator key | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0025 | method decorator descriptor 或等价结构 | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0026 | method decorator factory | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0027 | method decorator 参数为函数 | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0028 | method decorator 与 override | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0029 | method decorator 与 super.method | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0030 | method decorator 与 async method | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0031 | method decorator 与 generic method | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0032 | method decorator transform boundary | method transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0033 | class decorator lowering | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0034 | class decorator factory | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0035 | class decorator 调用位置 | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0036 | class decorator 与 export class | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0037 | class decorator 与 default export class | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0038 | class decorator 与 inheritance | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0039 | class decorator 与 abstract class | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0040 | class decorator 与 generic class | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0041 | class decorator 返回值行为 boundary | class transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0042 | class decorator 与 sendable boundary | class transform | integration | P1 | compiler expected | 07_decorator_with_sendable | PR 10632 related |
| DTR-TD-0043 | 无参 factory | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0044 | 单参数 factory | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0045 | 多参数 factory | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0046 | 参数为 primitive | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0047 | 参数为 object/array | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0048 | 参数为 arrow function | factory transform | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0049 | 参数为 normal function | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0050 | 参数为 IIFE | factory transform | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0051 | 参数引用 import | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0052 | factory 返回 decorator function | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0053 | factory 返回非函数 boundary | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0054 | factory 抛异常 boundary | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0055 | factory 求值顺序 | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0056 | factory 与 transform 后作用域 | factory transform | integration | P1 | compiler expected | 02_property_decorator |  |
| DTR-TD-0057 | 原始 decorator 节点与 lowered 节点共享指针 | AST state | regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0058 | shared pointer 不污染 inSendable | AST state | bytecode regression | P0 | bytecode expected | 02_property_decorator | PR 10632 related |
| DTR-TD-0059 | shared pointer 不污染 scope | AST state | bytecode regression | P0 | bytecode expected | 02_property_decorator | PR 10632 related |
| DTR-TD-0060 | shared pointer 不污染 checker/type 状态 | AST state | bytecode regression | P0 | bytecode expected | 02_property_decorator | PR 10632 related |
| DTR-TD-0061 | shared pointer 不污染 codegen | AST state | bytecode regression | P0 | bytecode expected | 02_property_decorator | PR 10632 related |
| DTR-TD-0062 | transform 后节点重设上下文 | AST state | regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0063 | 多 decorator shared state 不互相污染 | AST state | regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0064 | property decorator + arrow function | AST state | regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0065 | property decorator + normal function | AST state | regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0066 | property decorator + IIFE | AST state | regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0067 | property decorator + imported binding | AST state | regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0068 | sendable class 交叉 | AST state | regression | P0 | bytecode expected | 07_decorator_with_sendable | PR 10632 related |
| DTR-TD-0069 | 原始节点保留但不参与错误 codegen | AST state | bytecode regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0070 | lowered 节点覆盖旧 binder flag | AST state | bytecode regression | P1 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0071 | property decorator call 生成正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0072 | instance property target 正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0073 | static property target 正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0074 | key 参数正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0075 | factory 调用正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0076 | decorator function 调用正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0077 | 不重复生成 decorator 调用 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0078 | 不遗漏 decorator 调用 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0079 | class definition 与 decorator call 顺序正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0080 | decorator 参数 function 不生成 sendable 字节码 | bytecode | bytecode regression | P0 | bytecode expected | 07_decorator_with_sendable | PR 10632 related |
| DTR-TD-0081 | sendable class 本体仍生成 sendable 字节码 | bytecode | bytecode regression | P0 | bytecode expected | 07_decorator_with_sendable | PR 10632 related |
| DTR-TD-0082 | 多 decorator bytecode 顺序正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0083 | module import binding 正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0084 | field initializer 不被破坏 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0085 | PR 10632 bytecode expected | bytecode | bytecode regression | P0 | bytecode expected | 07_decorator_with_sendable | PR 10632 related |
| DTR-TD-0086 | normal function 参数 bytecode 正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0087 | IIFE 参数 bytecode 正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0088 | static property decorator bytecode target 正确 | bytecode | bytecode regression | P0 | bytecode expected | 02_property_decorator |  |
| DTR-TD-0089 | unsupported decorator target | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0090 | accessor decorator | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0091 | parameter decorator | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0092 | computed property name | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0093 | private field decorator | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0094 | protected field decorator | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0095 | abstract class decorator | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0096 | generic class decorator | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0097 | decorator expression throw | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0098 | decorator return invalid value | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0099 | circular import | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0100 | class expression decorator | boundary | boundary | P2 | manual pending | 02_property_decorator |  |
| DTR-TD-0101 | transform lowering 扩展矩阵补充 101 | transform matrix | integration | P1 | compiler expected | 05_decorator_transform | Not from test262 |
| DTR-TD-0102 | transform lowering 扩展矩阵补充 102 | transform matrix | integration | P1 | compiler expected | 05_decorator_transform | Not from test262 |
| DTR-TD-0103 | transform lowering 扩展矩阵补充 103 | transform matrix | integration | P1 | compiler expected | 05_decorator_transform | Not from test262 |
| DTR-TD-0104 | transform lowering 扩展矩阵补充 104 | transform matrix | integration | P1 | compiler expected | 05_decorator_transform | Not from test262 |
| DTR-TD-0105 | transform lowering 扩展矩阵补充 105 | transform matrix | integration | P1 | compiler expected | 05_decorator_transform | Not from test262 |
