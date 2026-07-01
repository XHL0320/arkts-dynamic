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
| 001 | readonly field | pass | P0 | 初始设计点 |
| 002 | constructor 中赋值 | fail_compile | P0 | 初始设计点 |
| 003 | constructor 外赋值错误 | boundary | P0 | 初始设计点 |
| 004 | readonly static | fail_runtime | P0 | 初始设计点 |
| 005 | readonly 与对象引用 | integration | P0 | 初始设计点 |
| 006 | readonly 与数组 | regression | P0 | 初始设计点 |
| 007 | readonly 与继承 | pass | P0 | 初始设计点 |
| 008 | readonly 是编译期限制还是运行时限制 | fail_compile | P0 | 初始设计点 |
| 009 | 正向基础场景 | boundary | P1 | 初始设计点 |
| 010 | 编译负向场景 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_READONLY_MEMBERS_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 readonly 实例字段、readonly static、constructor 初始化、外部读取、object/array 引用、visibility、inheritance、interface、generic 和 module 正向场景。

## Compile Negative Cases

覆盖 readonly 赋值、重复/缺失初始化、类型不匹配、static 写入、继承写入、interface 不兼容、abstract/generic/module 负向。

## Runtime Error Cases

readonly 错误主要属于 compile-time boundary；运行时只记录动态绕过、property descriptor、Object.freeze 对照和 module/circular import 边界。

## Boundary Cases

覆盖 readonly 是否纯编译期、是否影响 descriptor、浅只读、array 元素修改、readonly interface、compatibility、Object.freeze 差异。

## Type System Cases

覆盖 readonly 与 class type、interface、object literal、generic、union/null、private/protected 的兼容性。

## Inheritance / Integration Cases

覆盖 readonly 与 field、constructor、inheritance、visibility、static、abstract、interface、generic、module 的组合场景。

## ArkTS Static Boundary Cases

readonly 本身不是 ECMAScript 标准运行时语法；XTS 应优先沉淀 checker 用例，运行时只做 class field 初始化和动态边界对照。

## test262 Candidate Cases

test262 只适合映射 class field initialization、static field、inheritance initialization 等运行时行为，不直接覆盖 readonly 语义。

## Regression Cases

记录外部写入、方法内写入、alias 写入、interface readonly 写入、static readonly 写入、继承写入、generic 约束和跨模块约束回归。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | readonly number field 声明处初始化并外部读取 | pass | P0 |  |
| 002 | readonly string field 声明处初始化并外部读取 | pass | P0 |  |
| 003 | readonly boolean field 声明处初始化并外部读取 | pass | P0 |  |
| 004 | readonly bigint field 声明处初始化，如 ArkTS 支持 bigint | pass | P0 |  |
| 005 | readonly object field 声明处初始化并读取引用 | pass | P0 |  |
| 006 | readonly array field 声明处初始化并读取引用 | pass | P0 |  |
| 007 | readonly class type field 声明处初始化 | pass | P0 |  |
| 008 | readonly interface type field 声明处初始化 | pass | P0 |  |
| 009 | readonly 字段省略类型并依赖初始化值推断 | pass | P0 |  |
| 010 | readonly 字段类型注解与初始化值一致 | pass | P0 |  |
| 011 | readonly 字段外部读取通过 | pass | P0 |  |
| 012 | readonly 字段在 constructor 中初始化 | pass | P0 |  |
| 013 | readonly 字段声明处不初始化但 constructor 中初始化 | pass | P0 |  |
| 014 | readonly 字段由 constructor 参数赋值 | pass | P0 |  |
| 015 | readonly 字段所有 constructor 分支均赋值 | pass | P0 |  |
| 016 | readonly 字段初始化顺序与普通字段一致 | pass | P0 |  |
| 017 | readonly object field 内部普通属性修改，如 ArkTS 允许 | pass | P0 |  |
| 018 | readonly array field 元素修改，如 ArkTS 允许 | pass | P0 |  |
| 019 | readonly static field 声明处初始化并通过 class name 读取 | pass | P1 |  |
| 020 | public readonly field 外部可读不可写 | pass | P1 |  |
| 021 | private readonly field 类内可读 | pass | P1 |  |
| 022 | protected readonly field 子类可读 | pass | P1 |  |
| 023 | 子类继承基类 readonly field 并读取 | pass | P1 |  |
| 024 | class readonly field 满足 interface readonly property，如支持 interface readonly | pass | P1 |  |
| 025 | generic class readonly field 类型为 T 并由 constructor 初始化 | pass | P1 |  |
| 026 | export class with readonly field 后 import 读取 | pass | P1 |  |
| 027 | readonly 字段类型注解与初始化值不一致，checker 报错 | fail_compile | P0 |  |
| 028 | readonly 字段 constructor 赋值类型错误，checker 报错 | fail_compile | P0 |  |
| 029 | readonly 字段部分 constructor 分支未赋值，checker 报错或边界记录 | fail_compile | P0 |  |
| 030 | readonly 字段声明处初始化后 constructor 再赋值，checker 报错或边界记录 | fail_compile | P0 |  |
| 031 | readonly 字段 constructor 中重复赋值，checker 报错或边界记录 | fail_compile | P0 |  |
| 032 | readonly 字段 constructor 外赋值，checker 报错 | fail_compile | P0 |  |
| 033 | readonly 字段实例方法中赋值，checker 报错 | fail_compile | P0 |  |
| 034 | readonly 字段 static method 中赋值，checker 报错或边界记录 | fail_compile | P0 |  |
| 035 | 外部对 readonly 字段赋值，checker 报错 | fail_compile | P0 |  |
| 036 | 通过对象别名对 readonly 字段赋值，checker 报错 | fail_compile | P0 |  |
| 037 | 通过 class type 引用对 readonly 字段赋值，checker 报错 | fail_compile | P0 |  |
| 038 | 通过 interface readonly property 引用赋值，checker 报错 | fail_compile | P0 |  |
| 039 | readonly 字段自增，checker 报错 | fail_compile | P0 |  |
| 040 | readonly 字段复合赋值，checker 报错 | fail_compile | P0 |  |
| 041 | readonly object field 引用重新赋值，checker 报错 | fail_compile | P0 |  |
| 042 | readonly array field 引用重新赋值，checker 报错 | fail_compile | P0 |  |
| 043 | readonly static field 外部赋值，checker 报错 | fail_compile | P0 |  |
| 044 | readonly static field 类内 static method 赋值，checker 报错或边界记录 | fail_compile | P0 |  |
| 045 | private readonly field 外部读取或写入，checker 报错 | fail_compile | P0 |  |
| 046 | protected readonly field 外部读取或写入，checker 报错 | fail_compile | P0 |  |
| 047 | 子类方法修改继承 readonly field，checker 报错 | fail_compile | P0 |  |
| 048 | 派生类 constructor 直接初始化基类 readonly field，checker 报错或边界记录 | fail_compile | P0 |  |
| 049 | 子类普通字段遮蔽基类 readonly field，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 050 | class readonly field 类型与 interface readonly property 不一致，checker 报错 | fail_compile | P0 |  |
| 051 | protected/private readonly field 不能满足 public interface property，checker 报错 | fail_compile | P0 |  |
| 052 | abstract readonly field 不支持时声明，parser/checker 报错 | fail_compile | P0 |  |
| 053 | generic readonly field 初始化不满足约束，checker 报错 | fail_compile | P0 |  |
| 054 | import class 后写 readonly field，checker 报错 | fail_compile | P0 |  |
| 055 | readonly static field import 后写入，checker 报错 | fail_compile | P0 |  |
| 056 | object literal 赋给含 readonly field class type 不满足规则，checker 报错或边界记录 | fail_compile | P0 |  |
| 057 | union 类型引用下写 readonly field，checker 报错或边界记录 | fail_compile | P0 |  |
| 058 | readonly 是否纯编译期限制边界 | boundary | P1 |  |
| 059 | readonly 是否影响 runtime property writable descriptor 边界 | boundary | P1 |  |
| 060 | readonly 字段 constructor 多分支 definite assignment 边界 | boundary | P1 |  |
| 061 | readonly object field 内部属性可变性边界 | boundary | P1 |  |
| 062 | readonly object field 嵌套属性可变性边界 | boundary | P1 |  |
| 063 | readonly array field 元素修改边界 | boundary | P1 |  |
| 064 | readonly array field push/pop 边界 | boundary | P1 |  |
| 065 | readonly 与 deep readonly 不等价边界 | boundary | P1 |  |
| 066 | class 普通 field 是否满足 interface readonly property 边界 | boundary | P1 |  |
| 067 | class readonly field 是否满足 interface mutable property 边界 | boundary | P1 |  |
| 068 | readonly field 与 mutable field assignability 方向性边界 | boundary | P1 |  |
| 069 | Object.freeze 与 readonly runtime 差异边界 | boundary | P1 |  |
| 070 | 动态方式修改 readonly field 的运行时行为记录 | fail_runtime | P1 |  |
| 071 | runtime property descriptor 不可写时赋值抛 TypeError | fail_runtime | P1 |  |
| 072 | readonly object field 内部属性修改触发对象自身异常 | fail_runtime | P1 |  |
| 073 | readonly array field 元素修改运行时边界记录 | fail_runtime | P1 |  |
| 074 | circular import 下 readonly static 初始化失败边界 | fail_runtime | P1 |  |
| 075 | readonly 与 constructor：constructor 参数初始化 readonly field | integration | P0 |  |
| 076 | readonly 与 initialization order：readonly 字段与普通字段顺序一致 | integration | P0 |  |
| 077 | readonly 与 static：readonly static field 读取和写入限制 | integration | P0 |  |
| 078 | readonly 与 visibility：private/protected/public readonly 访问控制 | integration | P0 |  |
| 079 | readonly 与 inheritance：子类继承 readonly field | integration | P0 |  |
| 080 | readonly 与 inheritance：字段遮蔽 readonly 边界 | integration | P0 |  |
| 081 | readonly 与 interface：readonly field 满足 readonly property | integration | P0 |  |
| 082 | readonly 与 class type compatibility | integration | P0 |  |
| 083 | readonly 与 object literal compatibility | integration | P0 |  |
| 084 | readonly 与 generic：readonly T field 初始化 | integration | P0 |  |
| 085 | readonly 与 abstract：abstract class concrete readonly field | integration | P0 |  |
| 086 | readonly 与 module：export/import 后保持只读约束 | integration | P0 |  |
| 087 | 回归：外部写 readonly field 未报错 | regression | P0 |  |
| 088 | 回归：方法内写 readonly field 未报错 | regression | P0 |  |
| 089 | 回归：通过 alias 写 readonly field 未报错 | regression | P0 |  |
| 090 | 回归：readonly interface property 引用写入未报错 | regression | P0 |  |
| 091 | 回归：readonly static field 写入未报错 | regression | P0 |  |
| 092 | 回归：子类修改继承 readonly field 未报错 | regression | P0 |  |
| 093 | 回归：generic readonly T 约束丢失 | regression | P0 |  |
| 094 | 回归：跨模块 readonly 约束丢失 | regression | P0 |  |
