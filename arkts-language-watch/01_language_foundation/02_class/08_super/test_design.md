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
| 001 | 派生类 constructor 中 super() 调用通过 | pass | P0 | 初始设计点 |
| 002 | super() 前访问 this 报错 | fail_compile | P0 | 初始设计点 |
| 003 | 未调用 super() 报错 | boundary | P0 | 初始设计点 |
| 004 | super.method() 调用基类方法通过 | fail_runtime | P0 | 初始设计点 |
| 005 | super.method 参数类型错误报错 | integration | P0 | 初始设计点 |
| 006 | super 访问基类字段支持情况确认 | regression | P0 | 初始设计点 |
| 007 | 非派生类中使用 super 报错 | pass | P0 | 初始设计点 |
| 008 | static method 中 super.staticMethod 调用 | fail_compile | P0 | 初始设计点 |
| 009 | arrow function 中 super 捕获按支持情况确认 | boundary | P1 | 初始设计点 |
| 010 | super() 调用参数传递到基类 constructor | fail_runtime | P1 | 初始设计点 |
| 011 | 多层继承 super 链调用 | integration | P1 | 初始设计点 |
| 012 | super 调用抽象方法边界 | regression | P1 | 初始设计点 |
| 013 | super 与 override 组合 | pass | P1 | 初始设计点 |
| 014 | super 与 private/protected 成员访问限制 | fail_compile | P1 | 初始设计点 |
| 015 | super 在 field initializer 中使用边界 | boundary | P1 | 初始设计点 |

<!-- CLASS_SUPER_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 `super()`、`super.method()`、static super、getter/setter super、arrow lexical super 以及多层继承中的正向场景。

## Compile Negative Cases

覆盖非法 super 使用位置、this-before-super、参数类型不匹配、成员不存在、静态侧/实例侧混用、private/readonly/abstract 边界。

## Runtime Error Cases

覆盖未被静态检查前移的 ReferenceError、TypeError、super() abrupt completion、重复 super() 和动态 prototype 边界。

## Boundary Cases

覆盖 return 边界、初始化顺序、receiver 绑定、prototype lookup、字段/accessor 支持差异和 ArkTS 静态/动态边界。

## Type System Cases

覆盖 super() 参数检查、super.method() 参数和返回值检查、generic T 传递、protected/private/readonly 访问限制。

## Inheritance / Integration Cases

覆盖 `super` 与字段、方法、构造函数、继承、override、abstract、generic、static、module 的组合场景。

## ArkTS Static Boundary Cases

记录 ArkTS 静态语言中可能前移为编译期错误的 ECMA 运行时异常，包括 this-before-super、super() 重复调用、非 callable super.method 和非法成员访问。

## test262 Candidate Cases

参考 test262 中 super call、super property、derived constructor、this-before-super、static super、lexical super、accessor receiver、abrupt completion 方向。

## Regression Cases

记录 super receiver、初始化顺序、重复 super、static super 查找、多层继承和 generic 返回类型丢失等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | 派生类 constructor 中调用 super() 后实例化通过 | pass | P0 |  |
| 002 | super() 向基类 constructor 传递 number 参数并初始化基类字段 | pass | P0 |  |
| 003 | super() 向基类 constructor 传递 string 参数并初始化基类字段 | pass | P0 |  |
| 004 | super() 参数类型与基类 constructor 完全匹配 | pass | P0 |  |
| 005 | 派生类无显式 constructor 时默认调用基类 constructor | pass | P0 |  |
| 006 | 多层继承中 C constructor 调用 B super，B 调用 A super | pass | P0 |  |
| 007 | super() 后访问 this.field 并赋值通过 | pass | P0 |  |
| 008 | super() 后调用 this.method() 通过 | pass | P0 |  |
| 009 | super() 后初始化派生类字段通过 | pass | P0 |  |
| 010 | constructor 中只调用一次 super() 通过 | pass | P0 |  |
| 011 | 子类方法中调用基类实例方法 super.method() 通过 | pass | P0 |  |
| 012 | 覆盖方法中调用 super.method() 后追加派生类逻辑 | pass | P0 |  |
| 013 | super.method() 返回 number 并被派生类方法返回 | pass | P0 |  |
| 014 | super.method() 返回 string 并被派生类方法返回 | pass | P0 |  |
| 015 | super.method() 返回 object 并访问对象字段 | pass | P0 |  |
| 016 | super.method() 参数类型正确时调用通过 | pass | P0 |  |
| 017 | 子类方法中调用基类 protected 方法，按 ArkTS 支持情况通过 | pass | P0 |  |
| 018 | abstract class 中 concrete method 被子类通过 super.method() 调用 | pass | P0 |  |
| 019 | 子类实现 interface method 时复用基类同名 public 方法 | pass | P1 |  |
| 020 | generic base constructor 参数通过 super(value) 传递 | pass | P1 |  |
| 021 | generic base method 通过 super.method(value) 调用 | pass | P1 |  |
| 022 | super.method() 返回泛型 T 并赋值给 T 类型变量 | pass | P1 |  |
| 023 | 派生类 static method 中调用 super.staticMethod() 通过 | pass | P1 |  |
| 024 | 多层 static 继承中 super.staticMethod() 逐层调用通过 | pass | P1 |  |
| 025 | static method 中 super.staticMethod() 的 this 绑定为派生类 constructor | pass | P1 |  |
| 026 | 方法内 arrow function 捕获 super.method() 并调用通过，如 ArkTS 支持 | pass | P1 |  |
| 027 | constructor 内 arrow function 在 super() 后捕获 super.method()，如 ArkTS 支持 | pass | P1 |  |
| 028 | super 访问基类 getter 读取值，如 ArkTS 支持 getter | pass | P1 |  |
| 029 | super 调用基类 setter 写入值，如 ArkTS 支持 setter | pass | P1 |  |
| 030 | 非派生类 constructor 中调用 super()，checker 报错 | fail_compile | P0 |  |
| 031 | 普通实例方法中调用 super() 作为函数，parser/checker 报错 | fail_compile | P0 |  |
| 032 | static method 中调用 super() 作为函数，parser/checker 报错 | fail_compile | P0 |  |
| 033 | class 外部作用域使用 super，parser 报错 | fail_compile | P0 |  |
| 034 | 普通嵌套 function 中使用 super.method()，parser/checker 报错 | fail_compile | P0 |  |
| 035 | 派生类 constructor 中 super() 前访问 this，checker 报错 | fail_compile | P0 |  |
| 036 | 派生类 constructor 中 super() 前访问 this.field，checker 报错 | fail_compile | P0 |  |
| 037 | 派生类 constructor 中 super() 前给 this.field 赋值，checker 报错 | fail_compile | P0 |  |
| 038 | 派生类 constructor 中 super() 前调用 this.method()，checker 报错 | fail_compile | P0 |  |
| 039 | 派生类 constructor 中部分控制流路径未调用 super()，checker 报错或差异记录 | fail_compile | P0 |  |
| 040 | super() 参数类型与基类 constructor 不匹配，checker 报错 | fail_compile | P0 |  |
| 041 | super() 参数个数不足，checker 报错 | fail_compile | P0 |  |
| 042 | super() 参数个数过多且 ArkTS 不允许多余参数，checker 报错 | fail_compile | P0 |  |
| 043 | constructor 中静态可判定调用两次 super()，checker 报错或运行时边界记录 | fail_compile | P0 |  |
| 044 | loop 中调用 super() 导致初始化次数不确定，checker 报错或差异记录 | fail_compile | P0 |  |
| 045 | super.method() 参数类型不匹配，checker 报错 | fail_compile | P0 |  |
| 046 | super.method() 参数个数不足，checker 报错 | fail_compile | P0 |  |
| 047 | super.method() 参数个数过多且 ArkTS 不允许多余参数，checker 报错 | fail_compile | P0 |  |
| 048 | super.missingMethod() 调用不存在基类方法，checker 报错 | fail_compile | P0 |  |
| 049 | 实例方法中通过 super 访问基类 static method，checker 报错 | fail_compile | P0 |  |
| 050 | static method 中通过 super 访问基类实例方法，checker 报错 | fail_compile | P0 |  |
| 051 | super 访问基类 private method，checker 报错 | fail_compile | P0 |  |
| 052 | super 访问基类 private field，checker 报错 | fail_compile | P0 |  |
| 053 | super 写 readonly 字段，checker 报错，如支持 super field | fail_compile | P0 |  |
| 054 | 子类调用 super.abstractMethod() 但基类只有 abstract 声明无实现，checker 报错 | fail_compile | P0 |  |
| 055 | interface method 中误用 super 访问 interface 成员，checker 报错 | fail_compile | P0 |  |
| 056 | generic base constructor super(value) 传入不满足约束的值，checker 报错 | fail_compile | P1 |  |
| 057 | generic base method super.method(value) 参数不满足 T 约束，checker 报错 | fail_compile | P1 |  |
| 058 | 非派生类实例方法中使用 super.method()，checker 报错 | fail_compile | P1 |  |
| 059 | super 访问字段能力不支持时，super.field 作为 Unsupported/fail_compile 记录 | fail_compile | P1 |  |
| 060 | 派生类 constructor 中 return 前是否必须已调用 super() 的边界 | boundary | P1 |  |
| 061 | super() 前 return primitive/object 的 ECMA 与 ArkTS 边界 | boundary | P1 |  |
| 062 | super() 后 return primitive 的派生类 constructor 边界 | boundary | P1 |  |
| 063 | super() 后 return object 的派生类 constructor 边界 | boundary | P1 |  |
| 064 | Base field -> Base constructor -> Derived field -> Derived constructor 初始化顺序 | boundary | P1 |  |
| 065 | Base constructor 中调用可被 Derived override 的方法时 super/this 行为 | boundary | P1 |  |
| 066 | super.method() receiver 仍为当前 this 的边界验证 | boundary | P1 |  |
| 067 | super property lookup 从基类 prototype 开始的边界验证 | boundary | P1 |  |
| 068 | 基类 prototype 被动态修改后 super.method() 行为，如 ArkTS 允许 | boundary | P1 |  |
| 069 | super 访问不存在字段时是编译期错误还是运行时 undefined 边界 | boundary | P1 |  |
| 070 | super 访问 protected 字段/方法的 ArkTS 边界 | boundary | P1 |  |
| 071 | static super 与实例 super 同名成员解析边界 | boundary | P1 |  |
| 072 | arrow function 捕获 super 的 ArkTS 支持边界 | boundary | P1 |  |
| 073 | getter/setter super 访问的 ArkTS 支持边界 | boundary | P1 |  |
| 074 | this before super 未被静态拦截时运行期抛 ReferenceError | fail_runtime | P1 |  |
| 075 | constructor 中重复调用 super() 未被静态拦截时运行期抛异常 | fail_runtime | P1 |  |
| 076 | super.method 存在但动态变为非 callable 时抛 TypeError，如 ArkTS 允许 | fail_runtime | P1 |  |
| 077 | super.missingMethod() 动态场景调用 undefined 抛 TypeError，如 ArkTS 允许 | fail_runtime | P1 |  |
| 078 | 基类 constructor 抛异常导致 super() abrupt completion | fail_runtime | P1 |  |
| 079 | 基类 getter 在 super 访问时抛异常并向外传播，如支持 getter | fail_runtime | P1 |  |
| 080 | derived constructor 初始化失败后的对象不可用边界 | fail_runtime | P1 |  |
| 081 | super() 与字段初始化顺序集成：基类字段、基类 constructor、派生类字段、派生类 constructor | integration | P0 |  |
| 082 | super.method() 与 override 集成：子类覆盖后调用基类实现 | integration | P0 |  |
| 083 | super.method() 与 abstract class concrete method 集成 | integration | P1 |  |
| 084 | super 与 abstract method 实现边界集成 | integration | P1 |  |
| 085 | super 与 interface implements 集成：interface 无 super 实现 | integration | P1 |  |
| 086 | super() 与 generic base class constructor 参数 T 集成 | integration | P1 |  |
| 087 | super.method() 与 generic base method 返回 T 集成 | integration | P1 |  |
| 088 | super 与 protected 成员继承访问集成 | integration | P1 |  |
| 089 | super 与 private 成员不可访问集成 | integration | P1 |  |
| 090 | static super 与 static inheritance 集成 | integration | P1 |  |
| 091 | static super 与 static field 初始化顺序集成，如支持 static field | integration | P1 |  |
| 092 | super 与 readonly field 写入限制集成，如支持 super field | integration | P1 |  |
| 093 | super 与多层继承 A/B/C 方法调用链集成 | integration | P1 |  |
| 094 | super 与 module export/import class 继承跨文件集成 | integration | P1 |  |
| 095 | 回归：this before super 未被 checker 拦截导致运行时崩溃 | regression | P0 |  |
| 096 | 回归：super() 参数类型错误未报 checker 错误 | regression | P0 |  |
| 097 | 回归：super.method() receiver 错误绑定到基类实例 | regression | P0 |  |
| 098 | 回归：static super 错误查找实例 prototype | regression | P0 |  |
| 099 | 回归：多层继承 super.method() 跳过直接基类 | regression | P0 |  |
| 100 | 回归：super() 重复调用未报错 | regression | P0 |  |
| 101 | 回归：基类 constructor 抛异常后派生对象仍可访问 | regression | P0 |  |
| 102 | 回归：generic super.method() 返回类型丢失为 any | regression | P0 |  |
