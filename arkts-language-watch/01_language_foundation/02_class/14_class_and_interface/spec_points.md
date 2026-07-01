# Spec Points

## Feature

Class and Interface Watch

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

<!-- CLASS_INTERFACE_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Class and Interface

## ECMA Baseline Status

ArkTS-specific / TS-compatible

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript interface/class compatibility reference
* ECMAScript 2022 class runtime semantics, only for runtime behavior of class instances
* test262 class cases, only for runtime inheritance/prototype behavior when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 允许 class implements interface 语法。 | ArkTS static rules | 待确认 | implements 是静态检查入口。 |
| S002 | class 可 implements 单个 interface。 | ArkTS interfaces | 待确认 | 基础正向。 |
| S003 | class 可 implements 多个 interface。 | ArkTS interfaces | 待确认 | 冲突成员需检查。 |
| S004 | implements 后必须引用 interface 类型。 | ArkTS parser/checker | 待确认 | 非 interface 应报错。 |
| S005 | interface property 可由 class instance field 实现。 | ArkTS interfaces/classes | 待确认 | public 实例字段。 |
| S006 | interface method 可由 class instance method 实现。 | ArkTS interfaces/classes | 待确认 | public 实例方法。 |
| S007 | interface optional property 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不支持则记录 Unsupported。 |
| S008 | interface readonly property 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 与 readonly field 交叉。 |
| S009 | interface index signature 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 动态属性限制可能影响。 |
| S010 | interface constructor signature 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | instance side 与 static side 边界。 |
| S011 | interface 继承 interface 后 class 可 implements 派生 interface。 | ArkTS interfaces | 待确认 | 接口继承交叉。 |
| S012 | interface 继承 class 类型是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不能直接套用 TS。 |
| S013 | abstract class 可 implements interface。 | ArkTS interfaces/classes | 待确认 | 可延迟实现边界。 |
| S014 | generic class 可 implements generic interface。 | ArkTS generics/interfaces | 待确认 | 泛型组合。 |
| S015 | export/import interface 后 class implements 的跨模块语法需覆盖。 | ArkTS modules | 待确认 | module integration。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | class implements interface 时必须满足 required property。 | ArkTS checker | 待确认 | 缺少 property 应报错。 |
| T002 | class implements interface 时必须满足 required method。 | ArkTS checker | 待确认 | 缺少 method 应报错。 |
| T003 | class field 类型必须兼容 interface property 类型。 | ArkTS checker | 待确认 | P0。 |
| T004 | class method 参数类型必须兼容 interface method 参数。 | ArkTS checker | 待确认 | P0。 |
| T005 | class method 返回类型必须兼容 interface method 返回类型。 | ArkTS checker | 待确认 | P0。 |
| T006 | public class field 可满足 public interface property。 | ArkTS checker | 待确认 | 可见性。 |
| T007 | public class method 可满足 public interface method。 | ArkTS checker | 待确认 | 可见性。 |
| T008 | private field/method 不能满足 interface public member。 | ArkTS checker | 待确认 | P0。 |
| T009 | protected field/method 不能满足 interface public member。 | ArkTS checker | 待确认 | P0。 |
| T010 | static field 不能满足 instance interface property。 | ArkTS checker | 待确认 | static side 与 instance side 分离。 |
| T011 | static method 不能满足 instance interface method。 | ArkTS checker | 待确认 | static side 与 instance side 分离。 |
| T012 | inherited public field 可满足 interface property。 | ArkTS checker | 待确认 | extends + implements。 |
| T013 | inherited public method 可满足 interface method。 | ArkTS checker | 待确认 | extends + implements。 |
| T014 | 多 interface 同名 property 类型一致时可由一个 field 满足。 | ArkTS checker | 待确认 | 多接口合并。 |
| T015 | 多 interface 同名 property 类型冲突应报错。 | ArkTS checker | 待确认 | P0。 |
| T016 | 多 interface 同名 method 签名一致时可由一个 method 满足。 | ArkTS checker | 待确认 | 多接口合并。 |
| T017 | 多 interface 同名 method 签名冲突应报错。 | ArkTS checker | 待确认 | P0。 |
| T018 | interface extends interface 后 class 必须满足继承来的所有成员。 | ArkTS checker | 待确认 | 接口继承。 |
| T019 | abstract class implements interface 时是否允许延迟实现需确认。 | ArkTS checker | 待确认 | abstract 交叉。 |
| T020 | concrete subclass 最终必须完成 interface 实现。 | ArkTS checker | 待确认 | abstract + concrete。 |
| T021 | generic class implements generic interface<T> 时 T 应一致传递。 | ArkTS generics | 待确认 | 泛型接口。 |
| T022 | generic class implements instantiated interface<number> 时字段/方法按 number 检查。 | ArkTS generics | 待确认 | 实例化接口。 |
| T023 | interface generic method 可由 class generic method 实现，如支持。 | ArkTS generics | 待确认 | generic method。 |
| T024 | interface function property 可由 class function-typed field 实现，如支持。 | ArkTS checker | 待确认 | 函数类型字段。 |
| T025 | interface readonly property 与 class readonly/普通 field 的兼容边界需确认。 | ArkTS checker | 待确认 | readonly 规则。 |
| T026 | class instance 可赋值给 interface 类型变量的结构/名义边界需确认。 | ArkTS type system | 待确认 | 不要默认套用 TS。 |
| T027 | 未声明 implements 但结构满足 interface 是否可赋值需确认。 | ArkTS type system | 待确认 | structural compatibility 边界。 |
| T028 | object literal 与 class instance 满足 interface 的差异需记录。 | ArkTS type system | 待确认 | excess property / nominal 边界。 |
| T029 | constructor 不应参与 instance interface implements 检查。 | ArkTS checker | 待确认 | constructor signature 另行记录。 |
| T030 | module import alias / re-export 后 implements 仍应按同一 interface 检查。 | ArkTS modules | 待确认 | 跨模块。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | interface/implements 本身不产生 ECMAScript 运行时对象检查。 | ArkTS-specific | 待确认 | 主要是 compile-time boundary。 |
| R002 | class instance 运行时仍按普通 class object 行为。 | ECMAScript 2022 class runtime | 待确认 | prototype/method/field。 |
| R003 | interface 类型变量在运行时承载的对象仍是 class instance。 | ArkTS runtime boundary | 待确认 | 类型擦除边界。 |
| R004 | class prototype 行为不因 implements 改变。 | ECMAScript 2022 | 待确认 | test262 可交叉。 |
| R005 | instanceof class 行为不因 implements 改变。 | ECMAScript 2022 | 待确认 | interface 不适用于 instanceof。 |
| R006 | interface 不能作为运行时值使用，除非 ArkTS 有特定表示。 | ArkTS-specific | 待确认 | 应为静态错误或差异。 |
| R007 | 运行时错误主要来自 class 方法体、字段访问或动态边界，不来自 interface 本身。 | ArkTS-specific / ES2022 runtime | 待确认 | 错误归因。 |
| R008 | 跨模块后 class instance 的运行时 prototype 仍由 class 定义决定。 | ECMAScript 2022 / ArkTS modules | 待确认 | module 交叉。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | implements interface 名称不存在。 | checker | class A implements Missing {} | 名称解析错误。 |
| C002 | implements 非 interface 类型。 | checker | class A implements SomeClass {} | 类型种类错误。 |
| C003 | class 缺少 interface property。 | checker | interface I { x:number }; class A implements I {} | P0。 |
| C004 | class 缺少 interface method。 | checker | interface I { m():void }; class A implements I {} | P0。 |
| C005 | class field 类型与 interface property 类型不兼容。 | checker | x:string 实现 x:number | P0。 |
| C006 | class method 参数类型与 interface method 不兼容。 | checker | m(x:string) 实现 m(x:number) | P0。 |
| C007 | class method 返回类型与 interface method 不兼容。 | checker | 返回 string 实现 number | P0。 |
| C008 | private field 试图满足 interface public property。 | checker | private x:number | P0。 |
| C009 | protected field 试图满足 interface public property。 | checker | protected x:number | P0。 |
| C010 | private method 试图满足 interface public method。 | checker | private m() | P0。 |
| C011 | protected method 试图满足 interface public method。 | checker | protected m() | P0。 |
| C012 | static field 试图满足 instance interface property。 | checker | static x:number | P0。 |
| C013 | static method 试图满足 instance interface method。 | checker | static m() | P0。 |
| C014 | class implements 多 interface 但缺少其中一个成员。 | checker | implements I,J 只实现 I 成员 | P0。 |
| C015 | 多 interface 同名 property 类型冲突。 | checker | I.x:number / J.x:string | P0。 |
| C016 | 多 interface 同名 method 签名冲突。 | checker | I.m(number) / J.m(string) | P0。 |
| C017 | interface extends 后 class 缺少继承来的成员。 | checker | class implements Child but missing Base member | P0。 |
| C018 | abstract class implements interface 后 concrete 子类未最终实现。 | checker | D extends A missing I.m | P0。 |
| C019 | abstract method 对应 interface method 但签名不兼容。 | checker | abstract m mismatch | P0。 |
| C020 | generic class implements instantiated interface 时类型实参错误。 | checker | Box<string> implements I<number> | P0。 |
| C021 | generic method 实现 interface generic method 时约束不兼容。 | checker | T constraint mismatch | P1。 |
| C022 | interface readonly property 不允许由不兼容 class field 实现。 | checker | readonly 兼容边界 | 待确认。 |
| C023 | interface optional property 规则不满足时 checker 报错。 | checker | optional 支持情况下的错误 | 待确认。 |
| C024 | index signature 不支持时 class implements 带 index signature interface 报错。 | checker | interface I {[k:string]:number} | Unsupported。 |
| C025 | constructor signature 不支持时 implements 构造器接口报错。 | checker | new():A signature | Unsupported。 |
| C026 | interface 继承 class 不支持时 checker 报错。 | checker | interface I extends C | Unsupported。 |
| C027 | interface 类型在运行时值位置使用。 | checker | x instanceof I 或 let v = I | interface 非运行时值。 |
| C028 | object literal 赋值给 interface 类型不满足 ArkTS 规则。 | checker | let i:I = {...missing} | 边界。 |
| C029 | class 未声明 implements 但结构满足 interface 的赋值若 ArkTS 不允许则报错。 | checker | let i:I = new A() | 兼容边界。 |
| C030 | 跨模块 interface 成员变更后 class implements 缺少成员。 | checker | import I; class A implements I | module 回归。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | interface 相关静态错误被绕过后调用缺失方法。 | TypeError 或差异记录 | 动态 ESObject 缺少 method | 正常 ArkTS 应 checker 拦截。 |
| E002 | interface 类型变量中 class 方法体抛异常。 | 原始异常类型 | i.m() 内部 throw | 错误来自 class method。 |
| E003 | interface 类型变量访问字段时对象为 null/undefined。 | TypeError | 动态边界 | null safety 交叉。 |
| E004 | 跨模块加载失败导致 class/interface 不可用。 | ReferenceError 或模块错误 | import 失败 | module boundary。 |
| E005 | instanceof interface 尝试若未静态拦截，运行时可能抛错。 | TypeError 或差异记录 | obj instanceof I | interface 非运行时构造器。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| interface 概念 | ECMA 无 interface/implements | TS 类型系统概念 | ArkTS static checker 概念 | 不从 test262 直接推导。 |
| implements 检查 | ECMA 无静态 implements | TS 编译期检查 | ArkTS 应为静态检查 | P0。 |
| 结构兼容 vs 名义限制 | ECMA 不涉及 | TS 偏结构兼容 | ArkTS 需按官方规则确认 | 待确认。 |
| private/protected 满足 public interface | ECMA 不涉及 | TS 不允许 | ArkTS 预期不允许但需确认 | P0。 |
| optional/readonly/index signature | ECMA 不涉及 | TS 支持 | ArkTS 支持范围待确认 | 记录 Unsupported。 |
| constructor signature | ECMA 构造器运行时存在 | TS 可声明 construct signature | ArkTS 支持待确认 | static side 边界。 |
| interface 继承 class | ECMA 不涉及 | TS 有相关行为 | ArkTS 支持待确认 | 不要默认套用 TS。 |
| declaration merging | ECMA 不涉及 | TS 支持 | ArkTS 是否支持待确认 | 通常不纳入默认必测。 |
| object literal vs class instance | ECMA 普通对象/实例 | TS 有 excess property check | ArkTS 兼容边界待确认 | 差异记录。 |
| runtime behavior | 仅 class 有运行时对象 | interface erased | ArkTS runtime 主要观察 class instance | test262 只做交叉。 |

## Open Questions

- ArkTS class 与 interface 是完全结构兼容，还是存在名义限制？
- 未声明 implements 但结构满足 interface 的 class instance 是否可赋值给 interface 类型？
- private/protected 成员是否严格不能满足 interface public 成员？
- interface optional property、readonly property、index signature 的 ArkTS 支持范围是什么？
- interface constructor signature 或 static side interface 是否支持？
- interface 继承 class 类型是否支持？
- declaration merging 是否支持，是否纳入看护范围？
- abstract class implements interface 时是否允许延迟到 concrete 子类实现？
- object literal 与 class instance 满足 interface 的检查规则是否一致？
- interface 在运行时是否完全不可作为值使用？
