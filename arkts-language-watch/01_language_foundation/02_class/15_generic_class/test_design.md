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
| 001 | generic class | pass | P0 | 初始设计点 |
| 002 | generic field | fail_compile | P0 | 初始设计点 |
| 003 | generic method | boundary | P0 | 初始设计点 |
| 004 | generic constructor 使用 | fail_runtime | P0 | 初始设计点 |
| 005 | 泛型约束 | integration | P0 | 初始设计点 |
| 006 | 默认泛型参数 | regression | P0 | 初始设计点 |
| 007 | 泛型继承 | pass | P0 | 初始设计点 |
| 008 | 泛型 implements interface | fail_compile | P0 | 初始设计点 |
| 009 | 类型擦除 | boundary | P1 | 初始设计点 |
| 010 | 泛型静态成员是否可使用 T | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_GENERIC_CLASS_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 generic class 声明、显式类型实参、字段/方法/constructor 使用 T、约束、继承、implements、abstract、module 正向场景。

## Compile Negative Cases

覆盖类型实参个数、T 赋值、约束、static 使用 T、compatibility、implements、inheritance、override、abstract 和 module 负向。

## Runtime Error Cases

泛型错误主要属于 compile-time boundary；运行时只记录 class constructor、type erasure、dynamic/ESObject 和方法体异常边界。

## Boundary Cases

覆盖类型实参推断、默认类型参数、variance、object literal、static side、type erasure、dynamic boundary。

## Type System Cases

覆盖泛型类与 class type、interface、object literal、union/null、function type、readonly、visibility、constraints 的交叉。

## Inheritance / Integration Cases

覆盖泛型类与 field、method、constructor、inheritance、super、override、abstract、interface、visibility、static、readonly、module 的组合。

## ArkTS Static Boundary Cases

generic class 是 ArkTS 静态类型系统能力，不是 ECMAScript 运行时语法；test262 不直接覆盖泛型类型检查。

## test262 Candidate Cases

test262 仅用于普通 class constructor、prototype、instanceof、fields、methods、inheritance、static members 的运行时交叉验证。

## Regression Cases

记录类型实参、constructor 参数、约束、compatibility、static T、interface implements 和跨模块 generic 信息丢失回归。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | 声明单类型参数泛型类 Box<T> | pass | P0 |  |
| 002 | 声明多类型参数泛型类 Pair<K, V> | pass | P0 |  |
| 003 | 类型参数用于字段类型 value:T | pass | P0 |  |
| 004 | 类型参数用于 constructor 参数类型 | pass | P0 |  |
| 005 | 类型参数用于 method 参数类型 | pass | P0 |  |
| 006 | 类型参数用于 method 返回类型 | pass | P0 |  |
| 007 | 类型参数用于数组类型 T[] | pass | P0 |  |
| 008 | 类型参数用于 nullable / union 类型，如 ArkTS 支持 | pass | P0 |  |
| 009 | 显式类型实参 new Box<number>(1) | pass | P0 |  |
| 010 | 显式类型实参 new Box<string>('x') | pass | P0 |  |
| 011 | 类型实参与 constructor 参数一致 | pass | P0 |  |
| 012 | 类型实参为 class type | pass | P0 |  |
| 013 | 类型实参为 interface type | pass | P0 |  |
| 014 | 类型实参为 array type | pass | P0 |  |
| 015 | 类型实参为 generic class type | pass | P0 |  |
| 016 | 类型实参推断，如 ArkTS 支持 | pass | P0 |  |
| 017 | constructor 中初始化 T 字段 | pass | P0 |  |
| 018 | 方法中读取 T 字段并返回 T | pass | P0 |  |
| 019 | 方法中写入与 T 一致的值 | pass | P0 |  |
| 020 | readonly value:T 由 constructor 初始化 | pass | P0 |  |
| 021 | private value:T 类内访问 | pass | P0 |  |
| 022 | protected value:T 子类访问 | pass | P0 |  |
| 023 | generic class 中 generic method 使用 U | pass | P1 |  |
| 024 | method 同时使用 class T 和 method U | pass | P1 |  |
| 025 | T extends interface 后访问 interface 成员 | pass | P1 |  |
| 026 | T extends class 后访问 base public 成员 | pass | P1 |  |
| 027 | 默认类型参数省略时使用默认类型，如 ArkTS 支持 | pass | P1 |  |
| 028 | generic class extends ordinary class | pass | P1 |  |
| 029 | ordinary class extends instantiated generic class | pass | P1 |  |
| 030 | generic class extends generic class 并传递 T | pass | P1 |  |
| 031 | generic class implements generic interface<T> | pass | P1 |  |
| 032 | generic abstract class 由 concrete subclass 指定 T 实现 | pass | P1 |  |
| 033 | export generic class 后 import 并实例化 | pass | P1 |  |
| 034 | 类型实参与 constructor 参数不一致，checker 报错 | fail_compile | P0 |  |
| 035 | 类型实参个数不足，checker 报错 | fail_compile | P0 |  |
| 036 | 类型实参个数过多，checker 报错 | fail_compile | P0 |  |
| 037 | 写入与 T 不一致的值，checker 报错 | fail_compile | P0 |  |
| 038 | T[] 字段写入不兼容元素，checker 报错 | fail_compile | P0 |  |
| 039 | readonly T field 外部赋值，checker 报错 | fail_compile | P0 |  |
| 040 | static value:T 如 ArkTS 禁止，checker 报错 | fail_compile | P0 |  |
| 041 | static method 直接使用 class T，如 ArkTS 禁止，checker 报错 | fail_compile | P0 |  |
| 042 | 未约束 T 访问成员，checker 报错 | fail_compile | P0 |  |
| 043 | 类型实参不满足 class 约束，checker 报错 | fail_compile | P0 |  |
| 044 | 类型实参不满足 interface 约束，checker 报错 | fail_compile | P0 |  |
| 045 | 默认类型参数不满足约束，checker 报错 | fail_compile | P0 |  |
| 046 | 必选类型参数出现在默认类型参数之后，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 047 | method 类型参数与 class 类型参数同名，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 048 | generic method 类型实参不满足约束，checker 报错 | fail_compile | P0 |  |
| 049 | Box<string> 不能赋给 Box<number>，checker 报错 | fail_compile | P0 |  |
| 050 | Box<Derived> 与 Box<Base> 不满足 ArkTS variance 规则，checker 报错 | fail_compile | P0 |  |
| 051 | generic class implements generic interface 缺少成员，checker 报错 | fail_compile | P0 |  |
| 052 | generic class implements instantiated interface 成员类型不兼容，checker 报错 | fail_compile | P0 |  |
| 053 | ordinary class extends instantiated generic class 时 super 参数错误，checker 报错 | fail_compile | P0 |  |
| 054 | generic class extends generic class 传递类型参数错误，checker 报错 | fail_compile | P0 |  |
| 055 | generic override 参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 056 | generic override 返回类型不兼容，checker 报错 | fail_compile | P0 |  |
| 057 | generic abstract method 实现参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 058 | generic abstract class 直接 new，checker 报错 | fail_compile | P0 |  |
| 059 | 类型参数在运行时值位置使用，checker 报错 | fail_compile | P0 |  |
| 060 | Box<number>.staticMember 语法不支持时使用，checker 报错 | fail_compile | P0 |  |
| 061 | object literal 赋给 generic class type 不满足规则，checker 报错 | fail_compile | P0 |  |
| 062 | 跨模块 generic class 类型实参错误，checker 报错 | fail_compile | P0 |  |
| 063 | generic constructor overload 与 T 不兼容，checker 报错 | fail_compile | P0 |  |
| 064 | ESObject/dynamic 传入静态可见的不兼容值，checker 报错 | fail_compile | P0 |  |
| 065 | generic interface 约束与 class 约束不一致，checker 报错 | fail_compile | P0 |  |
| 066 | generic readonly field 初始化不满足 T，checker 报错 | fail_compile | P0 |  |
| 067 | generic static field 使用 T，checker 报错或边界记录 | fail_compile | P0 |  |
| 068 | generic method 返回 T 但返回不兼容值，checker 报错 | fail_compile | P0 |  |
| 069 | generic class 缺少 interface member，checker 报错 | fail_compile | P0 |  |
| 070 | generic class 类型实参推断支持边界 | boundary | P1 |  |
| 071 | 类型参数命名与普通变量同名边界 | boundary | P1 |  |
| 072 | 未使用的类型参数是否允许边界 | boundary | P1 |  |
| 073 | nested type / local function 中 T 作用域边界 | boundary | P1 |  |
| 074 | union/object 约束支持边界 | boundary | P1 |  |
| 075 | 默认类型参数支持边界 | boundary | P1 |  |
| 076 | Box<Derived> 与 Box<Base> variance 边界 | boundary | P1 |  |
| 077 | private/protected T field 对 compatibility 的影响边界 | boundary | P1 |  |
| 078 | generic class 与 object literal compatibility 边界 | boundary | P1 |  |
| 079 | 类型擦除后运行时无 T 边界 | boundary | P1 |  |
| 080 | ESObject / dynamic 绕过泛型检查边界 | boundary | P1 |  |
| 081 | generic static side 与实例化类型无关边界 | boundary | P1 |  |
| 082 | generic class constructor 被普通调用抛 TypeError | fail_runtime | P1 |  |
| 083 | 类型擦除后 dynamic 传入错误类型导致方法体异常 | fail_runtime | P1 |  |
| 084 | generic method 内部调用约束成员但动态对象缺失抛异常 | fail_runtime | P1 |  |
| 085 | constructor 中 T 字段初始化逻辑抛异常 | fail_runtime | P1 |  |
| 086 | generic inheritance 中 super() 抛异常 | fail_runtime | P1 |  |
| 087 | import generic class 失败导致模块运行时异常 | fail_runtime | P1 |  |
| 088 | generic class 与 field：value:T 读写 | integration | P0 |  |
| 089 | generic class 与 method：参数和返回 T | integration | P0 |  |
| 090 | generic class 与 constructor：constructor 初始化 T 字段 | integration | P0 |  |
| 091 | generic class 与 readonly：readonly T field | integration | P0 |  |
| 092 | generic class 与 visibility：private/protected T field | integration | P0 |  |
| 093 | generic class 与 inheritance：derived 传递 T 给 base | integration | P0 |  |
| 094 | generic class 与 super：super() 参数类型检查 | integration | P0 |  |
| 095 | generic class 与 override：override method 使用 T | integration | P0 |  |
| 096 | generic class 与 abstract：abstract method 参数/返回 T | integration | P0 |  |
| 097 | generic class 与 interface：implements generic interface<T> | integration | P0 |  |
| 098 | generic class 与 static：static generic method 使用 U | integration | P0 |  |
| 099 | generic class 与 module：export/import generic class | integration | P0 |  |
| 100 | generic class 与 class type：Box<T> 作为参数和返回值 | integration | P0 |  |
| 101 | generic class 与 object literal compatibility | integration | P0 |  |
| 102 | generic class 与 union/null type | integration | P0 |  |
| 103 | generic class 与 type erasure runtime contrast | integration | P0 |  |
| 104 | 回归：类型实参个数错误未报错 | regression | P0 |  |
| 105 | 回归：constructor 参数与 T 不一致未报错 | regression | P0 |  |
| 106 | 回归：未约束 T 访问成员未报错 | regression | P0 |  |
| 107 | 回归：违反 generic constraint 未报错 | regression | P0 |  |
| 108 | 回归：Box<string> 赋给 Box<number> 未报错 | regression | P0 |  |
| 109 | 回归：static member 错误使用 class T 未报错 | regression | P0 |  |
| 110 | 回归：generic interface implements 类型丢失 | regression | P0 |  |
| 111 | 回归：跨模块 generic 约束丢失 | regression | P0 |  |
