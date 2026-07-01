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
| 001 | 方法重写 | pass | P0 | 初始设计点 |
| 002 | 字段遮蔽 | fail_compile | P0 | 初始设计点 |
| 003 | 返回值兼容 | boundary | P0 | 初始设计点 |
| 004 | 参数类型兼容 | fail_runtime | P0 | 初始设计点 |
| 005 | 可见性不能收窄 | integration | P0 | 初始设计点 |
| 006 | override 关键字是否支持/是否要求 | regression | P0 | 初始设计点 |
| 007 | 重写 abstract method | pass | P0 | 初始设计点 |
| 008 | 重写 getter/setter | fail_compile | P0 | 初始设计点 |
| 009 | 正向基础场景 | boundary | P1 | 初始设计点 |
| 010 | 编译负向场景 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_OVERRIDE_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖合法 method override、super.method 调用、abstract method 实现、interface method 实现、static method 遮蔽和 generic override。

## Compile Negative Cases

覆盖 override 关键字错误、参数/返回不兼容、可见性收窄、static/instance 混用、字段/方法冲突、abstract/interface/generic 签名错误。

## Runtime Error Cases

覆盖 super.method 缺失或非 callable、方法提取 this 丢失、动态 prototype 修改、method 被 new 调用和构造期间动态分派边界。

## Boundary Cases

覆盖 override 关键字支持/必须性、参数兼容规则、返回协变、private shadow、getter/setter、运行时类型擦除等边界。

## Type System Cases

覆盖 override 与参数兼容、返回值兼容、泛型、多态 this、abstract/interface 方法实现和 class type 动态分派。

## Inheritance / Integration Cases

覆盖 override 与 inheritance、super、abstract、interface、visibility、static、module、field shadow、initialization order 的组合。

## ArkTS Static Boundary Cases

override 类型规则属于 ArkTS/TS 静态检查，不是 ECMAScript 运行时语法；应优先使用 checker 用例设计。

## test262 Candidate Cases

test262 只适合映射 method inheritance、prototype lookup、super.method、static method inheritance、dynamic dispatch 等运行时语义。

## Regression Cases

记录 override 不存在成员漏检、签名不兼容漏检、可见性收窄漏检、static/instance 混淆、super receiver 错误等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | 子类方法与基类方法同名同参同返回类型，覆盖成功 | pass | P0 |  |
| 002 | 子类方法体调用自身字段 | pass | P0 |  |
| 003 | 子类方法体调用基类 public 方法 | pass | P0 |  |
| 004 | 基类引用指向子类实例，调用子类覆盖方法 | pass | P0 |  |
| 005 | 多层继承中最底层方法覆盖最上层方法 | pass | P0 |  |
| 006 | 子类覆盖方法后通过 super.method() 调用基类方法 | pass | P0 |  |
| 007 | 子类覆盖方法不调用 super.method() 的对照通过 | pass | P0 |  |
| 008 | 子类新增方法不属于 override | pass | P0 |  |
| 009 | 覆盖方法参数类型完全一致 | pass | P0 |  |
| 010 | 覆盖方法参数数量完全一致 | pass | P0 |  |
| 011 | 覆盖方法返回类型完全一致 | pass | P0 |  |
| 012 | 覆盖方法返回 void 与 void 一致 | pass | P0 |  |
| 013 | 覆盖方法返回派生类类型覆盖基类返回基类类型，如协变支持 | pass | P0 |  |
| 014 | public method 覆盖 public method | pass | P0 |  |
| 015 | protected method 覆盖 protected method | pass | P0 |  |
| 016 | concrete 子类实现 abstract method | pass | P0 |  |
| 017 | abstract 子类可继续不实现 abstract method | pass | P0 |  |
| 018 | abstract class 中 concrete method 被子类 override | pass | P0 |  |
| 019 | class method 实现 interface method | pass | P0 |  |
| 020 | class inherited method 满足 interface method | pass | P0 |  |
| 021 | derived class override 后仍满足 interface method | pass | P1 |  |
| 022 | 基类 overload method 被子类完整覆盖，如 ArkTS 支持 | pass | P1 |  |
| 023 | 子类 static method 与基类 static method 同名并调用通过 | pass | P1 |  |
| 024 | 子类 static method 调用 super.staticMethod()，如 ArkTS 支持 | pass | P1 |  |
| 025 | 子类字段与基类字段同名遮蔽 | pass | P1 |  |
| 026 | 子类字段类型与基类字段类型一致 | pass | P1 |  |
| 027 | generic class 中方法覆盖 | pass | P1 |  |
| 028 | generic method 覆盖 generic method | pass | P1 |  |
| 029 | override 方法返回 this / 多态 this，如 ArkTS 支持 | pass | P1 |  |
| 030 | export base class 后 import derived override 通过 | pass | P1 |  |
| 031 | override 修饰不存在的基类方法，checker 报错 | fail_compile | P0 |  |
| 032 | 覆盖基类方法但不写 override 是否报错，按 ArkTS 要求记录 | fail_compile | P0 |  |
| 033 | 覆盖方法参数类型不一致，checker 报错 | fail_compile | P0 |  |
| 034 | 覆盖方法参数数量减少，checker 报错或边界确认 | fail_compile | P0 |  |
| 035 | 覆盖方法参数数量增加，checker 报错或边界确认 | fail_compile | P0 |  |
| 036 | 覆盖方法可选参数与必选参数不兼容，checker 报错 | fail_compile | P0 |  |
| 037 | 覆盖方法 rest 参数不兼容，checker 报错 | fail_compile | P0 |  |
| 038 | 覆盖方法返回 string 覆盖 number，checker 报错 | fail_compile | P0 |  |
| 039 | 覆盖方法返回基类类型覆盖基类要求派生类类型，checker 报错 | fail_compile | P0 |  |
| 040 | 覆盖方法返回值缺失，checker 报错 | fail_compile | P0 |  |
| 041 | 覆盖方法部分控制流缺少返回值，checker 报错 | fail_compile | P0 |  |
| 042 | override 修饰字段如 ArkTS 不支持，checker 报错 | fail_compile | P0 |  |
| 043 | override 修饰 constructor，checker 报错 | fail_compile | P0 |  |
| 044 | override 修饰 private method，checker 报错或边界记录 | fail_compile | P0 |  |
| 045 | public method 覆盖为 protected，checker 报错 | fail_compile | P0 |  |
| 046 | public method 覆盖为 private，checker 报错 | fail_compile | P0 |  |
| 047 | protected method 覆盖为 private，checker 报错 | fail_compile | P0 |  |
| 048 | abstract public method 实现为 protected/private，checker 报错 | fail_compile | P0 |  |
| 049 | concrete 子类未实现 abstract method，checker 报错 | fail_compile | P0 |  |
| 050 | abstract method 参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 051 | abstract method 返回类型不兼容，checker 报错 | fail_compile | P0 |  |
| 052 | interface method 参数类型不一致，checker 报错 | fail_compile | P0 |  |
| 053 | interface method 返回类型不一致，checker 报错 | fail_compile | P0 |  |
| 054 | protected/private method 不能满足 interface public method，checker 报错 | fail_compile | P0 |  |
| 055 | 子类遗漏部分 overload 签名，checker 报错或边界确认 | fail_compile | P0 |  |
| 056 | 子类 overload 实现签名不兼容，checker 报错 | fail_compile | P0 |  |
| 057 | static method 参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 058 | static method 返回类型不兼容，checker 报错 | fail_compile | P0 |  |
| 059 | instance method 不能 override static method，checker 报错 | fail_compile | P0 |  |
| 060 | static method 不能 override instance method，checker 报错 | fail_compile | P0 |  |
| 061 | 子类字段类型与基类字段类型不一致，如 ArkTS 禁止则 checker 报错 | fail_compile | P0 |  |
| 062 | 子类字段与基类方法同名，checker 报错或边界确认 | fail_compile | P0 |  |
| 063 | 子类方法与基类字段同名，checker 报错或边界确认 | fail_compile | P0 |  |
| 064 | getter 返回类型不兼容，checker 报错，如支持 getter | fail_compile | P0 |  |
| 065 | 普通方法覆盖 getter，checker 报错，如支持 getter | fail_compile | P0 |  |
| 066 | generic method 约束不兼容，checker 报错 | fail_compile | P0 |  |
| 067 | super.method() 参数错误，checker 报错 | fail_compile | P1 |  |
| 068 | super.missingMethod()，checker 报错 | fail_compile | P1 |  |
| 069 | super.method 不存在且未被静态拦截时运行时 TypeError | fail_runtime | P1 |  |
| 070 | super.method 动态变为非 callable 时运行时 TypeError | fail_runtime | P1 |  |
| 071 | 方法提取后 this 丢失导致运行时异常边界 | fail_runtime | P1 |  |
| 072 | 动态修改 prototype 后 override 调用失败 | fail_runtime | P1 |  |
| 073 | class method 被 new 调用抛 TypeError | fail_runtime | P1 |  |
| 074 | Base constructor 调用 override method 读取未初始化 derived field | fail_runtime | P1 |  |
| 075 | override 关键字是否支持边界 | boundary | P1 |  |
| 076 | override 关键字是否必须边界 | boundary | P1 |  |
| 077 | 参数逆变/双变/严格一致规则边界 | boundary | P1 |  |
| 078 | 返回值协变支持边界 | boundary | P1 |  |
| 079 | protected 覆盖为 public 是否允许边界 | boundary | P1 |  |
| 080 | private 成员同名是 override 还是 shadow 边界 | boundary | P1 |  |
| 081 | 字段遮蔽类型不一致边界 | boundary | P1 |  |
| 082 | readonly 字段遮蔽普通字段边界 | boundary | P1 |  |
| 083 | getter/setter override 支持边界 | boundary | P1 |  |
| 084 | interface method 实现是否需要 override 边界 | boundary | P1 |  |
| 085 | override 类型规则运行时擦除边界 | boundary | P1 |  |
| 086 | override 与 inheritance：多层继承动态分派 | integration | P0 |  |
| 087 | override 与 super：覆盖方法调用 super.method() | integration | P0 |  |
| 088 | override 与 abstract：实现 abstract method | integration | P0 |  |
| 089 | override 与 interface：覆盖后仍满足 interface method | integration | P0 |  |
| 090 | override 与 visibility：public 不能收窄 | integration | P0 |  |
| 091 | override 与 static：static method 覆盖/遮蔽 | integration | P0 |  |
| 092 | override 与 field：字段遮蔽和方法冲突 | integration | P0 |  |
| 093 | override 与 overload：完整签名集合覆盖 | integration | P0 |  |
| 094 | override 与 generic：generic method 约束兼容 | integration | P0 |  |
| 095 | override 与 getter/setter：accessor 覆盖，如支持 | integration | P0 |  |
| 096 | override 与 module：跨模块参数类型检查 | integration | P0 |  |
| 097 | override 与 module：跨模块返回类型检查 | integration | P0 |  |
| 098 | override 与 initialization order：Base constructor 调用 Derived override | integration | P0 |  |
| 099 | override 与 class type：base type 引用调用 derived override | integration | P1 |  |
| 100 | override 与 static super：super.staticMethod() | integration | P1 |  |
| 101 | override 与 private/protected：同名遮蔽与兼容性 | integration | P1 |  |
| 102 | 回归：override 不存在基类成员未报错 | regression | P0 |  |
| 103 | 回归：覆盖参数类型不兼容未报错 | regression | P0 |  |
| 104 | 回归：覆盖返回类型不兼容未报错 | regression | P0 |  |
| 105 | 回归：可见性收窄未报错 | regression | P0 |  |
| 106 | 回归：static/instance 覆盖混淆未报错 | regression | P0 |  |
| 107 | 回归：abstract method 漏实现未报错 | regression | P0 |  |
| 108 | 回归：interface method 实现签名错误未报错 | regression | P0 |  |
| 109 | 回归：super.method receiver 绑定错误 | regression | P0 |  |
