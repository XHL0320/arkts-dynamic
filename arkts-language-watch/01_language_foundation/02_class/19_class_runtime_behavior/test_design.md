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
| 001 | instanceof | pass | P0 | 初始设计点 |
| 002 | prototype | fail_compile | P0 | 初始设计点 |
| 003 | constructor property | boundary | P0 | 初始设计点 |
| 004 | method on prototype | fail_runtime | P0 | 初始设计点 |
| 005 | field on instance | integration | P0 | 初始设计点 |
| 006 | static on constructor | regression | P0 | 初始设计点 |
| 007 | class cannot be called without new | pass | P0 | 初始设计点 |
| 008 | prototype 动态修改是否受 ArkTS 限制 | fail_compile | P0 | 初始设计点 |
| 009 | 正向基础场景 | boundary | P1 | 初始设计点 |
| 010 | 编译负向场景 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_RUNTIME_BEHAVIOR_DETAILED_WATCH_V1 -->

# Test Design

## Positive Cases

覆盖 class 运行时正向行为，包括 class value、instance creation、prototype behavior、constructor property、instanceof、method runtime、field runtime、static runtime、inheritance runtime 和 super runtime。

## Compile Negative Cases

覆盖 ArkTS parser/checker 提前拦截的运行时边界场景，包括 class constructor 普通调用、prototype mutation、call/apply/bind、#private、new.target、abstract instantiation、instanceof 非引用类型、dynamic property access 等。

## Runtime Error Cases

覆盖 ECMAScript class runtime error 场景，包括 constructor 普通调用 TypeError、method extraction this undefined、field initializer 抛异常、constructor 抛异常、static initializer 抛异常、this before super、super() 重复调用、instanceof 非法右操作数等。

## Boundary Cases

覆盖 prototype、constructor、instanceof、dynamic property、initialization abrupt completion、method extraction、static block 支持与否、readonly/private runtime vs compile-time 等边界。

## Type System vs Runtime Cases

覆盖 ArkTS 静态类型系统特性在运行时是否存在的对照场景，包括 interface、implements、generic、abstract、readonly、private/protected、type alias、class type annotation、object literal 结构兼容。

## Inheritance / Integration Cases

覆盖 runtime behavior 与 field、method、constructor、inheritance、super、static、this、abstract、interface、generic、readonly、visibility、module 的组合场景。

## ArkTS Static Boundary Cases

覆盖 ArkTS 静态语言中可能前移为编译期错误的运行时场景，包括 class constructor 普通调用、prototype mutation、call/apply/bind、#private、dynamic property access、abstract instantiation。

## test262 Candidate Cases

本目录与 test262 映射价值较高。应重点记录 ES2022 class runtime semantics，包括 class constructor、prototype、instanceof、super、method this binding、field initialization、static fields、inheritance chain、abrupt completion。

## Regression Cases

记录 class constructor 普通调用拦截遗漏、prototype mutation 拦截遗漏、instanceof 非引用类型拦截遗漏、method extraction this 丢失、field initializer 使用 this 导致 runtime error、static initialization 中断、abstract class 运行时绕过等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | class 声明后类名作为运行时值存在，可赋值给变量 | pass | P0 | A. class constructor runtime value |
| 002 | class value 可用于 new 创建实例 | pass | P0 | A. class constructor runtime value |
| 003 | class value 赋值给变量后通过 new 调用 | pass | P0 | A. class constructor runtime value |
| 004 | class value 作为函数参数传递 | pass | P0 | A. class constructor runtime value |
| 005 | class value 作为函数返回值 | pass | P0 | A. class constructor runtime value |
| 006 | class value 与 instance value 在 typeof 中区分 | pass | P1 | A. class constructor runtime value |
| 007 | class value 与 ordinary function 的运行时差异 | pass | P1 | A. class constructor runtime value |
| 008 | new A() 创建实例对象 | pass | P0 | B. instance creation |
| 009 | 实例对象可访问实例字段 | pass | P0 | B. instance creation |
| 010 | 实例对象可调用实例方法 | pass | P0 | B. instance creation |
| 011 | constructor 中初始化字段后实例可读取 | pass | P0 | B. instance creation |
| 012 | 多次 new 创建不同实例 | pass | P0 | B. instance creation |
| 013 | 不同实例字段互不影响 | pass | P0 | B. instance creation |
| 014 | type annotation 不改变 runtime object | pass | P1 | B. instance creation |
| 015 | A.prototype 存在，需确认 ArkTS 是否暴露 | pass | P0 | C. prototype behavior |
| 016 | instance method 位于 prototype 上（需确认 ArkTS 行为） | pass | P0 | C. prototype behavior |
| 017 | instance field 位于 instance own property 上 | pass | P0 | C. prototype behavior |
| 018 | prototype method 被所有实例共享 | pass | P0 | C. prototype behavior |
| 019 | 实例自身没有 prototype method 的 own property | pass | P1 | C. prototype behavior |
| 020 | instance.constructor 指向 class constructor | pass | P0 | D. constructor property |
| 021 | prototype.constructor 指向 class constructor | pass | P0 | D. constructor property |
| 022 | derived instance.constructor 行为 | pass | P1 | D. constructor property |
| 023 | constructor property 跨模块行为 | pass | P1 | D. constructor property |
| 024 | a instanceof A 返回 true | pass | P0 | E. instanceof |
| 025 | derived instanceof Derived 返回 true | pass | P0 | E. instanceof |
| 026 | derived instanceof Base 返回 true | pass | P0 | E. instanceof |
| 027 | base instanceof Derived 返回 false | pass | P0 | E. instanceof |
| 028 | object literal 不满足 instanceof A | pass | P1 | E. instanceof |
| 029 | 不同 class 但结构相同，instanceof 不等价 | pass | P1 | E. instanceof |
| 030 | 实例方法调用时 this 为当前实例 | pass | P0 | F. method runtime behavior |
| 031 | override 后动态分派调用子类方法 | pass | P0 | F. method runtime behavior |
| 032 | base type 引用指向 derived instance 调用 override method | pass | P0 | F. method runtime behavior |
| 033 | super.method runtime lookup 从基类 prototype 查找 | pass | P0 | F. method runtime behavior |
| 034 | super.method receiver 是当前 this | pass | P0 | F. method runtime behavior |
| 035 | method 中抛异常向外传播 | pass | P1 | F. method runtime behavior |
| 036 | instance field 是 instance own property | pass | P0 | G. field runtime behavior |
| 037 | 每个实例独立持有 instance field | pass | P0 | G. field runtime behavior |
| 038 | field initializer 每次 new 都执行 | pass | P0 | G. field runtime behavior |
| 039 | field initializer 按声明顺序执行 | pass | P0 | G. field runtime behavior |
| 040 | derived field 在 super() 后初始化 | pass | P0 | G. field runtime behavior |
| 041 | static field 位于 constructor object 上 | pass | P0 | H. static runtime behavior |
| 042 | static method 位于 constructor object 上 | pass | P0 | H. static runtime behavior |
| 043 | instance 不能访问 static member 或按 ArkTS 行为记录 | pass | P1 | H. static runtime behavior |
| 044 | derived class 继承 static method | pass | P0 | H. static runtime behavior |
| 045 | static method 中 this 指向 class constructor | pass | P1 | H. static runtime behavior |
| 046 | 派生类调用 inherited static method 时 this 指向 derived constructor（需确认） | pass | P1 | H. static runtime behavior |
| 047 | static field 初始化只执行一次 | pass | P0 | H. static runtime behavior |
| 048 | derived instance 原型链包含 Derived.prototype | pass | P0 | I. inheritance runtime behavior |
| 049 | derived instance 原型链包含 Base.prototype | pass | P0 | I. inheritance runtime behavior |
| 049 | derived constructor 调用 super() | pass | P0 | I. inheritance runtime behavior |
| 050 | Base field -> Base ctor -> Derived field -> Derived ctor 初始化顺序 | pass | P0 | I. inheritance runtime behavior |
| 051 | 多层继承 runtime chain | pass | P1 | I. inheritance runtime behavior |
| 052 | super.method 从基类 prototype 查找 | pass | P0 | J. super runtime behavior |
| 053 | super.method 参数传递和返回值 | pass | P0 | J. super runtime behavior |
| 054 | static super.method 从基类 constructor object 查找 | pass | P1 | J. super runtime behavior |
| 055 | export class 后 import new 创建实例 | pass | P0 | N. module runtime |
| 056 | 跨模块 instanceof | pass | P1 | N. module runtime |
| 057 | class constructor 普通调用 A()，checker 报错 | fail_compile | P0 | K. class cannot be called without new |
| 058 | class constructor 赋值给变量后普通调用，checker 报错 | fail_compile | P0 | K. class cannot be called without new |
| 059 | class constructor 作为 callback 普通调用，checker 报错 | fail_compile | P0 | K. class cannot be called without new |
| 060 | Function.call/apply 使用 class constructor，checker 报错 | fail_compile | P0 | K. class cannot be called without new |
| 061 | Function.bind 使用 class constructor，checker 报错 | fail_compile | P0 | K. class cannot be called without new |
| 062 | abstract class 实例化，checker 报错 | fail_compile | P0 | K. class cannot be called without new |
| 063 | instanceof 右操作数为非引用类型，checker 报错 | fail_compile | P0 | E. instanceof |
| 064 | instanceof 右操作数为 generic class B\<T\>，checker 报错 | fail_compile | P0 | E. instanceof |
| 065 | instanceof 右操作数为 interface，checker 报错 | fail_compile | P0 | E. instanceof |
| 066 | prototype 赋值 A.prototype = {}，checker 报错 | fail_compile | P0 | C. prototype behavior |
| 067 | prototype 动态修改 A.prototype.method = fn，checker 报错 | fail_compile | P0 | C. prototype behavior |
| 068 | #private field 使用，checker 报错 | fail_compile | P0 | ArkTS Boundary |
| 069 | new.target 使用，checker 报错 | fail_compile | P0 | ArkTS Boundary |
| 070 | 多个 static block，checker 报错 | fail_compile | P0 | ArkTS Boundary |
| 071 | 派生类 constructor super() 前访问 this，checker 报错 | fail_compile | P0 | I. inheritance runtime behavior |
| 072 | 派生类 constructor super() 前访问 this.field，checker 报错 | fail_compile | P0 | I. inheritance runtime behavior |
| 073 | 派生类 constructor super() 前调用 this.method()，checker 报错 | fail_compile | P0 | I. inheritance runtime behavior |
| 074 | dynamic property access a['x']，checker 报错 | fail_compile | P1 | M. dynamic boundary |
| 075 | 动态添加属性到 object a.newProp = 1，checker 报错 | fail_compile | P0 | M. dynamic boundary |
| 076 | class expression 使用，checker 报错 | fail_compile | P1 | ArkTS Boundary |
| 077 | constructor 普通调用 TypeError（如未被 checker 拦截到达 runtime） | fail_runtime | P0 | K. class cannot be called without new |
| 078 | method extraction 后 this 为 undefined，访问 this.field TypeError | fail_runtime | P0 | F. method runtime behavior |
| 079 | field initializer 抛异常导致实例创建中断 | fail_runtime | P0 | G. field runtime behavior |
| 080 | constructor 抛异常导致实例创建失败 | fail_runtime | P0 | O. runtime error |
| 081 | static initializer 抛异常导致 class evaluation 失败 | fail_runtime | P0 | H. static runtime behavior |
| 082 | super() 内 base constructor 抛异常后 derived field 不初始化 | fail_runtime | P0 | I. inheritance runtime behavior |
| 083 | derived field initializer 抛异常后 constructor 剩余语句不执行 | fail_runtime | P0 | G. field runtime behavior |
| 084 | field initializer 使用 this 导致 runtime error | fail_runtime | P0 | G. field runtime behavior |
| 085 | field with late initialization 读取未初始化字段 runtime error | fail_runtime | P0 | G. field runtime behavior |
| 086 | super.method 不存在 TypeError（如未被 checker 拦截） | fail_runtime | P1 | J. super runtime behavior |
| 087 | super.method 非 callable TypeError（如未被 checker 拦截） | fail_runtime | P1 | J. super runtime behavior |
| 088 | instanceof 右操作数非 constructor TypeError（如未被 checker 拦截） | fail_runtime | P1 | E. instanceof |
| 089 | static block 抛异常（如支持 static block） | fail_runtime | P1 | H. static runtime behavior |
| 090 | Base static initializer 抛异常导致 Derived static 不执行 | fail_runtime | P1 | H. static runtime behavior |
| 091 | A.prototype 存在与否边界 | boundary | P0 | C. prototype behavior |
| 092 | prototype method 动态修改后实例调用边界（如 ArkTS 允许） | boundary | P0 | C. prototype behavior |
| 093 | prototype 删除 method 后实例调用边界 | boundary | P1 | C. prototype behavior |
| 094 | constructor property 被覆盖后的边界 | boundary | P1 | D. constructor property |
| 095 | constructor property 在继承链中的查找 | boundary | P1 | D. constructor property |
| 096 | readonly field runtime 是否可写 | boundary | P0 | L. type-system-only features |
| 097 | private/protected field runtime 是否普通属性 | boundary | P0 | L. type-system-only features |
| 098 | generic type argument 运行时不可见 | boundary | P0 | L. type-system-only features |
| 099 | abstract class runtime 边界 | boundary | P0 | L. type-system-only features |
| 100 | static block 支持与否边界 | boundary | P0 | H. static runtime behavior |
| 101 | ESObject 传入 class typed API 的运行时边界 | boundary | P1 | M. dynamic boundary |
| 102 | JSON.stringify 与 class instance 边界 | boundary | P1 | M. dynamic boundary |
| 103 | class evaluation order 观测边界 | boundary | P1 | O. runtime error |
| 104 | object literal 结构兼容不改变 prototype | integration | P0 | L. type-system-only features |
| 105 | class implements interface 运行时无检查 | integration | P0 | L. type-system-only features |
| 106 | generic class instance instanceof 不受泛型参数影响 | integration | P0 | E. instanceof + generic |
| 107 | readonly 字段与继承组合 runtime behavior | integration | P0 | G. field + readonly + inheritance |
| 108 | private/protected 字段与继承 runtime behavior | integration | P0 | G. field + visibility + inheritance |
| 109 | super.method 与 override 方法组合 runtime behavior | integration | P0 | F. method + super + override |
| 110 | constructor 抛异常与继承链组合 | integration | P0 | I. inheritance + constructor error |
| 111 | static method inheritance 与 derived constructor object 组合 | integration | P0 | H. static + inheritance |
| 112 | field initializer 顺序与继承组合 | integration | P0 | G. field + inheritance + order |
| 113 | module export class 与 instanceof 跨模块组合 | integration | P1 | N. module runtime |
| 114 | module import 后 static field 初始化时机组合 | integration | P1 | N. module runtime |
| 115 | circular import 中 class evaluation 边界组合 | integration | P1 | N. module runtime |
| 116 | interface 与 instanceof 组合（interface 不适用 instanceof） | integration | P0 | L. type-system-only features |
| 117 | 回归：class constructor 普通调用未被 checker 拦截 | regression | P0 | K. class cannot be called without new |
| 118 | 回归：prototype mutation 未被 checker 拦截 | regression | P0 | C. prototype behavior |
| 119 | 回归：instanceof 非引用类型未被 checker 拦截 | regression | P0 | E. instanceof |
| 120 | 回归：method extraction this 丢失导致 runtime error | regression | P0 | F. method runtime behavior |
| 121 | 回归：field initializer 使用 this 导致 runtime error | regression | P0 | G. field runtime behavior |
| 122 | 回归：static initialization 中断后 class 不可用 | regression | P0 | H. static runtime behavior |
