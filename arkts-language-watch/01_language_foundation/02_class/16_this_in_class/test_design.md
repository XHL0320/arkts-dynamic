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
| 001 | constructor 中 this | pass | P0 | 初始设计点 |
| 002 | method 中 this | fail_compile | P0 | 初始设计点 |
| 003 | static method 中 this | boundary | P0 | 初始设计点 |
| 004 | arrow function 捕获 this | fail_runtime | P0 | 初始设计点 |
| 005 | this 作为返回值 | integration | P0 | 初始设计点 |
| 006 | 多态 this，如 ArkTS 支持 | regression | P0 | 初始设计点 |
| 007 | 方法提取后 this 绑定 | pass | P0 | 初始设计点 |
| 008 | 正向基础场景 | fail_compile | P0 | 初始设计点 |
| 009 | 编译负向场景 | boundary | P1 | 初始设计点 |
| 010 | 运行时边界场景 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_THIS_IN_CLASS_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 constructor、instance method、static method、field initializer、arrow function、super.method receiver、generic/module 中 this 的正向用例。

## Compile Negative Cases

覆盖 this-before-super、static/instance this 混用、readonly 写入、缺失成员、返回 this 类型不兼容、nested function/callback 边界。

## Runtime Error Cases

覆盖 method extraction、callback this 丢失、非法 receiver、this.method 非 callable、static method this 丢失和 field initializer 抛异常。

## Boundary Cases

覆盖多态 this、显式 this 参数、field initializer this、method extraction checker、static this 类型、call/apply/bind 支持边界。

## Type System Cases

覆盖 this 与 class type、constructor type、static side、instance side、generic、polymorphic this、interface/abstract 方法的交叉。

## Inheritance / Integration Cases

覆盖 this 与 field、method、constructor、inheritance、super、override、abstract、interface、static、module 的组合场景。

## ArkTS Static Boundary Cases

this 类型检查、多态 this、显式 this 参数和 method extraction 静态拦截属于 ArkTS checker 设计，不直接归入 test262。

## test262 Candidate Cases

test262 可参考 this binding、class method strict mode、derived constructor this-before-super、super receiver、arrow lexical this、static method this。

## Regression Cases

记录 this-before-super、static/instance 混用、method extraction、super receiver、arrow lexical this、generic T 和跨模块 this 类型回归。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | constructor 中使用 this.field 初始化实例字段 | pass | P0 |  |
| 002 | constructor 中读取字段默认值 | pass | P0 |  |
| 003 | constructor 中调用 this.method() | pass | P0 |  |
| 004 | constructor 中访问 public/private/protected field | pass | P0 |  |
| 005 | constructor 中初始化 readonly field | pass | P0 |  |
| 006 | constructor 中 this 类型为当前 class instance type | pass | P0 |  |
| 007 | constructor 中 this 作为参数传递 | pass | P0 |  |
| 008 | derived constructor 中 super() 后访问 this | pass | P0 |  |
| 009 | derived constructor 中 super() 后访问 this.field | pass | P0 |  |
| 010 | derived constructor 中 super() 后调用 this.method() | pass | P0 |  |
| 011 | instance method 中读取 this.field | pass | P0 |  |
| 012 | instance method 中写入 this.field | pass | P0 |  |
| 013 | instance method 中调用 this.method() | pass | P0 |  |
| 014 | instance method 中访问 private/protected/public member | pass | P0 |  |
| 015 | instance method 返回 this | pass | P0 |  |
| 016 | instance method 将 this 作为参数传递 | pass | P0 |  |
| 017 | static method 中 this 访问 static field | pass | P0 |  |
| 018 | static method 中 this 调用 static method | pass | P0 |  |
| 019 | static method 中访问 private/protected static field | pass | P0 |  |
| 020 | derived class 调用 inherited static method 时 this 指向 derived class | pass | P0 |  |
| 021 | field initializer 使用 this.field，如 ArkTS 支持 | pass | P1 |  |
| 022 | field initializer 调用 this.method()，如 ArkTS 支持 | pass | P1 |  |
| 023 | method 返回 this 实现 fluent API，如 ArkTS 支持 | pass | P1 |  |
| 024 | instance method 内 arrow function 捕获 this.field | pass | P1 |  |
| 025 | constructor 内 arrow function 捕获 this.field | pass | P1 |  |
| 026 | static method 内 arrow function 访问 this.staticField | pass | P1 |  |
| 027 | base method 被 derived instance 调用时 this 指向 derived instance | pass | P1 |  |
| 028 | super.method() 内部 this 仍为 derived instance | pass | P1 |  |
| 029 | generic class method 中 this 访问 T 字段 | pass | P1 |  |
| 030 | export/import class 后 method 使用 this 正常 | pass | P1 |  |
| 031 | constructor 中 this 访问不存在字段，checker 报错 | fail_compile | P0 |  |
| 032 | constructor 中 this.method() 参数错误，checker 报错 | fail_compile | P0 |  |
| 033 | constructor 中通过 this 访问 static member，checker 报错或边界记录 | fail_compile | P0 |  |
| 034 | derived constructor 中 super() 前访问 this，checker 报错 | fail_compile | P0 |  |
| 035 | derived constructor 中 super() 前访问 this.field，checker 报错 | fail_compile | P0 |  |
| 036 | derived constructor 中 super() 前调用 this.method()，checker 报错 | fail_compile | P0 |  |
| 037 | derived constructor 部分路径未调用 super 后使用 this，checker 报错 | fail_compile | P0 |  |
| 038 | instance method 中 this 访问不存在字段，checker 报错 | fail_compile | P0 |  |
| 039 | instance method 中 this.method() 参数错误，checker 报错 | fail_compile | P0 |  |
| 040 | instance method 中修改 readonly field，checker 报错 | fail_compile | P0 |  |
| 041 | instance method 中 this.staticField 如 ArkTS 禁止，checker 报错 | fail_compile | P0 |  |
| 042 | static method 中 this 访问 instance field，checker 报错 | fail_compile | P0 |  |
| 043 | static method 中 this 调用 instance method，checker 报错 | fail_compile | P0 |  |
| 044 | field initializer 中 this 访问后序字段，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 045 | field initializer 中 this.method() 如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 046 | field initializer 中通过 this 访问 static field，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 047 | method 返回 this 但声明返回不兼容类型，checker 报错 | fail_compile | P0 |  |
| 048 | 多态 this 类型不支持时标注 this，checker 报错 | fail_compile | P0 |  |
| 049 | normal nested function 中 this.field 如 ArkTS 禁止，checker 报错 | fail_compile | P0 |  |
| 050 | method extraction 未绑定引用如 ArkTS 拦截，checker 报错 | fail_compile | P0 |  |
| 051 | callback 函数类型 this 参数不兼容，checker 报错或边界记录 | fail_compile | P0 |  |
| 052 | static generic method 中 this 误用 class type parameter T，checker 报错 | fail_compile | P0 |  |
| 053 | object literal 赋给 class method type 时 this 不兼容，checker 报错 | fail_compile | P0 |  |
| 054 | interface method 返回 this 不支持时声明，checker 报错 | fail_compile | P0 |  |
| 055 | this 访问 private static member 的非法实例侧访问，checker 报错 | fail_compile | P0 |  |
| 056 | derived constructor 中 super() 前创建并调用 arrow 捕获 this，checker 报错 | fail_compile | P0 |  |
| 057 | method 中 this 访问 protected member 于非法上下文，checker 报错 | fail_compile | P0 |  |
| 058 | cross-module method this 类型丢失导致调用不兼容，checker 报错 | fail_compile | P0 |  |
| 059 | call/apply/bind 不支持时使用，checker 报错或边界记录 | fail_compile | P0 |  |
| 060 | this 作为返回值赋给不兼容 class type，checker 报错 | fail_compile | P0 |  |
| 061 | generic class method this 与 T 类型不兼容，checker 报错 | fail_compile | P0 |  |
| 062 | method extraction 后 this 为 undefined 导致 TypeError | fail_runtime | P1 |  |
| 063 | derived constructor this before super 未被静态拦截时 ReferenceError | fail_runtime | P1 |  |
| 064 | this.method 动态变为非 callable 后 TypeError | fail_runtime | P1 |  |
| 065 | callback 中 this 丢失导致 TypeError | fail_runtime | P1 |  |
| 066 | 非法 receiver 调用方法导致 this 类型不匹配 | fail_runtime | P1 |  |
| 067 | static method 提取后 this 丢失导致 static field 访问失败 | fail_runtime | P1 |  |
| 068 | field initializer 中 this.method 抛异常导致初始化中断 | fail_runtime | P1 |  |
| 069 | super.method 内部 this 为错误 receiver 的动态边界 | fail_runtime | P1 |  |
| 070 | object literal method this 丢失运行时对照 | fail_runtime | P1 |  |
| 071 | call/apply/bind 改变 this 后访问缺失字段 | fail_runtime | P1 |  |
| 072 | 多态 this type 支持边界 | boundary | P1 |  |
| 073 | 显式 this 参数支持边界 | boundary | P1 |  |
| 074 | field initializer 使用 this 支持边界 | boundary | P1 |  |
| 075 | field initializer 调用 this.method() 支持边界 | boundary | P1 |  |
| 076 | method extraction 是否被 checker 拦截边界 | boundary | P1 |  |
| 077 | static method 中 this 类型为 constructor/static side 边界 | boundary | P1 |  |
| 078 | this before super 是 compile-time 还是 runtime 边界 | boundary | P1 |  |
| 079 | arrow function 捕获 this 是否与 ES2022 一致边界 | boundary | P1 |  |
| 080 | normal nested function 中 this 行为边界 | boundary | P1 |  |
| 081 | call/apply/bind 支持边界 | boundary | P1 |  |
| 082 | object literal method this 与 class method this 对比边界 | boundary | P1 |  |
| 083 | this 与 field：this.field 读写 | integration | P0 |  |
| 084 | this 与 constructor：constructor 参数赋值到 this.field | integration | P0 |  |
| 085 | this 与 super：super() 后 this 可用 | integration | P0 |  |
| 086 | this 与 override：base method 中 this 指向 derived instance | integration | P0 |  |
| 087 | this 与 super.method：receiver 仍为 derived instance | integration | P0 |  |
| 088 | this 与 initialization order：Base constructor 调用 override method | integration | P0 |  |
| 089 | this 与 visibility：private/protected/public member | integration | P0 |  |
| 090 | this 与 readonly：constructor 初始化 readonly，method 修改报错 | integration | P0 |  |
| 091 | this 与 abstract：abstract class concrete method 中 this | integration | P0 |  |
| 092 | this 与 interface：class 实现 interface method 时使用 this | integration | P0 |  |
| 093 | this 与 generic：generic class method 访问 T 字段 | integration | P0 |  |
| 094 | this 与 object literal：method this 运行时对照 | integration | P0 |  |
| 095 | this 与 module：跨模块 method extraction 边界 | integration | P0 |  |
| 096 | this 与 static：static inherited method this 指向 derived class | integration | P0 |  |
| 097 | 回归：this before super 未报错 | regression | P0 |  |
| 098 | 回归：static method 中 this 访问 instance field 未报错 | regression | P0 |  |
| 099 | 回归：instance method 中 this.staticField 规则漂移 | regression | P0 |  |
| 100 | 回归：method extraction this 丢失未记录 | regression | P0 |  |
| 101 | 回归：super.method receiver 错误绑定 | regression | P0 |  |
| 102 | 回归：arrow function lexical this 错误 | regression | P0 |  |
| 103 | 回归：generic class this 与 T 类型丢失 | regression | P0 |  |
| 104 | 回归：跨模块 method this 类型丢失 | regression | P0 |  |
