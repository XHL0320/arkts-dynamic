# Spec Points

## Feature

Static Members Watch

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

<!-- CLASS_STATIC_MEMBERS_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Static Members

## ECMA Baseline Status

ES2022 / ArkTS-specific / TS-compatible

## Related Sources

* ECMAScript 2022 Class Static Fields
* ECMAScript 2022 Static Initialization Blocks, only if ArkTS supports static block
* ArkTS official language documentation
* ArkTS static language rules
* TypeScript static member compatibility reference
* test262 static fields/static methods/static blocks cases when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 允许声明 static field。 | ECMAScript 2022 / ArkTS | 待确认 | class constructor object 上的静态属性。 |
| S002 | 允许声明 static method。 | ECMAScript 2022 / ArkTS | 待确认 | class constructor object 上的方法。 |
| S003 | static block 是否支持需确认。 | ECMAScript 2022 | 待确认 | 未确认不作为必测。 |
| S004 | static 成员通过 class name 访问。 | ArkTS classes | 待确认 | A.x / A.m()。 |
| S005 | static 成员通过 instance 访问是否禁止需确认。 | ArkTS checker | 待确认 | 通常应 fail_compile。 |
| S006 | static field 可声明类型注解和初始化表达式。 | ArkTS classes | 待确认 | 类型检查。 |
| S007 | static method 可声明参数类型和返回类型。 | ArkTS classes | 待确认 | 方法签名。 |
| S008 | static 成员可与 public/private/protected 组合。 | ArkTS visibility | 待确认 | 可见性边界。 |
| S009 | static 成员可与 readonly 组合，如 readonly static field。 | ArkTS classes | 待确认 | 只读静态字段。 |
| S010 | static 成员与 inheritance/super 组合语法需覆盖。 | ECMAScript 2022 / ArkTS | 待确认 | super.staticMethod()。 |
| S011 | abstract static member 是否支持或禁止需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不默认纳入必测。 |
| S012 | static 成员跨 module export/import 后仍通过 class name 访问。 | ArkTS modules | 待确认 | 模块交叉。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | static field 初始化值必须可赋值给声明类型。 | ArkTS checker | 待确认 | P0。 |
| T002 | static field 外部赋值必须满足字段类型。 | ArkTS checker | 待确认 | P0。 |
| T003 | static method 参数类型按声明检查。 | ArkTS checker | 待确认 | P0。 |
| T004 | static method 返回值类型按声明检查。 | ArkTS checker | 待确认 | P0。 |
| T005 | static method 可访问同类 static field。 | ArkTS checker | 待确认 | static side。 |
| T006 | static method 可调用同类 static method。 | ArkTS checker | 待确认 | static side。 |
| T007 | static method 不可直接访问 instance field。 | ArkTS checker | 待确认 | P0。 |
| T008 | static method 不可直接调用 instance method。 | ArkTS checker | 待确认 | P0。 |
| T009 | instance 不应访问 static member。 | ArkTS checker | 待确认 | P0。 |
| T010 | class name 不应直接访问 instance member。 | ArkTS checker | 待确认 | P0。 |
| T011 | static side 与 instance side 类型严格区分。 | ArkTS type system | 待确认 | class type 交叉。 |
| T012 | `typeof Class` 如支持，应包含 static members。 | ArkTS-specific / TS-compatible | 待确认 | constructor type。 |
| T013 | derived class 可访问 inherited static field。 | ArkTS checker / ES2022 runtime | 待确认 | static inheritance。 |
| T014 | derived class 可访问 inherited static method。 | ArkTS checker / ES2022 runtime | 待确认 | static inheritance。 |
| T015 | derived class static field 可遮蔽 base static field。 | ArkTS checker | 待确认 | 遮蔽边界。 |
| T016 | derived class static method 覆盖/遮蔽 base static method 时签名需兼容。 | ArkTS checker | 待确认 | P1。 |
| T017 | static super method 调用参数按基类 static method 签名检查。 | ArkTS checker | 待确认 | super 交叉。 |
| T018 | super.staticField 访问支持边界需确认。 | ArkTS checker / ES2022 | 待确认 | 不支持则差异。 |
| T019 | private/protected static member 按可见性检查。 | ArkTS checker | 待确认 | visibility。 |
| T020 | readonly static field 赋值限制应生效。 | ArkTS checker | 待确认 | readonly。 |
| T021 | generic class static member 是否可使用 class type parameter T 需确认。 | ArkTS generics / TS-compatible | 待确认 | 通常禁止直接使用 T。 |
| T022 | static method 可声明自己的泛型参数，如 ArkTS 支持。 | ArkTS generics | 待确认 | generic static method。 |
| T023 | static members 不参与 instance interface implements 检查。 | ArkTS interfaces | 待确认 | P0。 |
| T024 | constructor/static-side interface 支持与否需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不默认纳入。 |
| T025 | abstract class 可拥有 static field/method。 | ArkTS classes | 待确认 | abstract 交叉。 |
| T026 | abstract static member 支持与否需明确记录。 | ArkTS-specific / TS-compatible | 待确认 | Unsupported 候选。 |
| T027 | static initialization order 影响后续 static member 的类型和值边界。 | ECMAScript 2022 / ArkTS | 待确认 | 初始化顺序。 |
| T028 | module import 后 static private/protected 仍受可见性约束。 | ArkTS modules | 待确认 | 跨模块。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | public static field 是 class constructor object 上的属性。 | ECMAScript 2022 | 待确认 | 运行时属性。 |
| R002 | public static method 是 class constructor object 上的方法。 | ECMAScript 2022 | 待确认 | 运行时方法。 |
| R003 | static member 不存在于 instance 上。 | ECMAScript 2022 / ArkTS checker | 待确认 | instance 访问应静态拦截。 |
| R004 | static field 在 class evaluation 时初始化。 | ECMAScript 2022 | 待确认 | 初始化时机。 |
| R005 | 多个 static field 按声明顺序初始化。 | ECMAScript 2022 | 待确认 | 顺序。 |
| R006 | static block 如支持，按声明顺序与 static fields 交错执行。 | ECMAScript 2022 | 待确认 | 待确认。 |
| R007 | base static members 可被 derived constructor object 继承访问。 | ECMAScript 2022 | 待确认 | 静态继承。 |
| R008 | static super method 从基类 constructor object 查找。 | ECMAScript 2022 | 待确认 | super static。 |
| R009 | static method 中 this 绑定可指向调用它的 class constructor。 | ECMAScript 2022 | 待确认 | derived this。 |
| R010 | static initializer 抛异常会导致 class evaluation 失败。 | ECMAScript 2022 | 待确认 | 运行时异常。 |
| R011 | static method 提取后 this 绑定可能丢失。 | ECMAScript 2022 | 待确认 | 运行时边界。 |
| R012 | 修改 constructor 上 static property 后运行时行为变化，如 ArkTS 允许。 | ECMAScript 2022 | 待确认 | 动态边界。 |
| R013 | static private field 如支持 #private static，应有 brand check。 | ECMAScript 2022 private fields | 待确认 | 不默认纳入。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | static field 初始化值与声明类型不一致。 | checker | static x: number = 's' | P0。 |
| C002 | static field 外部赋值类型错误。 | checker | A.x = 's' where x:number | P0。 |
| C003 | static method 参数类型错误。 | checker | A.m('s') where m(n:number) | P0。 |
| C004 | static method 参数个数不足。 | checker | A.m() | P0。 |
| C005 | static method 参数个数过多且 ArkTS 不允许。 | checker | A.m(1,2) | P0。 |
| C006 | static method 返回值类型错误。 | checker | static m(): number { return 's' } | P0。 |
| C007 | instance 调用 static method。 | checker | new A().m() | P0。 |
| C008 | instance 访问 static field。 | checker | new A().x | P0。 |
| C009 | class name 直接访问 instance field。 | checker | A.instanceX | P0。 |
| C010 | class name 直接调用 instance method。 | checker | A.instanceM() | P0。 |
| C011 | static method 中直接访问 instance field。 | checker | static m(){ this.instanceX } | P0。 |
| C012 | static method 中直接调用 instance method。 | checker | static m(){ this.instanceM() } | P0。 |
| C013 | static method 覆盖参数类型不兼容。 | checker | Derived.static m(s:string) overrides Base.m(n:number) | P1。 |
| C014 | static method 覆盖返回类型不兼容。 | checker | return mismatch | P1。 |
| C015 | super.staticMethod() 参数类型错误。 | checker | super.m('s') | super 交叉。 |
| C016 | static method 中错误调用 super()。 | parser/checker | static m(){ super() } | 非法 SuperCall。 |
| C017 | private static field 外部访问。 | checker | A.privateX | visibility。 |
| C018 | private static method 外部调用。 | checker | A.privateM() | visibility。 |
| C019 | protected static field 外部访问。 | checker | A.protectedX | visibility。 |
| C020 | protected static method 外部调用。 | checker | A.protectedM() | visibility。 |
| C021 | readonly static field 外部赋值。 | checker | A.readonlyX = 1 | readonly。 |
| C022 | generic class static member 直接使用 class type parameter T，如 ArkTS 禁止。 | checker | static value: T | generic。 |
| C023 | Box<number>.staticMember 这类实例化类型访问 static，如 ArkTS 禁止。 | checker | Box<number>.x | generic 边界。 |
| C024 | static member 试图满足 instance interface property/method。 | checker | implements I only with static m | interface。 |
| C025 | abstract static member 不支持时声明 abstract static。 | checker | abstract static m() | Unsupported。 |
| C026 | static block 不支持时使用 static block。 | parser/checker | static { } | Unsupported。 |
| C027 | static block 中访问 instance field。 | checker | static { this.instanceX } | 如支持 static block。 |
| C028 | 跨模块访问 static private/protected。 | checker | import A; A.privateStatic | module。 |
| C029 | constructor/static-side interface 不支持时使用。 | checker | new/static interface | Unsupported。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | static initializer 抛异常导致 class evaluation 失败。 | 原始异常类型 | static x = thrower() | 运行时边界。 |
| E002 | static block 抛异常导致 class evaluation 失败，如支持 static block。 | 原始异常类型 | static { throw err } | 待确认。 |
| E003 | static method 提取后 this 丢失导致访问 static field 失败。 | TypeError 或差异记录 | let f = A.m; f() | 运行时 this。 |
| E004 | 动态 instance 访问 static member 结果为 undefined 后调用。 | TypeError 或差异记录 | obj.staticM() | 静态语言应拦截。 |
| E005 | super.staticMethod 动态变为非 callable 后调用。 | TypeError | 修改 Base.m 为 number | 如允许动态修改。 |
| E006 | static private field brand check 失败，如支持 #private static。 | TypeError | static private method call wrong receiver | 待确认。 |
| E007 | circular import 中访问未初始化 static member。 | ReferenceError 或差异记录 | module cycle | 按支持情况记录。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| static field | ES2022 支持 public static field | TS 支持 | ArkTS 支持待确认 | P1。 |
| static method | ES class 支持 static method | TS 支持 | ArkTS 支持待确认 | P1。 |
| static block | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | 未确认不必测。 |
| static side vs instance side | 运行时属性位置不同 | TS 类型侧分离 | ArkTS 应严格区分 | P0。 |
| instance 访问 static | JS 可动态查找但通常 undefined | TS 报错 | ArkTS 应 checker 报错 | P0。 |
| interface implements | ECMA 不涉及 | TS static 不满足 instance interface | ArkTS 预期一致待确认 | P0。 |
| generic T in static | ECMA 不涉及类型参数 | TS 禁止静态成员引用类类型参数 | ArkTS 待确认 | P1。 |
| typeof Class | ECMA typeof 运行时 operator | TS constructor/static side 类型 | ArkTS 支持待确认 | P1。 |
| #private static | ECMA 支持私有静态字段 | TS 支持 | ArkTS 支持待确认 | 不默认纳入。 |

## Open Questions

- ArkTS 是否支持 static field？
- ArkTS 是否支持 static method？
- ArkTS 是否支持 static block？
- static side 与 instance side 是否在所有访问中严格区分？
- instance 是否允许访问 static member，还是全部 checker 报错？
- static member 是否完全不参与 instance interface implements？
- generic class static member 是否允许直接使用 class type parameter T？
- `typeof Class` 是否包含 static members？
- static private/protected/public 是否仅编译期约束？
- ArkTS 是否支持 ECMAScript `#private static`？
