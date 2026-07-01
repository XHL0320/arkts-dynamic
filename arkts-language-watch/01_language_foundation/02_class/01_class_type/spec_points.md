# Spec Points

## Feature

Class Type Watch

## ECMA Baseline Status

ArkTS-specific

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

<!-- CLASS_TYPE_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Class Type

## ECMA Baseline Status

ArkTS-specific / TS-compatible / ES2022

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript class type compatibility reference
* ECMAScript 2022 class runtime semantics, only for runtime value behavior
* test262 class runtime cases, only for constructor/prototype/instanceof behavior when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | class 名称可在类型位置表示实例类型。 | ArkTS static rules | 待确认 | 如 let a: A。 |
| S002 | class 名称可在值位置表示运行时 constructor value。 | ECMAScript 2022 / ArkTS | 待确认 | 如 let c = A。 |
| S003 | class 实例类型可用于变量、字段、参数、返回值和数组元素。 | ArkTS type system | 待确认 | 基础类型位置。 |
| S004 | `typeof Class` 构造器类型是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不支持则记录 Unsupported。 |
| S005 | 构造器类型作为变量类型、参数类型、返回值类型是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | construct signature 边界。 |
| S006 | class static side 与 instance side 在语法访问上区分。 | ArkTS classes | 待确认 | A.staticMember vs new A().member。 |
| S007 | class expression / anonymous class 类型是否支持需确认。 | ECMAScript 2022 / ArkTS-specific | 待确认 | 不支持则记录差异。 |
| S008 | export/import class 后可同时作为类型和值使用。 | ArkTS modules | 待确认 | 跨模块类型和值空间。 |
| S009 | abstract class 可作为类型但不可直接实例化。 | ArkTS static rules | 待确认 | 与 abstract_class 交叉。 |
| S010 | generic class instance type 使用类型实参。 | ArkTS generics | 待确认 | Box<number>。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | let a: A = new A() 应通过。 | ArkTS type system | 待确认 | class as instance type。 |
| T002 | 未实例化的 class value 不可赋给 instance type。 | ArkTS checker | 待确认 | A 不等于 new A()。 |
| T003 | class instance type 可作为函数参数类型。 | ArkTS type system | 待确认 | 参数检查。 |
| T004 | class instance type 可作为函数返回值类型。 | ArkTS type system | 待确认 | 返回值检查。 |
| T005 | class instance type 可作为 array 元素类型。 | ArkTS type system | 待确认 | Array<A>。 |
| T006 | class instance type 可作为 nullable/union 成员，如 ArkTS 支持。 | ArkTS type system | 待确认 | A | null / A | B。 |
| T007 | class type 可作为 interface property/method 参数/返回类型。 | ArkTS interfaces | 待确认 | interface 交叉。 |
| T008 | class type 可作为 generic type argument。 | ArkTS generics | 待确认 | Box<A>。 |
| T009 | class value 可赋给值变量并通过 new 使用，如构造器类型支持。 | ArkTS checker | 待确认 | ctor 变量。 |
| T010 | `typeof A` 若支持，应表示 A 的 static side / constructor type。 | ArkTS-specific / TS-compatible | 待确认 | 不含实例成员。 |
| T011 | constructor type 的构造参数必须匹配。 | ArkTS checker | 待确认 | new ctor(args)。 |
| T012 | constructor type 可见 static member，但不可见 instance member。 | ArkTS checker | 待确认 | static side。 |
| T013 | instance type 可见 instance field/method，但不可见 static member。 | ArkTS checker | 待确认 | instance side。 |
| T014 | derived instance 可赋给 base class type。 | ArkTS type system | 待确认 | 继承兼容。 |
| T015 | base instance 不可赋给 derived class type。 | ArkTS checker | 待确认 | P0。 |
| T016 | 结构相同 class 是否互相赋值需确认。 | ArkTS type system | 待确认 | structural vs nominal。 |
| T017 | private/protected 成员影响 class type compatibility。 | ArkTS accessibility | 待确认 | 不要默认 TS 行为。 |
| T018 | readonly 成员对 class type compatibility 的影响需确认。 | ArkTS checker | 待确认 | readonly 边界。 |
| T019 | class instance 可赋给 interface type 的规则需确认。 | ArkTS interfaces | 待确认 | implements/structural 边界。 |
| T020 | 未 implements 但结构满足 interface 是否可赋值需确认。 | ArkTS interfaces | 待确认 | 边界。 |
| T021 | object literal 是否可赋给 class type 需确认。 | ArkTS type system | 待确认 | class/object literal 边界。 |
| T022 | object literal 不能满足 private/protected class type。 | ArkTS checker | 待确认 | 如允许 object literal。 |
| T023 | abstract class type 可接收 concrete subclass instance。 | ArkTS abstract class | 待确认 | abstract 交叉。 |
| T024 | generic class type 的类型实参必须匹配。 | ArkTS generics | 待确认 | Box<number> vs Box<string>。 |
| T025 | generic class type 受 generic constraints 约束。 | ArkTS generics | 待确认 | 约束检查。 |
| T026 | class type 与 function type 区分，实例不可当函数调用。 | ArkTS checker | 待确认 | callable 边界。 |
| T027 | class value 与 object value 区分。 | ArkTS checker | 待确认 | constructor value。 |
| T028 | 跨模块同名 class 的类型兼容边界需确认。 | ArkTS modules | 待确认 | nominal/structural。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | class value 在运行时是 constructor function/class object。 | ECMAScript 2022 | 待确认 | 值空间。 |
| R002 | class constructor 不能不带 new 普通调用。 | ECMAScript 2022 | 待确认 | TypeError。 |
| R003 | new A() 创建实例并连接 A.prototype。 | ECMAScript 2022 | 待确认 | prototype。 |
| R004 | instanceof class 按 prototype chain 判断。 | ECMAScript 2022 | 待确认 | runtime 对照。 |
| R005 | 实例 constructor property 指向 class constructor 的边界需验证。 | ECMAScript 2022 | 待确认 | prototype.constructor。 |
| R006 | static member 在 class value 上，instance member 在 prototype/instance 上。 | ECMAScript 2022 | 待确认 | static/instance runtime。 |
| R007 | class type 在运行时擦除，不产生额外运行时类型检查。 | ArkTS-specific | 待确认 | 静态类型边界。 |
| R008 | 修改 prototype 后运行时行为可能变化，但静态 class type 不变，如 ArkTS 允许。 | ECMAScript 2022 | 待确认 | 动态能力边界。 |
| R009 | imported class value 运行时仍可 new，imported class type 静态可用。 | ArkTS modules / ES2022 | 待确认 | 跨模块。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | class value 赋给 instance type。 | checker | let a: A = A | 值/实例混淆。 |
| C002 | instance value 赋给 constructor type，如支持 typeof A。 | checker | let c: typeof A = new A() | static side 错误。 |
| C003 | instance type 访问 static field。 | checker | new A().staticX | static/instance 分离。 |
| C004 | instance type 访问 static method。 | checker | new A().staticM() | static/instance 分离。 |
| C005 | class value 直接访问 instance field。 | checker | A.x | instance 成员不可见。 |
| C006 | class value 直接访问 instance method。 | checker | A.m() | instance 成员不可见。 |
| C007 | base instance 赋给 derived type。 | checker | let d: D = new B() | 继承兼容错误。 |
| C008 | 两个不兼容 class instance 互赋。 | checker | let a:A = new B() | 兼容边界。 |
| C009 | private/protected 成员导致 class type 不兼容。 | checker | 不同声明来源 private member | P1。 |
| C010 | readonly 成员赋值违反 class type 规则。 | checker | readonly 写入或兼容错误 | 边界。 |
| C011 | object literal 缺少 class public field 时赋给 class type。 | checker | let a:A = {} | 如允许 object literal。 |
| C012 | object literal 试图满足 private/protected class type。 | checker | let a:A = { private-shape } | 不可满足。 |
| C013 | interface type 误当 class value new。 | checker | new I() | interface 非 runtime constructor。 |
| C014 | class instance 赋给不兼容 interface type。 | checker | let i:I = new A() | interface 交叉。 |
| C015 | generic class type 参数不匹配。 | checker | Box<string> -> Box<number> | generic。 |
| C016 | generic class type 实参违反约束。 | checker | Box<Bad> | generic constraint。 |
| C017 | abstract class 直接 new。 | checker | new AbstractBase() | abstract 交叉。 |
| C018 | constructor type 调用构造参数不匹配。 | checker | new ctor('x') for number constructor | typeof/constructor type。 |
| C019 | constructor type 不支持时使用 typeof Class 作为类型。 | checker | let c: typeof A | Unsupported。 |
| C020 | class value 当普通函数调用。 | checker | A() | 也有运行时 TypeError 边界。 |
| C021 | instance value 当函数调用。 | checker | a() | function type 区分。 |
| C022 | import type/value 混用导致 class 类型或值不可用。 | checker | 跨模块错误导入 | module。 |
| C023 | class expression/anonymous class 不支持时使用。 | parser/checker | let C = class {} | Unsupported。 |
| C024 | class type 与 namespace/import alias 不支持组合时使用。 | checker | Alias.A as type | Unsupported。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | class constructor 被普通调用。 | TypeError | A() | ECMA runtime；ArkTS 可能 checker 前移。 |
| E002 | 动态 constructor value 非 constructor 时 new。 | TypeError | new ctor() | 如 ArkTS 允许动态值。 |
| E003 | instanceof 右侧非 callable/constructor。 | TypeError | obj instanceof nonCtor | 如支持动态 instanceof。 |
| E004 | prototype 动态修改后 method lookup 失败。 | TypeError 或差异记录 | a.m() | 如 ArkTS 允许 prototype 修改。 |
| E005 | imported class value 运行时加载失败。 | ReferenceError 或模块错误 | import class failed | module runtime boundary。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| class type | ECMA 无静态 class type | TS 类型系统概念 | ArkTS 静态类型概念 | 不从 test262 推导。 |
| class value | ECMA runtime constructor | TS 同时有值空间 | ArkTS 值空间需确认 | runtime 可由 test262 交叉。 |
| typeof Class | ECMA typeof 是运行时 operator | TS typeof Class 表示 constructor type | ArkTS 支持待确认 | 不要混淆。 |
| construct signature | ECMA 构造运行时 | TS 可建模 constructor type | ArkTS 支持待确认 | Unsupported 记录。 |
| compatibility | ECMA 不涉及静态兼容 | TS 多为结构兼容且受 private/protected 影响 | ArkTS 结构/名义/混合待确认 | P1。 |
| object literal to class | ECMA 普通对象 | TS 有结构兼容边界 | ArkTS 支持待确认 | 差异记录。 |
| static vs instance side | ECMA runtime 分离 | TS 类型侧分离 | ArkTS 应严格分离 | 核心。 |
| class expression | ECMA 支持 | TS 支持 | ArkTS 支持待确认 | 不支持则排除。 |

## Open Questions

- ArkTS 是否支持 `typeof Class` 作为构造器类型？
- ArkTS 是否支持 construct signature，并允许构造器类型作为变量/参数/返回值？
- ArkTS class type compatibility 是结构兼容、名义兼容还是混合规则？
- private/protected 成员是否影响 class type compatibility，影响方式是什么？
- readonly 成员是否影响 class type compatibility？
- object literal 是否可赋给 class type？
- 未 implements 但结构满足 interface 的 class instance 是否可赋给 interface type？
- class expression / anonymous class 类型是否支持？
- static side 和 instance side 是否在所有访问和赋值中严格分离？
- 跨模块同名 class 的兼容边界是什么？
