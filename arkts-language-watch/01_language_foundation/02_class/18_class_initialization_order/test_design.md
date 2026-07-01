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
| 001 | 基类字段初始化 | pass | P0 | 初始设计点 |
| 002 | 基类 constructor | fail_compile | P0 | 初始设计点 |
| 003 | 派生类字段初始化 | boundary | P0 | 初始设计点 |
| 004 | 派生类 constructor | fail_runtime | P0 | 初始设计点 |
| 005 | static 字段初始化 | integration | P0 | 初始设计点 |
| 006 | static block，如 ArkTS 支持 | regression | P0 | 初始设计点 |
| 007 | 字段依赖顺序 | pass | P0 | 初始设计点 |
| 008 | this/super 初始化边界 | fail_compile | P0 | 初始设计点 |
| 009 | 正向基础场景 | boundary | P1 | 初始设计点 |
| 010 | 编译负向场景 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_INITIALIZATION_ORDER_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖实例字段声明顺序、字段与 constructor 关系、base/derived 初始化顺序、static field 顺序和跨模块基础正向场景。

## Compile Negative Cases

覆盖字段/constructor/static initializer 类型错误、definite assignment、this-before-super、static 访问 instance、unsupported static block 等 checker/parser 负向。

## Runtime Error Cases

覆盖字段 initializer、constructor、super()、static initializer、static block、module cycle 的 abrupt completion 和初始化中断。

## Boundary Cases

覆盖引用后序字段、initializer 使用 this/method、override method、static block、初始化失败对象状态、类型检查与运行时顺序分离。

## Type System Cases

覆盖初始化顺序与字段类型、readonly、nullable、definite assignment、generic T、constructor 参数和 static field 类型检查的交叉。

## Inheritance / Integration Cases

覆盖字段、constructor、继承、super、static、abstract、generic、module 的组合初始化顺序。

## ArkTS Static Boundary Cases

definite assignment、this-before-super、类型不匹配、unsupported static block 等应优先按 ArkTS checker 行为设计，不直接归入 test262。

## test262 Candidate Cases

test262 适合映射 ES class fields、derived constructors、super、static fields、static block、class evaluation、abrupt completion 等运行时语义。

## Regression Cases

记录字段顺序、derived field timing、super abrupt completion、override method during construction、static order 和 definite assignment 回归。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | 单个实例字段初始化后实例读取值正确 | pass | P0 |  |
| 002 | 多个实例字段按声明顺序初始化并记录副作用顺序 | pass | P0 |  |
| 003 | 字段初始化表达式引用前一个字段并读取已初始化值 | pass | P0 |  |
| 004 | 字段初始化表达式使用字面量且类型正确 | pass | P0 |  |
| 005 | 字段初始化表达式使用函数调用并记录调用顺序 | pass | P0 |  |
| 006 | 字段初始化表达式使用 this.field，如 ArkTS 支持 | pass | P0 |  |
| 007 | 字段初始化表达式使用 this.method()，如 ArkTS 支持 | pass | P0 |  |
| 008 | 字段初始化表达式访问 static field | pass | P0 |  |
| 009 | 字段初始化表达式调用 static method | pass | P0 |  |
| 010 | 字段声明处初始化后 constructor 读取字段 | pass | P0 |  |
| 011 | 字段声明处初始化后 constructor 再赋值 | pass | P0 |  |
| 012 | 字段无初始化值但 constructor 中赋值 | pass | P0 |  |
| 013 | constructor 中读取字段初始值 | pass | P0 |  |
| 014 | constructor 中调用方法读取字段 | pass | P0 |  |
| 015 | readonly 字段声明处初始化 | pass | P0 |  |
| 016 | readonly 字段在 constructor 中初始化，如 ArkTS 支持 | pass | P0 |  |
| 017 | 基类字段先于基类 constructor 初始化 | pass | P0 |  |
| 018 | 基类 constructor 读取基类字段 | pass | P0 |  |
| 019 | 基类 constructor 修改基类字段 | pass | P0 |  |
| 020 | 基类多字段按声明顺序初始化 | pass | P0 |  |
| 021 | 派生类 constructor 调用 super() 后实例化通过 | pass | P0 |  |
| 022 | super() 后派生类字段初始化 | pass | P0 |  |
| 023 | 派生类字段初始化后执行派生类 constructor 剩余语句 | pass | P1 |  |
| 024 | 派生类 constructor 读取派生类字段 | pass | P1 |  |
| 025 | 派生类 constructor 读取并修改基类字段 | pass | P1 |  |
| 026 | Base field -> Base constructor -> Derived field -> Derived constructor body 顺序 | pass | P1 |  |
| 027 | 多层继承 A/B/C 初始化顺序 | pass | P1 |  |
| 028 | Derived 字段与 Base 字段同名时分别初始化 | pass | P1 |  |
| 029 | static field 单个初始化后通过 class name 读取 | pass | P1 |  |
| 030 | 多个 static field 按声明顺序初始化 | pass | P1 |  |
| 031 | static field 初始化表达式引用前序 static field | pass | P1 |  |
| 032 | static field 初始化表达式调用 static method | pass | P1 |  |
| 033 | static field 初始化只执行一次 | pass | P1 |  |
| 034 | Base static field 初始化先于 Derived static field | pass | P1 |  |
| 035 | Derived static field 访问 Base static field | pass | P1 |  |
| 036 | 字段初始化表达式类型错误，checker 报错 | fail_compile | P0 |  |
| 037 | constructor 中字段赋值类型错误，checker 报错 | fail_compile | P0 |  |
| 038 | 字段无初始化值且 constructor 未赋值，如 ArkTS 要求 definite assignment 则报错 | fail_compile | P0 |  |
| 039 | readonly 字段 constructor 外赋值，checker 报错 | fail_compile | P0 |  |
| 040 | readonly 字段声明处初始化后 constructor 再赋值，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 041 | 字段初始化表达式引用后序字段，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 042 | 字段初始化表达式调用实例方法，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 043 | 字段初始化表达式访问不存在成员，checker 报错 | fail_compile | P0 |  |
| 044 | 派生类 constructor 中 super() 前访问 this，checker 报错 | fail_compile | P0 |  |
| 045 | 派生类 constructor 中 super() 前访问 this.field，checker 报错 | fail_compile | P0 |  |
| 046 | 派生类 constructor 中 super() 前调用 this.method()，checker 报错 | fail_compile | P0 |  |
| 047 | super() 参数类型不匹配，checker 报错 | fail_compile | P0 |  |
| 048 | super() 参数个数不足，checker 报错 | fail_compile | P0 |  |
| 049 | 字段遮蔽类型不一致，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 050 | static field 初始化表达式类型错误，checker 报错 | fail_compile | P0 |  |
| 051 | static field 初始化表达式访问 instance field，checker 报错 | fail_compile | P0 |  |
| 052 | static block 中访问 instance field，checker 报错，如支持 static block | fail_compile | P0 |  |
| 053 | static block 不支持时使用 static block，parser/checker 报错 | fail_compile | P0 |  |
| 054 | generic T 字段初始化不满足约束，checker 报错 | fail_compile | P0 |  |
| 055 | generic class constructor 初始化 T 字段类型错误，checker 报错 | fail_compile | P0 |  |
| 056 | readonly static field constructor/class 外赋值，checker 报错 | fail_compile | P0 |  |
| 057 | static field 初始化表达式引用不存在 static member，checker 报错 | fail_compile | P0 |  |
| 058 | Base constructor 参数传递类型错误，checker 报错 | fail_compile | P0 |  |
| 059 | Derived constructor 中 super 参数传递类型错误，checker 报错 | fail_compile | P1 |  |
| 060 | module/circular import 静态可判定非法引用，如 ArkTS 支持则 checker 报错 | fail_compile | P1 |  |
| 061 | constructor 中 return object/primitive 如 ArkTS 静态禁止则 checker 报错 | fail_compile | P1 |  |
| 062 | 字段初始化表达式抛异常导致构造中断 | fail_runtime | P0 |  |
| 063 | 字段初始化表达式调用方法时方法抛异常 | fail_runtime | P0 |  |
| 064 | constructor 抛异常导致对象构造中断 | fail_runtime | P0 |  |
| 065 | super() 内 base constructor 抛异常后 Derived field 不初始化 | fail_runtime | P0 |  |
| 066 | this before super 未被静态拦截时运行时 ReferenceError | fail_runtime | P0 |  |
| 067 | Derived field 初始化表达式抛异常后 constructor 剩余语句不执行 | fail_runtime | P0 |  |
| 068 | static field 初始化表达式抛异常导致 class evaluation 失败 | fail_runtime | P0 |  |
| 069 | static block 抛异常导致 class evaluation 失败，如支持 static block | fail_runtime | P0 |  |
| 070 | Base static initializer 抛异常后 Derived static 不初始化 | fail_runtime | P0 |  |
| 071 | Base constructor 调用 override method 读取未初始化 Derived field 的运行时边界 | fail_runtime | P1 |  |
| 072 | circular import 中访问未初始化 static field 的运行时边界 | fail_runtime | P1 |  |
| 073 | constructor return object/primitive 边界运行时行为记录 | fail_runtime | P1 |  |
| 074 | 字段初始化表达式引用后序字段的 ArkTS 行为边界 | boundary | P1 |  |
| 075 | 字段初始化表达式使用 this 的 ArkTS 支持边界 | boundary | P1 |  |
| 076 | 字段初始化表达式调用实例方法的 ArkTS 支持边界 | boundary | P1 |  |
| 077 | 字段声明初始化后 constructor 再赋值 readonly 的边界 | boundary | P1 |  |
| 078 | 未初始化字段 definite assignment 边界 | boundary | P1 |  |
| 079 | Base constructor 调用被 Derived override 的方法边界 | boundary | P1 |  |
| 080 | Base method 读取同名字段时 base/derived 字段解析边界 | boundary | P1 |  |
| 081 | static field 初始化表达式引用后序 static field 边界 | boundary | P1 |  |
| 082 | static field 通过 class name 首次访问前是否已初始化边界 | boundary | P1 |  |
| 083 | static block 支持与否边界 | boundary | P1 |  |
| 084 | static block 与 module import 顺序边界 | boundary | P1 |  |
| 085 | 初始化失败后的对象状态是否可观察边界 | boundary | P1 |  |
| 086 | 类型检查不改变运行时初始化顺序边界 | boundary | P1 |  |
| 087 | 实例字段与 constructor 组合初始化顺序 | integration | P0 |  |
| 088 | readonly 字段与继承初始化顺序组合 | integration | P0 |  |
| 089 | 基类字段、基类 constructor、派生类字段、派生类 constructor 组合顺序 | integration | P0 |  |
| 090 | 字段遮蔽与初始化顺序组合 | integration | P0 |  |
| 091 | constructor 中调用实例方法与字段初始化组合 | integration | P0 |  |
| 092 | Base constructor 调用 Derived override method 组合风险 | integration | P0 |  |
| 093 | static field 与 static method 初始化组合 | integration | P0 |  |
| 094 | static block 与 static field 初始化组合，如支持 static block | integration | P0 |  |
| 095 | Base static 与 Derived static 初始化顺序组合 | integration | P0 |  |
| 096 | abstract class constructor 初始化字段与 concrete subclass 组合 | integration | P1 |  |
| 097 | generic class 字段类型 T 与 constructor 初始化组合 | integration | P1 |  |
| 098 | generic derived class 传递 T 给 base constructor 组合 | integration | P1 |  |
| 099 | export/import class 后 new class 的实例初始化组合 | integration | P1 |  |
| 100 | import 后访问 static field 的初始化时机组合 | integration | P1 |  |
| 101 | 跨模块 Derived extends Base 初始化顺序组合 | integration | P1 |  |
| 102 | circular import 与 static 初始化边界组合 | integration | P1 |  |
| 103 | 回归：实例字段初始化顺序与声明顺序不一致 | regression | P0 |  |
| 104 | 回归：Derived field 在 super() 前初始化 | regression | P0 |  |
| 105 | 回归：super() 抛异常后 Derived field 仍执行 | regression | P0 |  |
| 106 | 回归：Base constructor 调 override 时读取 Derived 字段结果异常 | regression | P0 |  |
| 107 | 回归：static fields 初始化顺序错误 | regression | P0 |  |
| 108 | 回归：Base static 抛异常后 Derived static 仍执行 | regression | P0 |  |
| 109 | 回归：definite assignment 漏检 | regression | P0 |  |
| 110 | 回归：static block 支持状态变更未记录映射差异 | regression | P0 |  |
