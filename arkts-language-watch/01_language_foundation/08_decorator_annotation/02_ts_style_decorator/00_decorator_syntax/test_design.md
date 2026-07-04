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

<!-- SYNTAX_DEEPENING_2026_07_03 -->

# Test Design

## Goal

围绕 TS style decorator 基础语法建立系统性测试设计，主线为普通 class 下的合法/非法 decorator syntax。

## Test Matrix

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联目录 | 备注 |
|---|---|---|---|---|---|---|---|
| DECORATOR-SYNTAX-TD-0001 | class 前 @decorator | basic syntax | pass | P0 | XTS smoke | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0002 | property 前 @decorator | basic syntax | pass | P0 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0003 | method 前 @decorator | basic syntax | pass | P0 | XTS smoke | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0004 | static property 前 @decorator | basic syntax | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0005 | static method 前 @decorator | basic syntax | pass | P1 | XTS smoke | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0006 | @decorator() call expression | basic syntax | pass | P0 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0007 | @decorator(arg) call expression | basic syntax | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0008 | @decorator(arg1, arg2) call expression | basic syntax | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0009 | @ns.decorator member expression boundary | basic syntax | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0010 | @(decorator) parenthesized boundary | basic syntax | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0011 | decorator 后缺少声明 | basic syntax | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0012 | decorator 只有 @ | basic syntax | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0013 | decorator 名称为空 | basic syntax | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0014 | decorator 参数列表语法错误 | basic syntax | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0015 | decorator 与声明之间换行 | basic syntax | pass | P0 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0016 | class declaration | valid target | pass | P1 | XTS smoke | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0017 | exported class | valid target | pass | P1 | XTS smoke | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0018 | default exported class | valid target | pass | P1 | XTS smoke | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0019 | instance property | valid target | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0020 | static property | valid target | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0021 | readonly property | valid target | pass | P0 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0022 | public property | valid target | pass | P0 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0023 | private property boundary | valid target | boundary | P2 | manual pending | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0024 | protected property boundary | valid target | boundary | P2 | manual pending | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0025 | instance method | valid target | pass | P0 | XTS smoke | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0026 | static method | valid target | pass | P0 | XTS smoke | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0027 | abstract method boundary | valid target | boundary | P2 | manual pending | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0028 | getter/setter boundary | valid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0029 | constructor decorator invalid | valid target | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0030 | parameter decorator boundary | valid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0031 | local variable | invalid target | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0032 | local function statement | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0033 | expression statement | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0034 | assignment statement | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0035 | import declaration | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0036 | export statement without declaration | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0037 | type alias | invalid target | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0038 | interface declaration boundary | invalid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0039 | interface member | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0040 | enum declaration boundary | invalid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0041 | enum member | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0042 | object literal property | invalid target | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0043 | function parameter boundary | invalid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0044 | constructor parameter boundary | invalid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0045 | block statement | invalid target | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0046 | namespace/module boundary | invalid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0047 | class expression boundary | invalid target | boundary | P2 | manual pending | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0048 | arrow function boundary | invalid target | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0049 | standalone decorator | invalid target | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0050 | decorator after declaration invalid | invalid target | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0051 | @dec export class A 是否非法 | modifier order | boundary | P2 | manual pending | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0052 | export @dec class A 是否非法 | modifier order | boundary | P2 | manual pending | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0053 | @dec export default class A boundary | modifier order | boundary | P2 | manual pending | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0054 | export default @dec class A boundary | modifier order | boundary | P2 | manual pending | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0055 | @dec public prop | modifier order | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0056 | public @dec prop boundary | modifier order | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0057 | @dec static prop | modifier order | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0058 | static @dec prop boundary | modifier order | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0059 | @dec readonly prop | modifier order | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0060 | readonly @dec prop boundary | modifier order | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0061 | @dec abstract class A boundary | modifier order | boundary | P2 | manual pending | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0062 | abstract @dec class A boundary | modifier order | boundary | P2 | manual pending | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0063 | @dec override method boundary | modifier order | boundary | P2 | manual pending | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0064 | override @dec method boundary | modifier order | boundary | P2 | manual pending | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0065 | 多修饰符组合顺序 | modifier order | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0066 | 两个 decorators 连续 | multiple decorators | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0067 | 三个 decorators 连续 | multiple decorators | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0068 | 多 decorators 分行 | multiple decorators | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0069 | 多 decorators 中间有注释 | multiple decorators | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0070 | 多 decorators 中间有空行 | multiple decorators | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0071 | 标识符 decorator + factory decorator 混合 | multiple decorators | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0072 | factory decorator + 标识符 decorator 混合 | multiple decorators | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0073 | 多 decorators 中第一个非法 | multiple decorators | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0074 | 多 decorators 中第二个非法 | multiple decorators | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0075 | 多 decorators 后缺少声明 | multiple decorators | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0076 | 多 decorators 与 export class | multiple decorators | pass | P1 | XTS smoke | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0077 | 多 decorators 与 property/method | multiple decorators | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0078 | identifier | expression form | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0079 | call expression | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0080 | nested call expression | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0081 | member expression boundary | expression form | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0082 | imported identifier | expression form | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0083 | factory with string arg | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0084 | factory with number arg | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0085 | factory with boolean arg | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0086 | factory with arrow function arg | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0087 | factory with normal function arg | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0088 | factory with IIFE arg | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0089 | factory with array/object arg boundary | expression form | boundary | P2 | manual pending | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0090 | unresolved identifier | expression form | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0091 | non-callable expression | expression form | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0092 | call expression missing parenthesis | expression form | pass | P1 | XTS smoke | 04_decorator_factory |  |
| DECORATOR-SYNTAX-TD-0093 | argument list trailing comma boundary | expression form | boundary | P2 | manual pending |  |  |
| DECORATOR-SYNTAX-TD-0094 | empty argument list | expression form | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0095 | invalid token after @ | expression form | fail_compile | P1 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0096 | parser error: bare @ | parser checker | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0097 | parser error: decorator without declaration | parser checker | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0098 | parser error: invalid target position | parser checker | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0099 | parser accepts but checker rejects unresolved decorator | parser checker | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0100 | parser accepts but checker rejects non-callable decorator | parser checker | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0101 | parser accepts but checker rejects invalid return value boundary | parser checker | fail_compile | P0 | parser/checker |  |  |
| DECORATOR-SYNTAX-TD-0102 | parser accepts property decorator but field type mismatch still报错 | parser checker | pass | P1 | XTS smoke | 02_property_decorator |  |
| DECORATOR-SYNTAX-TD-0103 | parser accepts method decorator but method override error still报错 | parser checker | fail_compile | P0 | parser/checker | 03_method_decorator |  |
| DECORATOR-SYNTAX-TD-0104 | parser accepts class decorator but class semantic error still报错 | parser checker | fail_compile | P0 | parser/checker | 01_class_decorator |  |
| DECORATOR-SYNTAX-TD-0105 | unsupported target should produce stable compile failure | parser checker | pass | P1 | XTS smoke |  |  |
| DECORATOR-SYNTAX-TD-0106 | PR 10632 使用 property decorator syntax | regression | regression | P1 | parser/checker | 02_property_decorator | PR 10632 syntax reference |
| DECORATOR-SYNTAX-TD-0107 | PR 10632 使用 decorator factory call syntax | regression | regression | P1 | parser/checker | 04_decorator_factory | PR 10632 syntax reference |
| DECORATOR-SYNTAX-TD-0108 | PR 10632 使用 factory 参数 IIFE syntax | regression | regression | P1 | parser/checker | 04_decorator_factory | PR 10632 syntax reference |
| DECORATOR-SYNTAX-TD-0109 | PR 10632 使用 module import 参数 syntax | regression | regression | P1 | parser/checker |  | PR 10632 syntax reference |
| DECORATOR-SYNTAX-TD-0110 | PR 10632 具体 sendable/transform 风险转交其他目录 | regression | regression | P1 | parser/checker | 07_decorator_with_sendable | PR 10632 syntax reference |
