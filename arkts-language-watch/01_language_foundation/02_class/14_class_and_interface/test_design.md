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
| 001 | class 完整实现 interface 通过 | pass | P0 | 初始设计点 |
| 002 | class 缺少 interface 字段报错 | fail_compile | P0 | 初始设计点 |
| 003 | class 缺少 interface 方法报错 | boundary | P0 | 初始设计点 |
| 004 | class 方法参数类型不兼容报错 | fail_runtime | P0 | 初始设计点 |
| 005 | class 方法返回类型不兼容报错 | integration | P0 | 初始设计点 |
| 006 | class 字段类型不兼容报错 | regression | P0 | 初始设计点 |
| 007 | readonly/interface 属性实现规则 | pass | P0 | 初始设计点 |
| 008 | optional interface 属性实现规则 | fail_compile | P0 | 初始设计点 |
| 009 | class implements 多个 interface | boundary | P1 | 初始设计点 |
| 010 | interface 继承后 class 实现完整性 | fail_runtime | P1 | 初始设计点 |
| 011 | private/protected 成员对 implements 的影响 | integration | P1 | 初始设计点 |
| 012 | abstract class implements interface 可延迟实现 | regression | P1 | 初始设计点 |
| 013 | generic interface 与 class 实现 | pass | P1 | 初始设计点 |
| 014 | class 实例赋值给 interface 类型 | fail_compile | P1 | 初始设计点 |
| 015 | object literal 与 interface/class 差异 | boundary | P1 | 初始设计点 |
| 016 | module export class implements interface | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_INTERFACE_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 class implements 单 interface、多 interface、property/method 实现、inherited member 实现、abstract/generic/module 正向场景。

## Compile Negative Cases

覆盖缺少成员、类型不兼容、方法签名不兼容、private/protected/static 错误满足、接口冲突、unsupported interface 能力等 checker/parser 负向。

## Runtime Error Cases

interface/implements 错误主要属于 compile-time boundary；运行时异常只记录动态绕过、class 方法体异常、null/undefined 访问和模块加载边界。

## Boundary Cases

覆盖结构兼容与名义限制、optional/readonly/index signature、constructor signature、interface 继承 class、object literal 与 class instance 差异。

## Type System Cases

覆盖 class instance assignable to interface、interface 变量、函数参数/返回值、array of interface、generic interface、private/protected 可见性影响。

## Inheritance / Integration Cases

覆盖 interface 与 class inheritance、abstract class、generic、module、object literal、factory method 和多 interface 的组合场景。

## ArkTS Static Boundary Cases

interface 是 ArkTS/TypeScript 类型系统概念，不是 ECMAScript 运行时对象；implements 应作为静态检查设计，test262 不能直接推导此类规则。

## test262 Candidate Cases

test262 只用于 class runtime behavior、prototype、instanceof、method call、field access 等交叉验证，不直接覆盖 interface/implements。

## Regression Cases

记录成员漏检、可见性误判、static/instance 混淆、多接口冲突漏检、泛型丢失和跨模块接口变更未触发错误等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | class implements 空 interface，编译通过 | pass | P0 |  |
| 002 | class implements 单个 interface 并实现 required property 和 method | pass | P0 |  |
| 003 | class implements 多个不冲突 interface 并全部实现 | pass | P0 |  |
| 004 | class implements interface 且包含额外 public 成员，编译通过 | pass | P0 |  |
| 005 | class implements interface 后实例赋值给 interface 类型变量 | pass | P0 |  |
| 006 | interface 类型变量调用 class 实现的方法并返回正确值 | pass | P0 |  |
| 007 | interface 类型变量访问 class 实现的属性并返回正确值 | pass | P0 |  |
| 008 | class public field 实现 interface property | pass | P0 |  |
| 009 | class field 类型与 interface property 类型一致 | pass | P0 |  |
| 010 | class public method 实现 interface method | pass | P0 |  |
| 011 | class method 参数类型与 interface method 一致 | pass | P0 |  |
| 012 | class method 返回类型与 interface method 一致 | pass | P0 |  |
| 013 | inherited public field 满足 interface property | pass | P0 |  |
| 014 | inherited public method 满足 interface method | pass | P0 |  |
| 015 | class extends base class and implements interface，base 成员满足 interface | pass | P0 |  |
| 016 | derived class 覆盖 base method 后仍满足 interface | pass | P0 |  |
| 017 | interface A extends B 后 class implements A 并实现全部成员 | pass | P0 |  |
| 018 | interface 多继承后 class implements 派生 interface 并实现全部成员 | pass | P0 |  |
| 019 | abstract class implements interface 并完整实现成员 | pass | P0 |  |
| 020 | abstract class 声明 abstract method 对应 interface method，concrete subclass 最终实现 | pass | P0 |  |
| 021 | abstract class concrete field 满足 interface property | pass | P1 |  |
| 022 | abstract class concrete method 满足 interface method | pass | P1 |  |
| 023 | generic class implements generic interface<T> | pass | P1 |  |
| 024 | generic class implements instantiated interface<number> | pass | P1 |  |
| 025 | generic class field 类型 T 满足 interface property T | pass | P1 |  |
| 026 | generic class method 参数和返回 T 满足 interface method | pass | P1 |  |
| 027 | interface function property 由 class function-typed field 实现，如 ArkTS 支持 | pass | P1 |  |
| 028 | export interface 后 class implements 通过 | pass | P1 |  |
| 029 | import interface 后 class implements 通过 | pass | P1 |  |
| 030 | factory method 返回 interface 类型并返回 class instance | pass | P1 |  |
| 031 | implements interface 名称不存在，checker 报错 | fail_compile | P0 |  |
| 032 | implements 非 interface 类型，checker 报错 | fail_compile | P0 |  |
| 033 | class 缺少 interface property，checker 报错 | fail_compile | P0 |  |
| 034 | class 缺少 interface method，checker 报错 | fail_compile | P0 |  |
| 035 | class field 类型与 interface property 类型不一致，checker 报错 | fail_compile | P0 |  |
| 036 | class method 参数类型与 interface method 不一致，checker 报错 | fail_compile | P0 |  |
| 037 | class method 返回类型与 interface method 不一致，checker 报错 | fail_compile | P0 |  |
| 038 | class method 参数个数不足导致签名不兼容，checker 报错 | fail_compile | P0 |  |
| 039 | class method 参数个数过多导致签名不兼容，checker 报错或记录差异 | fail_compile | P0 |  |
| 040 | private field 不能满足 interface public property，checker 报错 | fail_compile | P0 |  |
| 041 | protected field 不能满足 interface public property，checker 报错 | fail_compile | P0 |  |
| 042 | private method 不能满足 interface public method，checker 报错 | fail_compile | P0 |  |
| 043 | protected method 不能满足 interface public method，checker 报错 | fail_compile | P0 |  |
| 044 | static field 不能满足 instance interface property，checker 报错 | fail_compile | P0 |  |
| 045 | static method 不能满足 instance interface method，checker 报错 | fail_compile | P0 |  |
| 046 | class implements 多 interface 时缺少其中一个成员，checker 报错 | fail_compile | P0 |  |
| 047 | 两个 interface 同名 property 类型冲突，class 同时 implements 时报错 | fail_compile | P0 |  |
| 048 | 两个 interface 同名 method 签名冲突，class 同时 implements 时报错 | fail_compile | P0 |  |
| 049 | interface extends interface 后 class 缺少 base interface 成员，checker 报错 | fail_compile | P0 |  |
| 050 | derived class 覆盖 base method 后签名不兼容 interface，checker 报错 | fail_compile | P0 |  |
| 051 | protected/private inherited 成员不能满足 public interface 成员，checker 报错 | fail_compile | P0 |  |
| 052 | abstract class implements interface 但 concrete 子类未最终实现，checker 报错 | fail_compile | P0 |  |
| 053 | abstract protected method 不能满足 public interface method，checker 报错或边界记录 | fail_compile | P0 |  |
| 054 | generic class implements instantiated interface 时字段类型实参错误，checker 报错 | fail_compile | P0 |  |
| 055 | generic class method 返回 T 不满足 interface 返回类型，checker 报错 | fail_compile | P0 |  |
| 056 | generic method in interface 由 class generic method 实现时约束不兼容，checker 报错 | fail_compile | P0 |  |
| 057 | readonly interface property 与 class field 兼容规则不满足时 checker 报错 | fail_compile | P0 |  |
| 058 | optional property 不满足 ArkTS 规则时 checker 报错，如支持 optional | fail_compile | P0 |  |
| 059 | index signature 不支持时 class implements 带 index signature interface，checker 报错 | fail_compile | P0 |  |
| 060 | constructor signature 不支持时 class implements 构造器接口，checker 报错 | fail_compile | P0 |  |
| 061 | interface 继承 class 不支持时 checker 报错 | fail_compile | P0 |  |
| 062 | interface 类型在运行时值位置使用，checker 报错 | fail_compile | P0 |  |
| 063 | instanceof interface 不适用，checker 报错或记录差异 | fail_compile | P0 |  |
| 064 | class constructor 被错误用于满足 instance interface，checker 报错 | fail_compile | P0 |  |
| 065 | 跨文件 interface 成员新增后 class implements 缺少成员，checker 报错 | fail_compile | P0 |  |
| 066 | object literal 赋值给 interface 类型缺少 required member，checker 报错 | fail_compile | P0 |  |
| 067 | 未声明 implements 但结构满足 interface 的赋值若 ArkTS 不允许则 checker 报错 | fail_compile | P1 |  |
| 068 | default export class implements imported interface 但缺少成员，checker 报错 | fail_compile | P1 |  |
| 069 | class 未声明 implements 但结构满足 interface 是否可赋值的 ArkTS 边界 | boundary | P1 |  |
| 070 | object literal 与 class instance 均满足 interface 时兼容差异边界 | boundary | P1 |  |
| 071 | optional property 缺省时 class 是否满足 interface 的边界 | boundary | P1 |  |
| 072 | readonly property 由普通 field 实现是否允许的边界 | boundary | P1 |  |
| 073 | index signature 与 ArkTS 动态属性限制边界 | boundary | P1 |  |
| 074 | constructor signature / static side interface 支持边界 | boundary | P1 |  |
| 075 | interface 继承 class 类型支持边界 | boundary | P1 |  |
| 076 | declaration merging 是否支持边界 | boundary | P1 |  |
| 077 | nullable interface 类型接收 class instance 边界 | boundary | P1 |  |
| 078 | dynamic ESObject 下 interface 类型检查是否消失的边界 | boundary | P1 |  |
| 079 | interface 类型变量运行时仍为 class instance 的类型擦除边界 | boundary | P1 |  |
| 080 | circular import 中 interface/class implements 边界 | boundary | P1 |  |
| 081 | 动态绕过 checker 后 interface 类型变量调用缺失方法，记录 TypeError | fail_runtime | P1 |  |
| 082 | interface 类型变量调用 class 方法体内部抛出的异常 | fail_runtime | P1 |  |
| 083 | 动态边界下 interface 类型变量为 null/undefined 时访问字段抛 TypeError | fail_runtime | P1 |  |
| 084 | instanceof interface 若未静态拦截时记录运行时异常 | fail_runtime | P1 |  |
| 085 | 跨模块加载失败导致 imported interface/class 不可用 | fail_runtime | P1 |  |
| 086 | class extends base class and implements interface，base field 满足 interface property | integration | P0 |  |
| 087 | class extends base class and implements interface，base method 满足 interface method | integration | P0 |  |
| 088 | derived class 新增成员满足 interface | integration | P0 |  |
| 089 | abstract class implements interface，concrete subclass 最终实现 | integration | P0 |  |
| 090 | abstract class implements 多个 interface | integration | P0 |  |
| 091 | generic class implements generic interface<T> | integration | P0 |  |
| 092 | generic class implements instantiated interface<number> | integration | P0 |  |
| 093 | interface A extends B 后 class implements A | integration | P0 |  |
| 094 | interface 多继承后 class implements 派生 interface | integration | P0 |  |
| 095 | export class implements imported interface | integration | P0 |  |
| 096 | re-export interface 后 class implements | integration | P1 |  |
| 097 | array of interface 接收多个 class instances | integration | P1 |  |
| 098 | factory method 返回 interface 类型并隐藏 concrete class | integration | P1 |  |
| 099 | object literal 与 class instance 对比满足 interface 的差异记录 | integration | P1 |  |
| 100 | 回归：class 缺少 interface property 未报错 | regression | P0 |  |
| 101 | 回归：private 成员错误满足 interface public member | regression | P0 |  |
| 102 | 回归：static method 错误满足 instance interface method | regression | P0 |  |
| 103 | 回归：多 interface 同名成员冲突未报错 | regression | P0 |  |
| 104 | 回归：inherited public method 未被识别为 interface 实现 | regression | P0 |  |
| 105 | 回归：abstract class implements interface 后 concrete 子类漏实现未报错 | regression | P0 |  |
| 106 | 回归：generic interface T 在 class implements 中丢失 | regression | P0 |  |
| 107 | 回归：跨模块 interface 变更未触发 class checker 错误 | regression | P0 |  |
