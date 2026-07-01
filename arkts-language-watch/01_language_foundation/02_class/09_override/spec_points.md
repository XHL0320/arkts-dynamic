# Spec Points

## Feature

Override Watch

## ECMA Baseline Status

ArkTS-specific / TS-compatible

## Related Sources

- ECMAScript 2022:
- ArkTS official documentation:
- ArkTS static rules:
- TypeScript compatibility reference:
- test262:

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例 | 备注 |
|---|---|---|---|---|

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例 | 备注 |
|---|---|---|---|---|

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
|---|---|---|---|---|

## Open Questions

- 当前 ArkTS 是否支持该能力？
- 该能力是编译期检查还是运行时行为？
- 是否需要 test262 对照？
- 是否存在 ArkTS 与 TS/ECMA 差异？

<!-- CLASS_OVERRIDE_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Class Override

## ECMA Baseline Status

ArkTS-specific / TS-compatible / ES2022 / Mixed

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript method override compatibility reference
* ECMAScript 2022 method dispatch and prototype semantics
* ECMAScript 2022 super property semantics
* test262 class method inheritance / super / prototype cases when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 子类可声明与基类同名实例方法形成 override。 | ECMAScript 2022 / ArkTS | 待确认 | 运行时为 prototype 方法覆盖。 |
| S002 | override 关键字是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不支持则记录 Unsupported。 |
| S003 | override 关键字是否必须需确认。 | ArkTS-specific / TS-compatible | 待确认 | checker 策略。 |
| S004 | override 使用位置是否仅限 method/accessor/static method 需确认。 | ArkTS checker | 待确认 | 字段/constructor 边界。 |
| S005 | static method 可与基类 static method 同名形成覆盖或遮蔽。 | ECMAScript 2022 / ArkTS | 待确认 | static side。 |
| S006 | 字段可与基类字段同名形成遮蔽。 | ArkTS classes | 待确认 | 字段遮蔽。 |
| S007 | 字段与方法同名冲突规则需确认。 | ArkTS checker | 待确认 | field/method collision。 |
| S008 | getter/setter override 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | accessor 边界。 |
| S009 | abstract method 可由 concrete 子类方法实现。 | ArkTS abstract class | 待确认 | abstract 交叉。 |
| S010 | generic method override 语法和约束需确认。 | ArkTS generics | 待确认 | generic 交叉。 |
| S011 | super.method() 可在 override 方法中调用基类实现。 | ECMAScript 2022 / ArkTS | 待确认 | super 交叉。 |
| S012 | 跨模块 import base class 后 derived override 语法需覆盖。 | ArkTS modules | 待确认 | module。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | 覆盖方法名必须匹配基类成员名。 | ArkTS checker | 待确认 | 基础规则。 |
| T002 | override 关键字修饰非基类成员应报错，如支持 override。 | ArkTS checker | 待确认 | P0。 |
| T003 | 覆盖方法参数数量兼容规则需确认。 | ArkTS checker | 待确认 | 严格一致/可选/rest 边界。 |
| T004 | 覆盖方法参数类型兼容规则需确认。 | ArkTS checker | 待确认 | 逆变/双变/一致待确认。 |
| T005 | 覆盖方法返回类型必须兼容。 | ArkTS checker | 待确认 | P0。 |
| T006 | void 返回值覆盖规则需确认。 | ArkTS checker | 待确认 | void 边界。 |
| T007 | 可选参数覆盖必选参数的规则需确认。 | ArkTS checker | 待确认 | optional。 |
| T008 | rest 参数覆盖规则需确认。 | ArkTS checker | 待确认 | rest。 |
| T009 | overload method 覆盖时签名集合兼容规则需确认。 | ArkTS checker | 待确认 | overload。 |
| T010 | getter 覆盖 getter 时返回类型必须兼容，如支持 accessor。 | ArkTS checker | 待确认 | accessor。 |
| T011 | setter 覆盖 setter 时参数类型必须兼容，如支持 accessor。 | ArkTS checker | 待确认 | accessor。 |
| T012 | getter/setter 与普通方法互相覆盖应报错或记录边界。 | ArkTS checker | 待确认 | accessor/method 冲突。 |
| T013 | 实例方法不能覆盖 static method。 | ArkTS checker | 待确认 | static/instance 分离。 |
| T014 | static method 不能覆盖 instance method。 | ArkTS checker | 待确认 | static/instance 分离。 |
| T015 | 字段遮蔽基类字段时类型兼容规则需确认。 | ArkTS checker | 待确认 | field shadow。 |
| T016 | 字段与基类方法同名是否报错需确认。 | ArkTS checker | 待确认 | field/method 冲突。 |
| T017 | 方法与基类字段同名是否报错需确认。 | ArkTS checker | 待确认 | method/field 冲突。 |
| T018 | readonly 字段遮蔽普通字段或反向遮蔽规则需确认。 | ArkTS checker | 待确认 | readonly。 |
| T019 | public override 不能收窄为 protected/private。 | ArkTS checker | 待确认 | visibility P0。 |
| T020 | protected override 为 public 是否允许需确认。 | ArkTS checker | 待确认 | visibility 放宽。 |
| T021 | protected override 不能收窄为 private。 | ArkTS checker | 待确认 | visibility。 |
| T022 | private 成员是否可 override 需确认，通常应为遮蔽或禁止。 | ArkTS checker | 待确认 | private boundary。 |
| T023 | abstract method 实现必须签名兼容。 | ArkTS abstract class | 待确认 | P0。 |
| T024 | abstract class 中 concrete method 可被子类 override。 | ArkTS abstract class | 待确认 | abstract。 |
| T025 | interface method 实现不等同 override，是否需要 override 关键字需确认。 | ArkTS interfaces | 待确认 | interface。 |
| T026 | generic method override 约束必须兼容。 | ArkTS generics | 待确认 | generic。 |
| T027 | 返回 this / 多态 this 覆盖规则需确认。 | ArkTS type system | 待确认 | this type。 |
| T028 | super.method() 调用参数和返回值按基类方法签名检查。 | ArkTS checker | 待确认 | super。 |
| T029 | 跨模块 override 仍应执行参数、返回和可见性检查。 | ArkTS modules | 待确认 | module。 |
| T030 | 基类引用指向派生实例调用 override method 的类型结果应与基类签名一致。 | ArkTS type system / ES2022 runtime | 待确认 | dynamic dispatch。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | 实例方法查找从对象 prototype chain 开始。 | ECMAScript 2022 | 待确认 | prototype lookup。 |
| R002 | 派生类 prototype 上同名方法优先于基类 prototype 方法。 | ECMAScript 2022 | 待确认 | dynamic dispatch。 |
| R003 | 基类引用指向派生类实例时调用派生类 override method。 | ECMAScript 2022 | 待确认 | 运行时分派。 |
| R004 | super.method() 从基类 prototype 查找属性。 | ECMAScript 2022 | 待确认 | super lookup。 |
| R005 | super.method() 的 receiver 仍为当前 this。 | ECMAScript 2022 | 待确认 | super receiver。 |
| R006 | 多层继承中 super.method() 调用直接上一层实现。 | ECMAScript 2022 | 待确认 | A<-B<-C。 |
| R007 | static method lookup 在 constructor object / constructor inheritance chain 上发生。 | ECMAScript 2022 | 待确认 | static lookup。 |
| R008 | static super method 从基类 constructor object 查找。 | ECMAScript 2022 | 待确认 | static super。 |
| R009 | 字段遮蔽为实例属性初始化结果，不改变 prototype method lookup。 | ECMAScript 2022 / ArkTS | 待确认 | field shadow。 |
| R010 | override 类型规则在运行时擦除，不改变动态分派。 | ArkTS boundary / ES2022 runtime | 待确认 | 类型擦除。 |
| R011 | 方法提取后 this 绑定可能丢失。 | ECMAScript 2022 | 待确认 | runtime boundary。 |
| R012 | 动态修改 prototype 后 method lookup 可变化，如 ArkTS 允许。 | ECMAScript 2022 | 待确认 | 动态边界。 |
| R013 | class method 不具备 [[Construct]]，不能作为 constructor 使用。 | ECMAScript 2022 | 待确认 | method constructor boundary。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | override 修饰不存在的基类成员。 | checker | override missing() | 如支持 override。 |
| C002 | override 修饰 constructor。 | parser/checker | override constructor() | 非法位置。 |
| C003 | override 修饰字段，如 ArkTS 不支持。 | checker | override x:number | 待确认。 |
| C004 | 覆盖方法参数类型不兼容。 | checker | m(string) overrides m(number) | P0。 |
| C005 | 覆盖方法参数数量减少不兼容。 | checker | m() overrides m(x:number) | 待确认。 |
| C006 | 覆盖方法参数数量增加不兼容。 | checker | m(x,y) overrides m(x) | 待确认。 |
| C007 | 覆盖方法必选参数覆盖基类可选参数不兼容。 | checker | m(x:number) overrides m(x?:number) | 边界。 |
| C008 | rest 参数覆盖不兼容。 | checker | rest mismatch | 边界。 |
| C009 | 覆盖方法返回类型不兼容。 | checker | return string overrides number | P0。 |
| C010 | 覆盖方法缺少返回值。 | checker | m():number { } | P0。 |
| C011 | 覆盖方法部分控制流缺少返回值。 | checker | if cond return 1 | P0。 |
| C012 | overload override 遗漏部分签名，如 ArkTS 要求完整覆盖。 | checker | missing overload | 待确认。 |
| C013 | overload override 实现签名不兼容。 | checker | implementation mismatch | overload。 |
| C014 | getter 返回类型不兼容，如支持 getter。 | checker | get x():string overrides number | accessor。 |
| C015 | setter 参数类型不兼容，如支持 setter。 | checker | set x(v:string) overrides number | accessor。 |
| C016 | getter 覆盖普通方法。 | checker | get m overrides m() | accessor/method 冲突。 |
| C017 | 普通方法覆盖 getter。 | checker | m() overrides get m | accessor/method 冲突。 |
| C018 | instance method 覆盖 static method。 | checker | m() overrides static m() | P0。 |
| C019 | static method 覆盖 instance method。 | checker | static m() overrides m() | P0。 |
| C020 | 字段与基类方法同名，如 ArkTS 禁止。 | checker | x field vs x method | 待确认。 |
| C021 | 方法与基类字段同名，如 ArkTS 禁止。 | checker | m method vs m field | 待确认。 |
| C022 | 字段遮蔽类型不兼容，如 ArkTS 禁止。 | checker | x:string shadows x:number | 待确认。 |
| C023 | public method 覆盖为 protected。 | checker | protected m() | visibility P0。 |
| C024 | public method 覆盖为 private。 | checker | private m() | visibility P0。 |
| C025 | protected method 覆盖为 private。 | checker | private m() | visibility。 |
| C026 | private method 被 override，如 ArkTS 禁止。 | checker | override private m() | private boundary。 |
| C027 | abstract method 实现参数类型不兼容。 | checker | abstract m(number), impl m(string) | P0。 |
| C028 | abstract method 实现返回类型不兼容。 | checker | abstract m():number, impl string | P0。 |
| C029 | interface method 实现参数类型不兼容。 | checker | implements I.m mismatch | interface。 |
| C030 | interface method 实现返回类型不兼容。 | checker | implements I.m return mismatch | interface。 |
| C031 | protected/private method 不能满足 interface public method。 | checker | private/protected m implements I.m | interface。 |
| C032 | generic method override 约束不兼容。 | checker | T constraint mismatch | generic。 |
| C033 | super.method() 参数类型错误。 | checker | super.m('s') | super。 |
| C034 | super.missingMethod()。 | checker | super.missingMethod() | super。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | super.method 不存在且未被静态拦截。 | TypeError | super.missingMethod() | ArkTS 通常 fail_compile。 |
| E002 | super.method 存在但非 callable。 | TypeError | dynamic prototype change | 如允许动态修改。 |
| E003 | 方法提取后 this 丢失。 | TypeError 或差异记录 | let f=obj.m; f() | 运行时 this。 |
| E004 | 动态修改 prototype 后 override 调用失败。 | TypeError 或差异记录 | prototype.m = undefined | 动态边界。 |
| E005 | class method 被 new 调用。 | TypeError | new obj.m() | method non-constructor。 |
| E006 | Base constructor 调用 override method 时读取未初始化 derived field。 | TypeError 或差异记录 | construction dispatch | 初始化顺序风险。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| override keyword | ECMA 无 override 关键字 | TS 支持并可配置要求 | ArkTS 支持/必须性待确认 | P1。 |
| 参数兼容 | ECMA 不检查类型 | TS 有函数兼容规则 | ArkTS 规则待确认 | P0。 |
| 返回协变 | ECMA 不检查类型 | TS 支持相关兼容 | ArkTS 是否允许待确认 | P0。 |
| visibility | ECMA 无 TS-style visibility | TS 禁止收窄 | ArkTS 规则待确认 | P0。 |
| private override | ECMA private 与 TS private 不同 | TS private 不可 override | ArkTS shadow/override 待确认 | 边界。 |
| static vs instance | 运行时分别在 constructor/prototype | TS 类型侧分离 | ArkTS 应分离 | P0。 |
| abstract implementation | ECMA 无 abstract | TS checker 概念 | ArkTS-specific | 不归 test262。 |
| interface implementation | ECMA 无 interface | TS checker 概念 | ArkTS-specific | 不归 test262。 |
| getter/setter | ECMA accessor 运行时存在 | TS 有类型检查 | ArkTS 支持待确认 | 可排除。 |
| runtime dispatch | ECMA prototype lookup | TS 类型擦除 | ArkTS runtime 应遵循 class runtime | test262 可参考。 |

## Open Questions

- ArkTS 是否支持 override 关键字？
- ArkTS 是否强制要求覆盖基类方法时写 override？
- override 是否只适用于 method，还是也适用于 accessor/property/static method？
- 参数类型覆盖规则是严格一致、协变/逆变，还是 ArkTS 自定义规则？
- 返回值是否允许协变？
- 可见性是否允许 protected 放宽为 public，是否一律禁止收窄？
- private 成员同名是 override、shadow 还是禁止？
- static method 覆盖是否与 instance method 覆盖严格分离？
- abstract method 实现是否需要 override？
- interface method 实现是否需要 override？
