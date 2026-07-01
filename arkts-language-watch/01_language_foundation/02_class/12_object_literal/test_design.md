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
| 001 | 对象字面量赋值给 class 类型 | pass | P0 | 初始设计点 |
| 002 | 对象字面量赋值给 interface 类型 | fail_compile | P0 | 初始设计点 |
| 003 | 缺少属性 | boundary | P0 | 初始设计点 |
| 004 | 多余属性 | fail_runtime | P0 | 初始设计点 |
| 005 | 方法匹配 | integration | P0 | 初始设计点 |
| 006 | readonly 属性 | regression | P0 | 初始设计点 |
| 007 | optional 属性 | pass | P0 | 初始设计点 |
| 008 | nested object | fail_compile | P0 | 初始设计点 |
| 009 | excess property check | boundary | P1 | 初始设计点 |
| 010 | class 是结构兼容还是名义限制 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_OBJECT_LITERAL_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 object literal 基础语法、object/interface 赋值、public 成员匹配、method/function property、nested object、generic constraint 和 module 正向场景。

## Compile Negative Cases

覆盖缺少属性/方法、类型不匹配、多余属性、private/protected、readonly、generic constraint、constructor/static side、index signature 和跨模块负向。

## Runtime Error Cases

覆盖 method this 丢失、缺失方法调用、动态属性访问、instanceof class 对照、Object.freeze 和 ESObject/dynamic 边界。

## Boundary Cases

覆盖 class type assignment、abstract/generic class type、excess property、freshness、readonly/optional、computed/getter/setter/index signature 支持边界。

## Type System Cases

覆盖 object literal 与 class type、interface type、abstract class type、generic class type、readonly、private/protected、union/null 的交叉。

## Inheritance / Integration Cases

覆盖 object literal 与 class inheritance、implements interface、module export/import、method/function type、constructor/static side 的组合。

## ArkTS Static Boundary Cases

object literal 与 class/interface 的类型兼容规则属于 ArkTS checker 设计，不直接归入 test262；运行时只验证普通 object 行为。

## test262 Candidate Cases

test262 可参考 object initializer、property definition、method definition、property access、this binding、prototype 行为。

## Regression Cases

记录成员漏检、类型不匹配漏检、private/protected 误兼容、excess 规则漂移、generic constraint 漏检和跨模块类型信息丢失。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | 空 object literal 赋值给 object 类型 | pass | P0 |  |
| 002 | 单属性 object literal 赋值给 object 类型 | pass | P0 |  |
| 003 | 多属性 object literal 赋值给 object 类型 | pass | P0 |  |
| 004 | number/string/boolean 属性 object literal | pass | P0 |  |
| 005 | bigint 属性 object literal，如 ArkTS 支持 | pass | P0 |  |
| 006 | object 属性 object literal | pass | P0 |  |
| 007 | array 属性 object literal | pass | P0 |  |
| 008 | nested object 属性 object literal | pass | P0 |  |
| 009 | function property object literal | pass | P0 |  |
| 010 | method shorthand object literal，如 ArkTS 支持 | pass | P0 |  |
| 011 | object literal 赋值给 interface 类型 | pass | P0 |  |
| 012 | object literal 属性完全匹配 interface | pass | P0 |  |
| 013 | object literal 方法匹配 interface method | pass | P0 |  |
| 014 | object literal function property 匹配 interface method | pass | P0 |  |
| 015 | nested object literal 匹配 nested interface | pass | P0 |  |
| 016 | object literal array property 匹配 interface array property | pass | P0 |  |
| 017 | object literal 属性完全匹配 class public fields，如 ArkTS 允许 class type assignment | pass | P0 |  |
| 018 | object literal 方法完全匹配 class public methods，如 ArkTS 允许 class type assignment | pass | P0 |  |
| 019 | object literal 可满足仅 public 成员的 class/interface | pass | P0 |  |
| 020 | object literal 属性赋值给 interface readonly property，如支持 readonly | pass | P0 |  |
| 021 | optional property 缺省时通过，如 ArkTS 支持 | pass | P1 |  |
| 022 | object literal 赋值给 generic interface<T> | pass | P1 |  |
| 023 | generic function 接收满足约束的 object literal | pass | P1 |  |
| 024 | object literal 满足 generic constraint | pass | P1 |  |
| 025 | export interface 后 object literal 赋值 | pass | P1 |  |
| 026 | import interface 后 object literal 赋值 | pass | P1 |  |
| 027 | object literal property access 运行时读取成功 | pass | P1 |  |
| 028 | object literal method 中 this 访问自身属性 | pass | P1 |  |
| 029 | object literal function property 作为 factory method 返回 class instance | pass | P1 |  |
| 030 | object literal 赋给 interface 类型后调用方法 | pass | P1 |  |
| 031 | object literal 缺少 interface 必需属性，checker 报错 | fail_compile | P0 |  |
| 032 | object literal 缺少 interface 必需方法，checker 报错 | fail_compile | P0 |  |
| 033 | object literal 属性类型与 interface 不一致，checker 报错 | fail_compile | P0 |  |
| 034 | object literal 方法参数与 interface method 不一致，checker 报错 | fail_compile | P0 |  |
| 035 | object literal 方法返回类型与 interface method 不一致，checker 报错 | fail_compile | P0 |  |
| 036 | object literal 多余属性如 ArkTS 启用 excess property check，checker 报错 | fail_compile | P0 |  |
| 037 | nested object literal 缺少 nested interface 属性，checker 报错 | fail_compile | P0 |  |
| 038 | object literal array property 元素类型不匹配，checker 报错 | fail_compile | P0 |  |
| 039 | object literal 缺少 class public field，checker 报错 | fail_compile | P0 |  |
| 040 | object literal 缺少 class public method，checker 报错 | fail_compile | P0 |  |
| 041 | object literal 属性类型与 class field 不一致，checker 报错 | fail_compile | P0 |  |
| 042 | object literal 方法参数与 class method 不一致，checker 报错 | fail_compile | P0 |  |
| 043 | object literal 方法返回值与 class method 不一致，checker 报错 | fail_compile | P0 |  |
| 044 | object literal 不能满足含 private field 的 class type，checker 报错 | fail_compile | P0 |  |
| 045 | object literal 不能满足含 private method 的 class type，checker 报错 | fail_compile | P0 |  |
| 046 | object literal 不能满足含 protected field 的 class type，checker 报错 | fail_compile | P0 |  |
| 047 | object literal 不能满足含 protected method 的 class type，checker 报错 | fail_compile | P0 |  |
| 048 | 通过 readonly interface 引用修改属性，checker 报错 | fail_compile | P0 |  |
| 049 | object literal readonly property 类型不匹配，checker 报错 | fail_compile | P0 |  |
| 050 | optional property 类型不匹配，checker 报错 | fail_compile | P0 |  |
| 051 | generic constraint 要求 object literal 具备属性但缺失，checker 报错 | fail_compile | P0 |  |
| 052 | object literal 不满足 generic constraint，checker 报错 | fail_compile | P0 |  |
| 053 | object literal 不能满足 abstract class private/protected 成员，checker 报错 | fail_compile | P0 |  |
| 054 | object literal 缺少 derived class 新增字段，checker 报错 | fail_compile | P0 |  |
| 055 | object literal 缺少 derived class 新增方法，checker 报错 | fail_compile | P0 |  |
| 056 | object literal 被当作 class value 使用，checker 报错 | fail_compile | P0 |  |
| 057 | object literal 不能直接 new，checker 报错 | fail_compile | P0 |  |
| 058 | object literal 赋给 constructor type 不满足 construct signature，checker 报错或边界记录 | fail_compile | P0 |  |
| 059 | index signature 属性类型不一致，checker 报错，如支持 index signature | fail_compile | P0 |  |
| 060 | 动态新增属性不允许时对 object literal 新增属性，checker 报错 | fail_compile | P0 |  |
| 061 | 跨模块 object literal 赋值缺少 imported interface 成员，checker 报错 | fail_compile | P0 |  |
| 062 | 跨模块 private/protected class type 与 object literal 兼容错误，checker 报错 | fail_compile | P0 |  |
| 063 | object literal function property 参数/返回不匹配目标 method，checker 报错 | fail_compile | P0 |  |
| 064 | object literal 缺少 inherited public member，checker 报错 | fail_compile | P0 |  |
| 065 | object literal 赋值给 generic class type Box<T> 不满足字段 T，checker 报错 | fail_compile | P0 |  |
| 066 | fresh object literal 多余属性传给函数参数，checker 报错或边界记录 | fail_compile | P0 |  |
| 067 | object literal 赋值给 class type 是否允许边界 | boundary | P1 |  |
| 068 | object literal 赋值给 abstract class type 是否允许边界 | boundary | P1 |  |
| 069 | object literal 赋值给 generic class type 是否允许边界 | boundary | P1 |  |
| 070 | excess property check 是否存在边界 | boundary | P1 |  |
| 071 | freshness 规则是否存在边界 | boundary | P1 |  |
| 072 | 先赋值给变量再赋值给 interface 是否放宽边界 | boundary | P1 |  |
| 073 | 先赋值给变量再赋值给 class type 是否放宽边界 | boundary | P1 |  |
| 074 | ordinary property 是否满足 readonly property 边界 | boundary | P1 |  |
| 075 | object literal method 与 function property 匹配 method 边界 | boundary | P1 |  |
| 076 | method 内 this 绑定边界 | boundary | P1 |  |
| 077 | computed property name 支持边界 | boundary | P1 |  |
| 078 | getter/setter 支持边界 | boundary | P1 |  |
| 079 | index signature / dynamic property 支持边界 | boundary | P1 |  |
| 080 | object literal 与 instanceof class runtime 差异边界 | boundary | P1 |  |
| 081 | object literal 方法提取后 this 丢失导致运行时异常 | fail_runtime | P1 |  |
| 082 | 调用 object literal 不存在方法抛 TypeError | fail_runtime | P1 |  |
| 083 | 动态属性访问结果 undefined 后调用抛 TypeError | fail_runtime | P1 |  |
| 084 | object literal instanceof Class 为 false 的运行时差异记录 | fail_runtime | P1 |  |
| 085 | ESObject/dynamic 边界绕过静态检查后方法体抛异常 | fail_runtime | P1 |  |
| 086 | Object.freeze 后写属性的运行时对照 | fail_runtime | P1 |  |
| 087 | object literal 与 interface：property/method 完整匹配 | integration | P0 |  |
| 088 | object literal 与 class type：public fields/methods 匹配边界 | integration | P0 |  |
| 089 | object literal 与 private/protected class type 兼容边界 | integration | P0 |  |
| 090 | object literal 与 readonly interface property | integration | P0 |  |
| 091 | object literal 与 optional property | integration | P0 |  |
| 092 | object literal 与 generic interface<T> | integration | P0 |  |
| 093 | object literal 与 generic constraint | integration | P0 |  |
| 094 | object literal 与 abstract class type | integration | P0 |  |
| 095 | object literal 与 base/derived class type | integration | P0 |  |
| 096 | object literal 与 constructor/static side | integration | P0 |  |
| 097 | object literal 与 module export/import interface | integration | P0 |  |
| 098 | object literal 与 module export/import class type | integration | P0 |  |
| 099 | object literal 与 index signature | integration | P0 |  |
| 100 | object literal 与 dynamic ESObject boundary | integration | P0 |  |
| 101 | object literal 与 runtime prototype/instanceof contrast | integration | P0 |  |
| 102 | 回归：缺少 interface 必需属性未报错 | regression | P0 |  |
| 103 | 回归：属性类型不匹配未报错 | regression | P0 |  |
| 104 | 回归：private/protected class type 被 object literal 错误满足 | regression | P0 |  |
| 105 | 回归：excess property 规则前后不一致 | regression | P0 |  |
| 106 | 回归：function property 与 method 签名兼容误判 | regression | P0 |  |
| 107 | 回归：generic constraint 对 object literal 漏检 | regression | P0 |  |
| 108 | 回归：跨模块 imported interface 成员检查丢失 | regression | P0 |  |
| 109 | 回归：object literal 与 class instance runtime 差异被误判 | regression | P0 |  |
