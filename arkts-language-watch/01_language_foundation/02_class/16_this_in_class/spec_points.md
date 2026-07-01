# Spec Points

## Feature

This in Class Watch

## ECMA Baseline Status

ES2022 / ArkTS-specific

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

<!-- CLASS_THIS_IN_CLASS_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

This in Class

## ECMA Baseline Status

ES2022 / ArkTS-specific / TS-compatible / Mixed

## Related Sources

* ECMAScript 2022 Class Definitions
* ECMAScript 2022 This Binding
* ECMAScript 2022 Derived Class Constructor Semantics
* ECMAScript 2022 Super Property Semantics
* ArkTS official language documentation
* ArkTS static language rules
* TypeScript class this type compatibility reference
* test262 class this / super / derived constructor cases when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | constructor 中允许使用 this 访问实例成员。 | ECMAScript 2022 / ArkTS | 待确认 | 派生类需 super() 后。 |
| S002 | instance method 中允许使用 this。 | ECMAScript 2022 / ArkTS | 待确认 | instance side。 |
| S003 | static method 中允许使用 this，其类型/运行时值属于 constructor/static side。 | ECMAScript 2022 / ArkTS | 待确认 | static side。 |
| S004 | field initializer 中使用 this 是否支持需确认。 | ECMAScript 2022 / ArkTS | 待确认 | 初始化顺序边界。 |
| S005 | derived constructor 中 super() 前使用 this 应被禁止。 | ECMAScript 2022 / ArkTS | 待确认 | this-before-super。 |
| S006 | arrow function 捕获 this 的支持范围需确认。 | ECMAScript 2022 / ArkTS | 待确认 | lexical this。 |
| S007 | nested normal function 中 this 行为需确认。 | ECMAScript 2022 / ArkTS | 待确认 | 普通函数边界。 |
| S008 | 显式 this 参数是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不默认纳入必测。 |
| S009 | 方法返回 this / 多态 this 类型语法是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | fluent API。 |
| S010 | super.method() 与 this receiver 组合语法需覆盖。 | ECMAScript 2022 | 待确认 | super receiver。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | constructor 中 this 类型为当前 class instance type。 | ArkTS checker | 待确认 | base class。 |
| T002 | instance method 中 this 类型为 instance side。 | ArkTS checker | 待确认 | 实例成员。 |
| T003 | static method 中 this 类型为 constructor/static side。 | ArkTS checker | 待确认 | static member。 |
| T004 | this.field 访问必须存在实例字段。 | ArkTS checker | 待确认 | P0。 |
| T005 | this.method() 调用必须存在实例方法且参数匹配。 | ArkTS checker | 待确认 | P0。 |
| T006 | this 访问 private/protected/public 成员应按可见性检查。 | ArkTS checker | 待确认 | visibility。 |
| T007 | this 修改 readonly 字段应按 readonly 规则检查。 | ArkTS checker | 待确认 | readonly。 |
| T008 | instance method 中 this.staticField 是否禁止需确认。 | ArkTS checker | 待确认 | static/instance。 |
| T009 | static method 中 this 访问 instance field 应报错。 | ArkTS checker | 待确认 | P0。 |
| T010 | static method 中 this 调用 instance method 应报错。 | ArkTS checker | 待确认 | P0。 |
| T011 | derived constructor 中 super() 前 this 使用应报错。 | ArkTS checker | 待确认 | P0。 |
| T012 | super() 后 this 可按 derived instance type 使用。 | ArkTS checker | 待确认 | derived。 |
| T013 | field initializer 中 this 访问前序/后序字段的检查需确认。 | ArkTS checker | 待确认 | init order。 |
| T014 | field initializer 中 this.method() 是否允许需确认。 | ArkTS checker | 待确认 | method call。 |
| T015 | method 返回 this 时返回类型规则需确认。 | ArkTS checker | 待确认 | return this。 |
| T016 | 多态 this / fluent API 支持范围需确认。 | ArkTS checker / TS-compatible | 待确认 | polymorphic this。 |
| T017 | arrow function 捕获 this 时应保持外层 this 类型。 | ArkTS checker | 待确认 | lexical this。 |
| T018 | normal nested function 中 this 是否允许访问 class members 需确认。 | ArkTS checker | 待确认 | nested function。 |
| T019 | method extraction 后 this 丢失是否被 checker 拦截需确认。 | ArkTS checker | 待确认 | callback。 |
| T020 | callback 中 this 绑定规则需按函数类型检查。 | ArkTS checker | 待确认 | callback。 |
| T021 | override method 中 this 类型应为当前 receiver/dynamic dispatch 边界。 | ArkTS checker / ES2022 | 待确认 | override。 |
| T022 | super.method() 内部 receiver 应为当前 this。 | ArkTS checker / ES2022 | 待确认 | super。 |
| T023 | abstract class concrete method 中 this 应可表示 concrete subclass receiver。 | ArkTS checker | 待确认 | abstract。 |
| T024 | interface method implementation 中 this 按 class instance 检查。 | ArkTS checker | 待确认 | interface。 |
| T025 | generic class 中 this 访问 T 字段应保持 T 类型。 | ArkTS generics | 待确认 | generic。 |
| T026 | static generic method 中 this 与 U/T 的关系需确认。 | ArkTS generics | 待确认 | static generic。 |
| T027 | object literal method this 与 class method this 类型推断不同。 | ArkTS checker | 待确认 | object literal contrast。 |
| T028 | 跨模块 class method 中 this 类型不应丢失。 | ArkTS modules | 待确认 | module。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | class method 默认按 strict this 语义执行。 | ECMAScript 2022 | 待确认 | unbound this undefined。 |
| R002 | obj.method() 调用时 this 为 obj。 | ECMAScript 2022 | 待确认 | method call。 |
| R003 | method extraction 后直接调用时 this 可能为 undefined。 | ECMAScript 2022 | 待确认 | P0 runtime boundary。 |
| R004 | this 为 undefined 时访问字段抛 TypeError。 | ECMAScript 2022 | 待确认 | runtime TypeError。 |
| R005 | static method this 通常为调用该方法的 constructor object。 | ECMAScript 2022 | 待确认 | static this。 |
| R006 | derived class 调用 inherited static method 时 this 可指向 derived constructor。 | ECMAScript 2022 | 待确认 | static inheritance。 |
| R007 | derived constructor 中 super() 前 this 运行时不可访问。 | ECMAScript 2022 | 待确认 | ReferenceError boundary。 |
| R008 | super() 后 this 完成初始化。 | ECMAScript 2022 | 待确认 | derived constructor。 |
| R009 | field initializer 中 this 指向正在初始化的 instance。 | ECMAScript 2022 | 待确认 | if supported。 |
| R010 | arrow function 捕获外层 lexical this。 | ECMAScript 2022 | 待确认 | arrow。 |
| R011 | normal function 的 this 由调用方式决定，不自动捕获 class this。 | ECMAScript 2022 | 待确认 | nested function。 |
| R012 | super.method() 调用时 receiver 仍为当前 this。 | ECMAScript 2022 | 待确认 | super receiver。 |
| R013 | base method 被 derived instance 调用时 this 为 derived instance。 | ECMAScript 2022 | 待确认 | dynamic dispatch。 |
| R014 | call/apply/bind 可改变 this，仅在 ArkTS 支持时覆盖。 | ECMAScript 2022 | 待确认 | optional boundary。 |
| R015 | 类型注解不改变运行时 this 绑定。 | ArkTS boundary / ES2022 | 待确认 | type erasure。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | constructor 中 this 访问不存在字段。 | checker | this.missing | P0。 |
| C002 | constructor 中 this.method() 参数错误。 | checker | this.m('x') | P0。 |
| C003 | constructor 中通过 this 访问 static member，如 ArkTS 禁止。 | checker | this.staticX | static/instance。 |
| C004 | derived constructor 中 super() 前访问 this。 | checker | this; super() | P0。 |
| C005 | derived constructor 中 super() 前访问 this.field。 | checker | this.x; super() | P0。 |
| C006 | derived constructor 中 super() 前调用 this.method()。 | checker | this.m(); super() | P0。 |
| C007 | derived constructor 部分路径未调用 super() 后使用 this。 | checker | if flag super(); this.x | P0。 |
| C008 | instance method 中 this 访问不存在字段。 | checker | this.missing | P0。 |
| C009 | instance method 中 this.method() 参数错误。 | checker | this.m('x') | P0。 |
| C010 | instance method 中修改 readonly field。 | checker | this.readonlyX=1 | P0。 |
| C011 | instance method 中 this.staticField 如 ArkTS 禁止。 | checker | this.staticX | P1。 |
| C012 | static method 中 this 访问 instance field。 | checker | this.x | P0。 |
| C013 | static method 中 this 调用 instance method。 | checker | this.m() | P0。 |
| C014 | field initializer 中 this 访问后序字段，如 ArkTS 禁止。 | checker | x=this.y; y=1 | P1。 |
| C015 | field initializer 中 this.method() 如 ArkTS 禁止。 | checker | x=this.m() | P1。 |
| C016 | field initializer 中通过 this 访问 static field，如 ArkTS 禁止。 | checker | this.staticX | P1。 |
| C017 | method 返回 this 但声明返回不兼容类型。 | checker | m():Other{return this} | P0。 |
| C018 | fluent API 返回 this 类型不支持时标注 this，checker 报错。 | checker | m():this | boundary。 |
| C019 | normal nested function 中 this.field 如 ArkTS 禁止。 | checker | function f(){this.x} | boundary。 |
| C020 | method extraction 未绑定引用如 ArkTS 拦截。 | checker | let f=obj.m | boundary。 |
| C021 | callback 函数类型 this 参数不兼容，如支持显式 this 参数。 | checker | callback this mismatch | boundary。 |
| C022 | static generic method 中 this 误用 class type parameter T。 | checker | static m(){this.value:T} | generic。 |
| C023 | object literal 赋给 class method type 时 this 不兼容。 | checker | object method this mismatch | object literal。 |
| C024 | interface method 返回 this 不支持时声明，checker 报错。 | checker | interface m():this | boundary。 |
| C025 | cross-module method this 类型丢失导致调用不兼容应报错。 | checker | imported method reference | module。 |
| C026 | this 访问 private static member 的非法实例侧访问。 | checker | this.privateStatic | visibility/static。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | method extraction 后 this 为 undefined 导致 TypeError。 | TypeError | let f=obj.m; f() | P0。 |
| E002 | derived constructor this before super 未被静态拦截。 | ReferenceError | this before super | ArkTS 可能 fail_compile。 |
| E003 | this.method 非 callable。 | TypeError | dynamic replace method with number | dynamic boundary。 |
| E004 | callback 中 this 丢失。 | TypeError | callback(obj.m) | runtime this。 |
| E005 | 非法 receiver 调用方法导致 this 类型不匹配。 | TypeError 或差异记录 | A.prototype.m.call(wrong) | dynamic receiver。 |
| E006 | static method 提取后 this 丢失导致 static field 访问失败。 | TypeError | let f=A.m; f() | static this。 |
| E007 | field initializer 中 this.method 抛异常。 | 原始异常类型 | x=this.m() | initialization。 |
| E008 | super.method 内部 this 为错误 receiver 的动态边界。 | TypeError 或差异记录 | call/apply dynamic | super receiver。 |
| E009 | object literal method this 丢失对照。 | TypeError 或差异记录 | let f=obj.m; f() | object literal contrast。 |
| E010 | call/apply/bind 改变 this 后访问缺失字段。 | TypeError 或差异记录 | method.call(wrong) | if supported。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| polymorphic this | ECMA 无静态 this type | TS 支持 this type | ArkTS 支持待确认 | 不默认纳入。 |
| explicit this parameter | ECMA 无显式 this 参数 | TS 支持 | ArkTS 支持待确认 | 不默认纳入。 |
| field initializer this | ES2022 支持 this | TS 支持 | ArkTS 支持范围待确认 | P1。 |
| field initializer calls method | ES 可调用但有初始化风险 | TS 可能允许 | ArkTS 待确认 | 边界。 |
| method extraction | 运行时 this 丢失 | TS 可通过 noImplicitThis 等检查 | ArkTS 是否 checker 拦截待确认 | P1。 |
| static this type | 运行时为 constructor object | TS static side this | ArkTS 待确认 | P1。 |
| this before super | 运行时 ReferenceError | TS 编译期报错 | ArkTS 可能 fail_compile | P0。 |
| arrow lexical this | ES lexical this | TS 类型推断 | ArkTS 是否一致待确认 | P1。 |
| normal nested function | this 由调用方式决定 | TS 可报 this 类型问题 | ArkTS 限制待确认 | 边界。 |
| call/apply/bind | ES 支持 | TS 有类型规则 | ArkTS 支持待确认 | 可排除。 |

## Open Questions

- ArkTS 是否支持多态 this type？
- ArkTS 是否支持显式 this 参数？
- ArkTS 是否允许 field initializer 使用 this？
- ArkTS 是否允许 field initializer 调用 this.method()？
- ArkTS 是否在 checker 阶段拦截 method extraction 的 this 丢失？
- static method 中 this 的类型是 constructor side 还是受限制？
- derived constructor 中 this before super 是 compile-time error 还是 runtime error？
- arrow function 捕获 this 是否与 ES2022 一致？
- normal nested function 中 this 行为是否受 ArkTS 限制？
- call/apply/bind 是否支持及如何检查 this 类型？
