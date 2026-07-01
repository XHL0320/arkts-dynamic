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
| 001 | class 作为实例类型 | pass | P0 | 初始设计点 |
| 002 | class 作为运行时值 | fail_compile | P0 | 初始设计点 |
| 003 | constructor type | boundary | P0 | 初始设计点 |
| 004 | typeof Class | fail_runtime | P0 | 初始设计点 |
| 005 | instance side vs static side | integration | P0 | 初始设计点 |
| 006 | abstract class type | regression | P0 | 初始设计点 |
| 007 | class type compatibility | pass | P0 | 初始设计点 |
| 008 | private/protected 对类型兼容的影响 | fail_compile | P0 | 初始设计点 |
| 009 | 正向基础场景 | boundary | P1 | 初始设计点 |
| 010 | 编译负向场景 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_TYPE_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 class 作为实例类型、class 作为 constructor value、静态侧/实例侧访问、继承赋值、interface/abstract/generic/module 正向场景。

## Compile Negative Cases

覆盖值空间/类型空间混用、static/instance 混用、base/derived 错误赋值、private/protected 兼容、generic 参数错误和 unsupported constructor type。

## Runtime Error Cases

覆盖 class constructor 普通调用、动态构造非 constructor、instanceof 右侧非法、prototype 动态修改和模块加载失败等运行时边界。

## Boundary Cases

覆盖 `typeof Class`、construct signature、结构兼容/名义兼容、object literal、class expression、类型擦除、跨模块同名 class。

## Type System Cases

覆盖 instance type、constructor type、static side、instance side、base/derived assignability、interface type、abstract class type、generic class type。

## Integration Cases

覆盖 class type 与 interface、abstract、generic、module、object literal、function type、null safety 的组合场景。

## ArkTS Static Boundary Cases

class type 是 ArkTS 静态类型系统概念，不是 ECMAScript 类型；class value 才是 ECMAScript runtime constructor。

## test262 Candidate Cases

test262 只用于 class constructor、prototype、instanceof、class cannot be called without new、static members runtime behavior 等交叉验证。

## Regression Cases

记录值/类型空间混用、static/instance 混用、base/derived 赋值、private/protected 兼容、generic 类型参数和跨模块导入回归。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | let a: A = new A() 使用 class 作为实例类型通过 | pass | P0 |  |
| 002 | 函数参数类型为 class instance type，传入 new A() 通过 | pass | P0 |  |
| 003 | 函数返回值类型为 class instance type，返回 new A() 通过 | pass | P0 |  |
| 004 | Array<A> 保存多个 A 实例通过 | pass | P0 |  |
| 005 | nullable class type A | null 接收 new A() 和 null，如 ArkTS 支持 | pass | P0 |  |
| 006 | union class type A | B 接收 A/B 实例，如 ArkTS 支持 | pass | P0 |  |
| 007 | class type 字段保存另一个 class 实例 | pass | P0 |  |
| 008 | interface property 类型为 class type，并由 class instance 赋值 | pass | P0 |  |
| 009 | class type 作为 generic type argument，例如 Box<A> | pass | P0 |  |
| 010 | class 名作为 constructor value 赋给变量 | pass | P0 |  |
| 011 | class value 作为函数参数传递 | pass | P0 |  |
| 012 | class value 作为函数返回值返回 | pass | P0 |  |
| 013 | class value 通过 new 创建实例 | pass | P0 |  |
| 014 | class export/import 后作为类型使用 | pass | P0 |  |
| 015 | class export/import 后作为值 new 使用 | pass | P0 |  |
| 016 | instance type 可访问实例字段 | pass | P0 |  |
| 017 | instance type 可访问实例方法 | pass | P0 |  |
| 018 | class value 可访问 static field | pass | P0 |  |
| 019 | class value 可访问 static method | pass | P1 |  |
| 020 | derived instance 赋值给 base class type | pass | P1 |  |
| 021 | class instance 赋值给 interface type，如 ArkTS 允许 | pass | P1 |  |
| 022 | abstract class type 接收 concrete subclass instance | pass | P1 |  |
| 023 | generic class instance type Box<number> 读写 number 字段 | pass | P1 |  |
| 024 | generic class type 作为函数参数 | pass | P1 |  |
| 025 | generic class type 作为返回值 | pass | P1 |  |
| 026 | instanceof class 运行时返回 true | pass | P1 |  |
| 027 | instance constructor property 指向 class constructor 的运行时边界 | pass | P1 |  |
| 028 | let ctor: typeof A = A 并 new ctor()，如 ArkTS 支持 | pass | P1 |  |
| 029 | 未实例化 class value 赋给 instance type，checker 报错 | fail_compile | P0 |  |
| 030 | class value 与 instance value 混用，checker 报错 | fail_compile | P0 |  |
| 031 | class value 与普通 object value 混用，checker 报错 | fail_compile | P0 |  |
| 032 | class value 不能当普通函数调用，checker 报错或运行时边界记录 | fail_compile | P0 |  |
| 033 | instance type 不能访问 static field，checker 报错 | fail_compile | P0 |  |
| 034 | instance type 不能访问 static method，checker 报错 | fail_compile | P0 |  |
| 035 | class value 不能直接访问 instance field，checker 报错 | fail_compile | P0 |  |
| 036 | class value 不能直接访问 instance method，checker 报错 | fail_compile | P0 |  |
| 037 | base instance 赋给 derived class type，checker 报错 | fail_compile | P0 |  |
| 038 | 两个不兼容 class instance 互赋，checker 报错 | fail_compile | P0 |  |
| 039 | private 成员导致两个 class type 不兼容，checker 报错 | fail_compile | P0 |  |
| 040 | protected 成员导致两个 class type 不兼容，checker 报错 | fail_compile | P0 |  |
| 041 | object literal 缺少 class public field 时赋给 class type，checker 报错 | fail_compile | P0 |  |
| 042 | object literal 不能满足 class private/protected 成员，checker 报错 | fail_compile | P0 |  |
| 043 | interface type 不能直接 new，checker 报错 | fail_compile | P0 |  |
| 044 | interface type 与 class value 混用，checker 报错 | fail_compile | P0 |  |
| 045 | generic class type 参数不匹配，checker 报错 | fail_compile | P0 |  |
| 046 | generic class type 实参违反约束，checker 报错 | fail_compile | P0 |  |
| 047 | abstract class 直接 new，checker 报错 | fail_compile | P0 |  |
| 048 | constructor type 构造参数不匹配，checker 报错，如支持 typeof Class | fail_compile | P0 |  |
| 049 | instance member 被当作 constructor type 成员访问，checker 报错 | fail_compile | P0 |  |
| 050 | constructor type 不支持时使用 typeof Class 类型，记录 Unsupported/fail_compile | fail_compile | P0 |  |
| 051 | class expression 不支持时使用 class expression，parser/checker 报错 | fail_compile | P0 |  |
| 052 | anonymous class 类型不支持时使用，parser/checker 报错 | fail_compile | P0 |  |
| 053 | import class type/value 混用导致 checker 报错 | fail_compile | P1 |  |
| 054 | instance value 当函数调用，checker 报错 | fail_compile | P1 |  |
| 055 | typeof Class 构造器类型是否支持的 ArkTS 边界 | boundary | P1 |  |
| 056 | construct signature 是否支持的 ArkTS 边界 | boundary | P1 |  |
| 057 | typeof Derived 赋给 typeof Base 的 static side 兼容边界 | boundary | P1 |  |
| 058 | 两个 public 结构相同 class 是否互相赋值的结构/名义边界 | boundary | P1 |  |
| 059 | readonly 成员对 class type compatibility 的影响边界 | boundary | P1 |  |
| 060 | object literal 是否可赋给 class type 的 ArkTS 边界 | boundary | P1 |  |
| 061 | class 未 implements 但结构满足 interface 是否可赋值边界 | boundary | P1 |  |
| 062 | class expression / anonymous class 类型支持边界 | boundary | P1 |  |
| 063 | 跨模块同名 class 的兼容边界 | boundary | P1 |  |
| 064 | 类型擦除后运行时无 class type 检查边界 | boundary | P1 |  |
| 065 | 修改 prototype 后静态 class type 不变但运行时行为变化边界 | boundary | P1 |  |
| 066 | class constructor 被普通调用时运行时 TypeError，如未被静态拦截 | fail_runtime | P1 |  |
| 067 | new ctor() 动态构造时 ctor 非 constructor 抛 TypeError | fail_runtime | P1 |  |
| 068 | instanceof 右侧非 constructor 抛 TypeError，如 ArkTS 支持动态边界 | fail_runtime | P1 |  |
| 069 | prototype 动态修改后实例方法查找失败的运行时边界 | fail_runtime | P1 |  |
| 070 | imported class value 运行时加载失败的模块异常边界 | fail_runtime | P1 |  |
| 071 | class type 与 interface property/method 参数/返回值组合 | integration | P0 |  |
| 072 | class implements interface 后赋值给 interface type | integration | P0 |  |
| 073 | object literal 赋给 interface type 与 class type 对照 | integration | P0 |  |
| 074 | abstract class type 与 concrete subclass instance 组合 | integration | P0 |  |
| 075 | generic class type Box<T> 与泛型约束组合 | integration | P0 |  |
| 076 | constructor type 作为函数参数并在函数内 new，如支持 | integration | P1 |  |
| 077 | constructor type 作为返回值并由调用方 new，如支持 | integration | P1 |  |
| 078 | export class 作为类型导入和作为值导入双重使用 | integration | P1 |  |
| 079 | import alias class type 与 class value 组合，如支持 | integration | P1 |  |
| 080 | re-export class type 后跨文件赋值兼容 | integration | P1 |  |
| 081 | class type 字段与 null safety 组合 | integration | P1 |  |
| 082 | class value static side 与 inheritance 组合 | integration | P1 |  |
| 083 | 回归：class value 错误赋给 instance type 未报错 | regression | P0 |  |
| 084 | 回归：instance type 访问 static member 未报错 | regression | P0 |  |
| 085 | 回归：class value 访问 instance member 未报错 | regression | P0 |  |
| 086 | 回归：base instance 赋给 derived type 未报错 | regression | P0 |  |
| 087 | 回归：private/protected 未影响 class type compatibility | regression | P0 |  |
| 088 | 回归：generic class type 参数不匹配未报错 | regression | P0 |  |
| 089 | 回归：imported class 类型和值空间信息丢失 | regression | P0 |  |
