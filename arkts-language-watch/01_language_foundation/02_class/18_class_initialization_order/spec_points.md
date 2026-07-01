# Spec Points

## Feature

Class Initialization Order Watch

## ECMA Baseline Status

ES2022

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

<!-- CLASS_INITIALIZATION_ORDER_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Class Initialization Order

## ECMA Baseline Status

ES2022 / ArkTS-specific / Mixed

## Related Sources

* ECMAScript 2022 Class Definitions
* ECMAScript 2022 Public Class Fields
* ECMAScript 2022 Derived Class Constructor Semantics
* ECMAScript 2022 Static Fields and Static Initialization Blocks, only if ArkTS supports static block
* ArkTS official language documentation
* ArkTS static language rules
* TypeScript class initialization compatibility reference
* test262 class fields / derived constructors / static fields initialization cases when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 实例字段按源码声明顺序出现并参与初始化。 | ECMAScript 2022 / ArkTS | 待确认 | 字段顺序是核心运行时观察点。 |
| S002 | 字段初始化表达式可使用字面量、函数调用、this 和 static 成员的支持范围需确认。 | ArkTS classes | 待确认 | 按能力分流。 |
| S003 | constructor 体在实例字段初始化后或 super() 后特定阶段执行。 | ECMAScript 2022 | 待确认 | base/derived 不同。 |
| S004 | 派生类 constructor 中 super() 是 this 初始化前置条件。 | ECMAScript 2022 / ArkTS | 待确认 | this-before-super。 |
| S005 | static field 按源码声明顺序参与 class evaluation。 | ECMAScript 2022 | 待确认 | static 初始化。 |
| S006 | static block 是否支持需确认，支持时与 static field 按源码顺序执行。 | ECMAScript 2022 | 待确认 | 未确认不作为必测。 |
| S007 | 基类与派生类字段、constructor、static member 的初始化语法组合需覆盖。 | ECMAScript 2022 / ArkTS | 待确认 | 继承收口。 |
| S008 | 初始化表达式中调用方法、super、static method 的语法支持需确认。 | ArkTS classes | 待确认 | 方法调用边界。 |
| S009 | module export/import 下 class 初始化时机需覆盖。 | ArkTS modules | 待确认 | 跨模块。 |
| S010 | readonly、abstract、generic 字段与初始化顺序组合语法需覆盖。 | ArkTS-specific | 待确认 | 静态规则交叉。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | 字段初始化表达式类型必须可赋值给字段声明类型。 | ArkTS checker | 待确认 | P0。 |
| T002 | constructor 中字段赋值类型必须匹配字段声明类型。 | ArkTS checker | 待确认 | P0。 |
| T003 | 未初始化字段是否必须在 constructor 中 definite assignment 需确认。 | ArkTS checker / TS-compatible | 待确认 | 不归 test262。 |
| T004 | readonly 字段声明处初始化和 constructor 初始化规则需确认。 | ArkTS checker | 待确认 | readonly。 |
| T005 | readonly 字段 constructor 外赋值应报错。 | ArkTS checker | 待确认 | P0。 |
| T006 | 字段初始化表达式引用后序字段是否允许需确认。 | ArkTS checker/runtime | 待确认 | 边界。 |
| T007 | 字段初始化表达式使用 this 的支持范围需确认。 | ArkTS checker/runtime | 待确认 | this 可用性。 |
| T008 | 字段初始化表达式调用实例方法的支持范围需确认。 | ArkTS checker/runtime | 待确认 | override 风险。 |
| T009 | 字段初始化表达式访问 static member 应按 static side 类型检查。 | ArkTS checker | 待确认 | static 交叉。 |
| T010 | 派生类 constructor 中 super() 前访问 this 应报错。 | ArkTS checker | 待确认 | P0。 |
| T011 | super() 参数类型和个数按基类 constructor 检查。 | ArkTS checker | 待确认 | constructor/super。 |
| T012 | 字段遮蔽时派生类字段类型是否必须兼容基类字段需确认。 | ArkTS checker | 待确认 | 继承字段。 |
| T013 | Base constructor 调用 override method 的静态允许性需确认。 | ArkTS checker/runtime | 待确认 | 运行时风险。 |
| T014 | static field 初始化表达式类型必须匹配声明类型。 | ArkTS checker | 待确认 | P0。 |
| T015 | static field 初始化表达式不可访问 instance field。 | ArkTS checker | 待确认 | P0。 |
| T016 | static block 中不可访问 instance field，如支持 static block。 | ArkTS checker | 待确认 | static block。 |
| T017 | generic class 字段 T 初始化和 constructor 赋值需满足 T/约束。 | ArkTS generics | 待确认 | generic。 |
| T018 | abstract base constructor 初始化字段与 concrete subclass 继承需按 abstract 规则检查。 | ArkTS abstract class | 待确认 | abstract。 |
| T019 | module/circular import 初始化边界需区分 checker 与 runtime。 | ArkTS modules | 待确认 | 跨模块。 |
| T020 | 初始化表达式副作用顺序不应被类型检查改变。 | ArkTS checker/runtime | 待确认 | 运行时顺序观察。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | 实例字段按源码声明顺序初始化。 | ECMAScript 2022 | 待确认 | P0。 |
| R002 | 字段初始化表达式按声明顺序求值，副作用顺序可观察。 | ECMAScript 2022 | 待确认 | P0。 |
| R003 | 字段初始化表达式引用前序字段应观察到前序字段已初始化值。 | ECMAScript 2022 | 待确认 | P0。 |
| R004 | 字段初始化表达式引用后序字段的行为需记录。 | ECMAScript 2022 / ArkTS boundary | 待确认 | 可能 undefined 或 checker 限制。 |
| R005 | 字段声明处初始化后 constructor 可读取初始值。 | ECMAScript 2022 | 待确认 | base class。 |
| R006 | 字段声明处初始化后 constructor 可再次赋值，readonly 除外。 | ECMAScript 2022 / ArkTS | 待确认 | constructor 关系。 |
| R007 | base instance fields 在 base constructor 之前初始化。 | ECMAScript 2022 | 待确认 | P0。 |
| R008 | derived constructor 调用 super() 前 this 不可用。 | ECMAScript 2022 | 待确认 | ReferenceError/checker。 |
| R009 | super() 执行 base field 初始化和 base constructor。 | ECMAScript 2022 | 待确认 | P0。 |
| R010 | super() 返回后 derived instance fields 初始化。 | ECMAScript 2022 | 待确认 | P0。 |
| R011 | derived fields 初始化后执行 derived constructor 中 super() 后续语句。 | ECMAScript 2022 | 待确认 | P0。 |
| R012 | 标准顺序为 Base static -> Derived static -> new Derived -> Base fields -> Base constructor -> Derived fields -> Derived constructor body。 | ECMAScript 2022 | 待确认 | 总序列。 |
| R013 | 多层继承按基类到派生类逐层执行初始化。 | ECMAScript 2022 | 待确认 | A<-B<-C。 |
| R014 | 字段遮蔽时 base 和 derived 字段各自按所属阶段初始化。 | ECMAScript 2022 | 待确认 | 同名字段。 |
| R015 | Base constructor 调用 override method 时可能观察到 derived fields 尚未初始化。 | ECMAScript 2022 | 待确认 | 高风险边界。 |
| R016 | static fields 在 class evaluation 阶段按声明顺序初始化。 | ECMAScript 2022 | 待确认 | static。 |
| R017 | base static members 初始化先于 derived static members。 | ECMAScript 2022 | 待确认 | static inheritance。 |
| R018 | static block 如支持，与 static fields 按源码顺序交错执行。 | ECMAScript 2022 | 待确认 | 待确认。 |
| R019 | class evaluation 中 static initializer 抛异常会中断 class 初始化。 | ECMAScript 2022 | 待确认 | abrupt completion。 |
| R020 | 实例字段初始化表达式抛异常会中断对象构造。 | ECMAScript 2022 | 待确认 | runtime error。 |
| R021 | constructor 抛异常会中断对象构造。 | ECMAScript 2022 | 待确认 | runtime error。 |
| R022 | super() 抛异常时 derived fields 不应继续初始化。 | ECMAScript 2022 | 待确认 | runtime error。 |
| R023 | module import 可能触发 class evaluation 和 static 初始化。 | ECMAScript 2022 / ArkTS modules | 待确认 | module。 |
| R024 | 类型检查不改变运行时初始化顺序。 | ArkTS boundary | 待确认 | 静态/运行时分离。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | 字段初始化表达式类型与字段类型不匹配。 | checker | x:number = 's' | P0。 |
| C002 | constructor 中字段赋值类型不匹配。 | checker | this.x = 's' where x:number | P0。 |
| C003 | 字段无初始化且 constructor 未赋值，如 ArkTS 要求 definite assignment。 | checker | x:number; constructor(){} | 待确认。 |
| C004 | readonly 字段 constructor 外赋值。 | checker | obj.x = 1 | P0。 |
| C005 | readonly 字段声明处初始化后 constructor 再赋值，如 ArkTS 禁止。 | checker | readonly x=1; constructor(){this.x=2} | 待确认。 |
| C006 | 字段初始化表达式引用后序字段，如 ArkTS 禁止。 | checker | x=this.y; y=1 | 边界。 |
| C007 | 字段初始化表达式调用实例方法，如 ArkTS 禁止。 | checker | x=this.m() | 边界。 |
| C008 | 字段初始化表达式访问不允许的 this 成员。 | checker | x=this.missing | P1。 |
| C009 | 派生类 constructor super() 前访问 this。 | checker | this.x; super() | P0。 |
| C010 | 派生类 constructor super() 前访问 this.field。 | checker | this.x=1; super() | P0。 |
| C011 | 派生类 constructor super() 前调用 this.method()。 | checker | this.m(); super() | P0。 |
| C012 | super() 参数类型不匹配。 | checker | super('s') -> Base(number) | P0。 |
| C013 | super() 参数个数不足。 | checker | super() -> Base(x:number) | P0。 |
| C014 | 字段遮蔽类型不兼容，如 ArkTS 禁止。 | checker | Base.x:number / Derived.x:string | 待确认。 |
| C015 | static field 初始化表达式类型不匹配。 | checker | static x:number='s' | P0。 |
| C016 | static field 初始化表达式访问 instance field。 | checker | static y=this.x | P0。 |
| C017 | static block 中访问 instance field，如支持 static block。 | checker | static { this.x } | 待确认。 |
| C018 | static block 不支持时使用 static block。 | parser/checker | static {} | Unsupported。 |
| C019 | generic T 字段初始化不满足约束。 | checker | this.value = bad | generic。 |
| C020 | module/circular import 中静态可判定非法引用，如 ArkTS checker 支持。 | checker | cycle init | 待确认。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | 字段初始化表达式抛异常。 | 原始异常类型 | x = thrower() | 实例初始化中断。 |
| E002 | 字段初始化表达式调用方法时方法抛异常。 | 原始异常类型 | x = this.m() | 实例初始化中断。 |
| E003 | constructor 抛异常。 | 原始异常类型 | constructor(){ throw err } | 对象构造中断。 |
| E004 | super() 内 base constructor 抛异常。 | 原始异常类型 | super() throws | derived fields 不初始化。 |
| E005 | super() 前 this 访问未被静态拦截。 | ReferenceError | this before super | ArkTS 可能 fail_compile。 |
| E006 | derived field 初始化表达式抛异常。 | 原始异常类型 | after super derived field throws | constructor 剩余语句不执行。 |
| E007 | static field 初始化表达式抛异常。 | 原始异常类型 | static x = thrower() | class evaluation 失败。 |
| E008 | static block 抛异常，如支持 static block。 | 原始异常类型 | static { throw err } | class evaluation 失败。 |
| E009 | Base static initializer 抛异常导致 Derived static 不执行。 | 原始异常类型 | Base static throws | static inheritance。 |
| E010 | Base constructor 调用 override method 读取未初始化 derived field。 | TypeError 或差异记录 | override reads derived field | 高风险边界。 |
| E011 | circular import 中访问未初始化 static field。 | ReferenceError 或差异记录 | module cycle | 按支持记录。 |
| E012 | constructor return object/primitive 边界导致异常或差异。 | TypeError 或差异记录 | derived constructor return | constructor 交叉。 |
| E013 | static method 在 static initializer 中调用并抛异常。 | 原始异常类型 | static x = A.m() | static 初始化中断。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| 字段初始化顺序 | ES2022 class fields 有明确顺序 | TS 与 ES class fields 语义相关 | ArkTS 是否一致待确认 | P0。 |
| 字段 initializer 使用 this | ES 支持实例字段 initializer this | TS 支持 | ArkTS 支持范围待确认 | P1。 |
| 引用后序字段 | ES 可观察到尚未初始化状态 | TS 可能有检查 | ArkTS 是否 checker 拦截待确认 | 边界。 |
| derived fields timing | super() 后初始化 derived fields | TS 对齐 ES | ArkTS 是否一致待确认 | P0。 |
| static block | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | 未确认不必测。 |
| static initialization timing | class evaluation 阶段 | TS emit/target 相关 | ArkTS runtime 需确认 | P1。 |
| definite assignment | ECMA 不涉及 | TS checker 概念 | ArkTS checker 规则待确认 | 不归 test262。 |
| constructor 调 override | ES 允许且可观察未初始化字段 | TS 可能允许 | ArkTS 是否限制待确认 | 高风险。 |
| 初始化失败对象状态 | abrupt completion 中断 | TS 不直接定义 runtime | ArkRuntime 可观察性需确认 | runtime。 |

## Open Questions

- ArkTS 字段初始化顺序是否完全与 ES2022 class fields 一致？
- ArkTS 是否允许字段初始化表达式访问 `this`？
- ArkTS 是否允许字段初始化表达式调用实例方法？
- ArkTS 是否允许字段初始化表达式引用后序字段，还是 checker 拦截？
- ArkTS 派生类字段初始化是否严格发生在 `super()` 之后？
- ArkTS 是否支持 static block？
- ArkTS static 初始化时机是否与 ES2022 class evaluation 一致？
- ArkTS 是否在 checker 阶段拦截 definite assignment 和部分初始化顺序风险？
- constructor 中调用可被 override 的方法是否允许？
- 初始化失败后的对象状态是否可观察？
