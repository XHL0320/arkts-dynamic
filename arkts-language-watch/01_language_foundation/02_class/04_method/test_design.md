# Test Design

## Positive Cases

记录合法语法、合法类型、正常运行场景。

## Compile Negative Cases

记录 parser/checker 应拦截的错误。

## Runtime Error Cases

记录符合 ECMA 运行时语义的异常场景，如 TypeError、ReferenceError 等。

## Boundary Cases

记录边界场景，如空类、空构造、重复字段、继承边界、初始化顺序等。

## Type System Cases

记录 class 与类型系统相关的场景：

- class as type
- class as value
- constructor type
- instance type
- assignability
- object literal compatibility
- interface compatibility
- generic compatibility

## Inheritance / Integration Cases

记录与继承、interface、abstract、generic、module、null safety 等组合场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## test262 Candidate Cases

记录可参考或适配的 test262 用例方向。

## Regression Cases

记录历史缺陷或后续回归用例。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | 无参实例方法调用通过 | pass | P0 | 初始设计点 |
| 002 | 带参方法参数类型正确通过 | fail_compile | P0 | 初始设计点 |
| 003 | 带参方法参数类型错误报错 | boundary | P0 | 初始设计点 |
| 004 | 方法返回值类型正确通过 | fail_runtime | P0 | 初始设计点 |
| 005 | 方法返回值类型错误报错 | integration | P0 | 初始设计点 |
| 006 | 方法体内 this 访问实例字段 | regression | P0 | 初始设计点 |
| 007 | 方法提取后 this 绑定运行时边界 | pass | P0 | 初始设计点 |
| 008 | 方法重载签名匹配通过 | fail_compile | P0 | 初始设计点 |
| 009 | 方法重载实现不兼容报错 | boundary | P1 | 初始设计点 |
| 010 | 派生类覆盖基类方法通过 | fail_runtime | P1 | 初始设计点 |
| 011 | 覆盖方法返回值不兼容报错 | integration | P1 | 初始设计点 |
| 012 | 覆盖方法参数不兼容报错 | regression | P1 | 初始设计点 |
| 013 | 方法与字段同名冲突 | pass | P1 | 初始设计点 |
| 014 | getter/setter 成对行为按支持情况确认 | fail_compile | P1 | 初始设计点 |
| 015 | static method 不能通过实例访问 | boundary | P1 | 初始设计点 |
| 016 | 方法中访问 private/protected 成员 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_METHOD_DETAILED_WATCH_V1 -->

# Test Design

## Positive Cases

覆盖方法正向用例，包括空方法、参数、返回值、this、static、visibility、overload、interface 和 generic method。

## Compile Negative Cases

覆盖 parser/checker 负向用例，包括参数类型/个数错误、返回类型错误、未声明方法、可见性错误、static/instance 混用、overload/override/interface 不兼容。

## Runtime Error Cases

覆盖运行时异常场景，包括方法提取后 this 丢失、method 作为 constructor、super.method 缺失、getter/setter 抛错等。

## Boundary Cases

覆盖 void return、getter/setter、computed/private/async/generator method、this 绑定、overload 与 optional/rest 参数组合等边界。

## Type System Cases

覆盖 class method 与 class/interface/generic/array/union/null/this 类型的交叉场景。

## Inheritance / Integration Cases

覆盖方法与继承、override、abstract、interface、generic、module 的组合场景。

## ArkTS Static Boundary Cases

覆盖 ArkTS 静态语言中可能前移为编译期错误的场景，例如 method extraction this、unsupported generator、private method、computed method name。

## test262 Candidate Cases

记录 class method definition、method on prototype、static method、super.method、getter/setter、computed/private/async/generator method 等 test262 方向。

## Regression Cases

记录 overload 分派、this 绑定、visibility override、interface method 实现、static/instance 混淆、return control-flow 等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | 空方法声明并调用通过 | pass | P0 |  |
| 002 | 无参方法返回 void 通过 | pass | P0 |  |
| 003 | 单 number 参数方法调用通过 | pass | P0 |  |
| 004 | 多参数方法调用通过 | pass | P0 |  |
| 005 | 返回 number 方法返回 number 通过 | pass | P0 |  |
| 006 | 返回 string 方法返回 string 通过 | pass | P0 |  |
| 007 | 返回 boolean 方法返回 boolean 通过 | pass | P0 |  |
| 008 | 返回 bigint 方法返回 bigint 通过 | pass | P0 |  |
| 009 | 返回 object 方法返回对象通过 | pass | P0 |  |
| 010 | 返回 array 方法返回数组通过 | pass | P0 |  |
| 011 | 方法显式返回类型与返回值一致通过 | pass | P0 |  |
| 012 | 方法省略返回类型并由返回值推断通过 | pass | P0 |  |
| 013 | 方法体访问实例字段通过 | pass | P0 |  |
| 014 | 方法体调用其他实例方法通过 | pass | P0 |  |
| 015 | constructor 中调用实例方法通过 | pass | P0 |  |
| 016 | 外部调用 public 方法通过 | pass | P0 |  |
| 017 | 可选参数未传值调用通过 | pass | P0 |  |
| 018 | rest 参数收集多个实参通过 | pass | P0 |  |
| 019 | 默认参数未传值使用默认值通过 | pass | P0 |  |
| 020 | 参数为 class 类型并传入实例通过 | pass | P0 |  |
| 021 | 参数为 interface 类型并传入满足对象通过 | pass | P0 |  |
| 022 | 参数为 array 类型并传入同元素数组通过 | pass | P0 |  |
| 023 | 方法返回 this 支持链式调用 | pass | P0 |  |
| 024 | static method 通过 class 名调用通过 | pass | P0 |  |
| 025 | protected method 在子类中调用通过 | pass | P0 |  |
| 026 | number 参数传入 string，checker 报错 | fail_compile | P0 |  |
| 027 | string 参数传入 boolean，checker 报错 | fail_compile | P0 |  |
| 028 | 参数个数不足，checker 报错 | fail_compile | P0 |  |
| 029 | 参数个数过多，checker 报错或按 ArkTS 规则记录 | fail_compile | P0 |  |
| 030 | 非 optional 参数位于 optional 参数之后，checker 报错 | fail_compile | P0 |  |
| 031 | rest 参数不是最后一个参数，parser/checker 报错 | fail_compile | P0 |  |
| 032 | 默认参数初始化值与参数类型不匹配，checker 报错 | fail_compile | P0 |  |
| 033 | 返回 number 方法返回 string，checker 报错 | fail_compile | P0 |  |
| 034 | 返回 class 类型方法返回无关对象，checker 报错 | fail_compile | P0 |  |
| 035 | 返回 interface 类型方法缺少成员，checker 报错 | fail_compile | P0 |  |
| 036 | 非 void 方法缺少 return，checker 报错 | fail_compile | P0 |  |
| 037 | 部分控制流路径缺少 return，checker 报错 | fail_compile | P0 |  |
| 038 | 未声明方法调用，checker 报错 | fail_compile | P0 |  |
| 039 | private method 外部访问，checker 报错 | fail_compile | P0 |  |
| 040 | protected method 外部访问，checker 报错 | fail_compile | P0 |  |
| 041 | static method 通过实例访问，checker 报错 | fail_compile | P0 |  |
| 042 | instance method 通过 class 名访问，checker 报错 | fail_compile | P0 |  |
| 043 | static method 访问 instance field，checker 报错 | fail_compile | P0 |  |
| 044 | 方法与字段同名，checker 报错 | fail_compile | P0 |  |
| 045 | 重复方法声明冲突，checker 报错或记录差异 | fail_compile | P0 |  |
| 046 | getter 带参数，parser/checker 报错 | fail_compile | P0 |  |
| 047 | setter 参数个数不是一个，parser/checker 报错 | fail_compile | P0 |  |
| 048 | overload 实现签名不兼容，checker 报错 | fail_compile | P0 |  |
| 049 | overload 调用无匹配签名，checker 报错 | fail_compile | P0 |  |
| 050 | 覆盖方法返回类型不兼容，checker 报错 | fail_compile | P0 |  |
| 051 | 覆盖方法参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 052 | 覆盖方法可见性收窄，checker 报错 | fail_compile | P0 |  |
| 053 | class implements interface 缺少 method，checker 报错 | fail_compile | P0 |  |
| 054 | 空方法体边界 | boundary | P1 |  |
| 055 | void 方法 return; 边界 | boundary | P1 |  |
| 056 | void 方法 return expression 支持情况边界 | boundary | P1 |  |
| 057 | 方法提取后 this 绑定边界 | boundary | P1 |  |
| 058 | arrow function 捕获 this 交叉边界 | boundary | P1 |  |
| 059 | getter/setter 支持情况边界 | boundary | P1 |  |
| 060 | computed method name 支持情况边界 | boundary | P1 |  |
| 061 | private #method 支持情况边界 | boundary | P1 |  |
| 062 | async method 支持情况边界 | boundary | P1 |  |
| 063 | generator method 支持情况边界 | boundary | P1 |  |
| 064 | static method 与 instance method 同名边界 | boundary | P1 |  |
| 065 | overload 与 optional/rest 参数组合边界 | boundary | P1 |  |
| 066 | 方法提取后调用导致 this 丢失，运行时 TypeError | fail_runtime | P1 |  |
| 067 | class method 作为 constructor 使用，运行时 TypeError | fail_runtime | P1 |  |
| 068 | super.method 不存在时调用，运行时 TypeError | fail_runtime | P1 |  |
| 069 | getter 方法执行时抛出异常并传播 | fail_runtime | P1 |  |
| 070 | setter 方法执行时抛出异常并传播 | fail_runtime | P1 |  |
| 071 | 方法中访问动态 undefined 字段导致 TypeError | fail_runtime | P1 |  |
| 072 | 子类继承基类方法并调用通过 | integration | P0 |  |
| 073 | 子类覆盖基类方法并调用派生实现 | integration | P0 |  |
| 074 | super.method 调用基类方法通过 | integration | P0 |  |
| 075 | override abstract method 完整实现通过 | integration | P0 |  |
| 076 | class 方法实现 interface method 通过 | integration | P0 |  |
| 077 | 缺少 interface method 报错 | integration | P0 |  |
| 078 | generic class 方法使用 T 参数和返回值 | integration | P0 |  |
| 079 | generic method 声明并由实参推断 T | integration | P0 |  |
| 080 | generic method 约束满足时调用通过 | integration | P0 |  |
| 081 | overload 与 interface method 组合 | integration | P0 |  |
| 082 | overload 与继承覆盖组合 | integration | P0 |  |
| 083 | module export class method 跨文件调用 | integration | P0 |  |
| 084 | 方法 overload 分派历史缺陷回归 | regression | P0 |  |
| 085 | this 绑定误判历史缺陷回归 | regression | P0 |  |
| 086 | visibility override 收窄漏报回归 | regression | P0 |  |
| 087 | interface method 实现漏检回归 | regression | P0 |  |
| 088 | static/instance method 混淆回归 | regression | P0 |  |
| 089 | return control-flow checker 回归 | regression | P0 |  |
