# Spec Points

## Feature

Object Literal Compatibility Watch

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

<!-- CLASS_OBJECT_LITERAL_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Object Literal Compatibility

## ECMA Baseline Status

ArkTS-specific / TS-compatible / ES2022 / Mixed

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript object literal compatibility reference
* ECMAScript 2022 Object Initializer runtime semantics
* ECMAScript 2022 property access / object runtime behavior
* test262 object initializer cases only for runtime object behavior, not ArkTS type compatibility

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | object literal 可作为普通对象值。 | ECMAScript 2022 Object Initializer | 待确认 | 运行时对象语义。 |
| S002 | object literal 可赋值给 object 类型。 | ArkTS type system | 待确认 | 基础类型。 |
| S003 | object literal 赋值给 interface 类型是否支持需确认。 | ArkTS interfaces / TS-compatible | 待确认 | 静态兼容。 |
| S004 | object literal 赋值给 class type 是否支持需确认。 | ArkTS class type | 待确认 | class/object literal 边界。 |
| S005 | object literal method shorthand 是否支持需确认。 | ECMAScript 2022 / ArkTS | 待确认 | 不支持则记录 Unsupported。 |
| S006 | object literal getter/setter 是否支持需确认。 | ECMAScript 2022 / ArkTS | 待确认 | accessor 边界。 |
| S007 | computed property name 是否支持需确认。 | ECMAScript 2022 / ArkTS | 待确认 | 不默认纳入必测。 |
| S008 | optional/readonly property 类型语法是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | interface/object type 边界。 |
| S009 | index signature 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 动态属性限制。 |
| S010 | object literal spread 是否支持需确认。 | ECMAScript 2022 / ArkTS | 待确认 | 不默认纳入。 |
| S011 | object literal 可作为函数参数和返回值表达式。 | ECMAScript 2022 / ArkTS | 待确认 | freshness/excess 边界。 |
| S012 | 跨模块 interface/class type 与 object literal 赋值语法需覆盖。 | ArkTS modules | 待确认 | module。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | object literal 属性类型必须匹配目标 object/interface/class 成员类型。 | ArkTS checker | 待确认 | P0。 |
| T002 | object literal 缺少必需 property 应报错。 | ArkTS checker | 待确认 | P0。 |
| T003 | object literal 缺少必需 method 应报错。 | ArkTS checker | 待确认 | P0。 |
| T004 | object literal 多余属性是否报错需确认。 | ArkTS checker / TS-compatible | 待确认 | excess property。 |
| T005 | freshness 规则是否存在需确认。 | ArkTS checker / TS-compatible | 待确认 | 新鲜字面量与变量。 |
| T006 | object literal method 可匹配 interface/class method 签名。 | ArkTS checker | 待确认 | method。 |
| T007 | function property 是否可匹配 method 签名需确认。 | ArkTS checker | 待确认 | function property。 |
| T008 | method 参数类型和返回类型必须兼容。 | ArkTS checker | 待确认 | P0。 |
| T009 | readonly property 兼容规则需确认。 | ArkTS checker | 待确认 | readonly。 |
| T010 | optional property 缺省规则需确认。 | ArkTS checker | 待确认 | optional。 |
| T011 | nested object literal 必须递归满足 nested target type。 | ArkTS checker | 待确认 | nested。 |
| T012 | array property 元素类型必须匹配目标类型。 | ArkTS checker | 待确认 | array。 |
| T013 | class type property 必须接收兼容 class instance/object literal。 | ArkTS checker | 待确认 | class property。 |
| T014 | interface type property 必须满足 interface 成员。 | ArkTS checker | 待确认 | interface property。 |
| T015 | union/null property 支持边界需确认。 | ArkTS type system | 待确认 | union/null。 |
| T016 | generic property 中 T 的约束必须满足。 | ArkTS generics | 待确认 | generic。 |
| T017 | object literal 不能满足含 private 成员的 class type。 | ArkTS checker | 待确认 | P0。 |
| T018 | object literal 不能满足含 protected 成员的 class type。 | ArkTS checker | 待确认 | P0。 |
| T019 | object literal 是否可满足 readonly class field 需确认。 | ArkTS checker | 待确认 | readonly class。 |
| T020 | object literal 可满足 interface readonly property 的规则需确认。 | ArkTS checker | 待确认 | readonly interface。 |
| T021 | object literal 不应被要求满足 class static side / constructor side，除非目标类型明确为 constructor type。 | ArkTS checker | 待确认 | static side。 |
| T022 | object literal 赋值给 abstract class type 支持边界需确认。 | ArkTS checker | 待确认 | abstract。 |
| T023 | object literal 赋值给 generic class type 支持边界需确认。 | ArkTS checker | 待确认 | generic class。 |
| T024 | object literal 与 class instance assignability 差异需确认。 | ArkTS type system | 待确认 | class instance contrast。 |
| T025 | object literal 与 implements interface 无关，implements 只适用于 class。 | ArkTS checker | 待确认 | implements 对比。 |
| T026 | index signature 支持时所有属性必须满足 index value type。 | ArkTS checker | 待确认 | index signature。 |
| T027 | 动态属性访问/新增限制需按 ArkTS 静态规则检查。 | ArkTS static rules | 待确认 | dynamic property。 |
| T028 | ESObject/dynamic 边界是否绕过 object literal 静态检查需记录。 | ArkTS dynamic boundary | 待确认 | dynamic。 |
| T029 | 跨模块 object literal 赋值仍应执行目标类型成员检查。 | ArkTS modules | 待确认 | module。 |
| T030 | object literal runtime prototype/instanceof 差异不应被静态结构兼容误判。 | ArkTS boundary | 待确认 | runtime contrast。 |
| T031 | object literal 作为函数参数/返回值时是否触发 excess property check 需确认。 | ArkTS checker | 待确认 | freshness。 |
| T032 | type assertion/as 对 object literal compatibility 的影响需确认。 | ArkTS checker | 待确认 | assertion boundary。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | object literal 运行时创建普通对象。 | ECMAScript 2022 | 待确认 | Object Initializer。 |
| R002 | object literal 默认 prototype 通常为 Object.prototype。 | ECMAScript 2022 | 待确认 | prototype。 |
| R003 | object literal 不具备 class prototype methods，除非显式定义同名函数属性。 | ECMAScript 2022 | 待确认 | class contrast。 |
| R004 | object literal instanceof Class 通常为 false。 | ECMAScript 2022 | 待确认 | runtime contrast。 |
| R005 | object literal method 中 this 由调用形式决定。 | ECMAScript 2022 | 待确认 | this binding。 |
| R006 | object literal method 提取后 this 可能丢失。 | ECMAScript 2022 | 待确认 | runtime boundary。 |
| R007 | 访问缺失属性通常得到 undefined，ArkTS 静态语言可能提前拦截。 | ECMAScript 2022 / ArkTS boundary | 待确认 | missing property。 |
| R008 | 动态属性访问和新增是否可运行取决于 ArkTS 支持边界。 | ArkTS runtime boundary | 待确认 | dynamic property。 |
| R009 | 类型兼容在运行时擦除。 | ArkTS boundary | 待确认 | static/runtime split。 |
| R010 | Object.freeze 可作为运行时不可变对照，但不同于静态 compatibility。 | ECMAScript 2022 | 待确认 | runtime contrast。 |
| R011 | computed property/getter/setter/spread 的运行时行为仅在 ArkTS 支持时映射。 | ECMAScript 2022 | 待确认 | optional mapping。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | object literal 缺少 interface 必需属性。 | checker | let x:I = {} | P0。 |
| C002 | object literal 缺少 interface 必需方法。 | checker | let x:I = {p:1} | P0。 |
| C003 | object literal 属性类型与 interface 不一致。 | checker | p:string -> p:number | P0。 |
| C004 | object literal 方法参数类型与 interface method 不一致。 | checker | m(string) -> m(number) | P0。 |
| C005 | object literal 方法返回类型与 interface method 不一致。 | checker | return string -> number | P0。 |
| C006 | object literal 多余属性如 ArkTS 启用 excess property check。 | checker | {a,b} -> I{a} | 待确认。 |
| C007 | nested object literal 缺少 nested interface 属性。 | checker | nested missing | P0。 |
| C008 | array property 元素类型不匹配。 | checker | number[] target but string element | P0。 |
| C009 | object literal 缺少 class public field。 | checker | class type missing field | P0。 |
| C010 | object literal 缺少 class public method。 | checker | class type missing method | P0。 |
| C011 | object literal 属性类型与 class field 不一致。 | checker | class field mismatch | P0。 |
| C012 | object literal 方法参数与 class method 不一致。 | checker | class method param mismatch | P0。 |
| C013 | object literal 方法返回值与 class method 不一致。 | checker | class method return mismatch | P0。 |
| C014 | object literal 不能满足 private field class type。 | checker | class A { private x } | P0。 |
| C015 | object literal 不能满足 private method class type。 | checker | private m() | P0。 |
| C016 | object literal 不能满足 protected field class type。 | checker | protected x | P0。 |
| C017 | object literal 不能满足 protected method class type。 | checker | protected m() | P0。 |
| C018 | readonly interface property 通过引用写入。 | checker | i.readonlyP = 1 | readonly。 |
| C019 | object literal readonly property 类型不匹配。 | checker | readonly p mismatch | readonly。 |
| C020 | optional property 类型不匹配，如支持 optional。 | checker | optional p wrong type | optional。 |
| C021 | generic constraint 要求 object literal 属性但缺失。 | checker | T extends {p}; missing p | generic。 |
| C022 | object literal 不满足 generic constraint。 | checker | generic function arg | generic。 |
| C023 | object literal 不能满足 abstract class private/protected 成员。 | checker | abstract class boundary | abstract。 |
| C024 | object literal 缺少 derived class 新增字段。 | checker | derived type missing field | inheritance。 |
| C025 | object literal 缺少 derived class 新增方法。 | checker | derived type missing method | inheritance。 |
| C026 | object literal 被当作 class value/new。 | checker | new obj | constructor side。 |
| C027 | object literal 赋给 constructor type 不满足 construct signature。 | checker | typeof Class boundary | 待确认。 |
| C028 | index signature 属性类型不一致，如支持 index signature。 | checker | index value mismatch | index。 |
| C029 | 动态新增属性不允许时对 object literal 新增属性。 | checker | obj.newProp = 1 | dynamic property。 |
| C030 | 跨模块 object literal 赋值缺少 imported interface 成员。 | checker | import I; let x:I={} | module。 |
| C031 | 跨模块 private/protected class type 与 object literal 兼容错误。 | checker | import class with private | module。 |
| C032 | object literal function property 参数/返回不匹配目标 method。 | checker | m:(x:string)=>string | function property。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | object literal 方法提取后 this 丢失。 | TypeError 或差异记录 | let f=obj.m; f() | runtime this。 |
| E002 | 调用不存在方法。 | TypeError | obj.missing() | ArkTS 可能静态拦截。 |
| E003 | 动态属性访问结果 undefined 后调用。 | TypeError | obj['x']() | dynamic boundary。 |
| E004 | object literal 当 class instance 使用导致 instanceof false。 | 差异记录 | obj instanceof C | 非异常但需记录。 |
| E005 | ESObject/dynamic 边界绕过静态检查后方法体抛异常。 | 原始异常类型 | dynamic object | dynamic boundary。 |
| E006 | Object.freeze 后写属性。 | TypeError 或静默差异 | strict write frozen object | runtime contrast。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| class type assignment | ECMA 无静态 class type compatibility | TS 结构兼容有边界 | ArkTS 是否允许待确认 | P1。 |
| interface assignment | ECMA 无 interface | TS 支持结构兼容 | ArkTS 支持待确认 | P0。 |
| excess property | ECMA 不涉及 | TS 有 excess property/freshness | ArkTS 是否有待确认 | P1。 |
| index signature | ECMA 动态属性 | TS 支持 index signature | ArkTS 支持待确认 | Unsupported 记录。 |
| optional property | ECMA 不涉及静态 optional | TS 支持 | ArkTS 支持待确认 | 边界。 |
| readonly property | ECMA 不涉及静态 readonly | TS 支持 | ArkTS 支持待确认 | 边界。 |
| private/protected | ECMA 不涉及 TS-style private/protected | TS 不能由 object literal 满足 | ArkTS 待确认 | P0。 |
| abstract class type | ECMA 无 abstract | TS 有 abstract type | ArkTS 支持边界待确认 | abstract。 |
| runtime prototype | object literal prototype 与 class instance 不同 | TS 类型擦除 | ArkTS runtime 应记录差异 | runtime。 |
| dynamic property | ECMA 支持动态属性 | TS/ArkTS 可静态限制 | ArkTS 支持边界待确认 | dynamic。 |

## Open Questions

- ArkTS 是否允许 object literal 赋值给 class type？
- ArkTS 是否允许 object literal 赋值给 interface type？
- ArkTS 是否存在 excess property check？
- ArkTS 是否存在 freshness 规则？
- ArkTS 是否支持 index signature？
- ArkTS 是否支持 optional property 和 readonly property？
- object literal 是否可满足 class private/protected 成员？
- object literal 是否可满足 abstract class type？
- object literal 与 class instance 的 prototype/instanceof 差异是否需要在 XTS 中显式断言？
- ArkTS 是否限制 object literal 动态属性扩展？
