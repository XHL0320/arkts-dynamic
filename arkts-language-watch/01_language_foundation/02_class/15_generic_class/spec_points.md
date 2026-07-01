# Spec Points

## Feature

Generic Class Watch

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

<!-- CLASS_GENERIC_CLASS_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Generic Class

## ECMA Baseline Status

ArkTS-specific / TS-compatible

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript generic class compatibility reference
* ECMAScript 2022 class runtime semantics, only for runtime class behavior
* test262 class cases, only for runtime behavior not generic type checking

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 允许声明单类型参数 generic class。 | ArkTS generics / TS-compatible | 待确认 | 如 Box<T>。 |
| S002 | 允许声明多类型参数 generic class。 | ArkTS generics | 待确认 | 如 Pair<K, V>。 |
| S003 | 类型参数命名和作用域需遵循 ArkTS 泛型规则。 | ArkTS generics | 待确认 | 避免与值空间混淆。 |
| S004 | 类型参数可用于字段、constructor 参数、method 参数和返回值。 | ArkTS generics | 待确认 | 基础语法。 |
| S005 | 泛型类实例化可显式传入类型实参。 | ArkTS generics | 待确认 | new Box<number>()。 |
| S006 | 泛型类实例化类型实参推断是否支持需确认。 | ArkTS generics | 待确认 | 不支持则记录边界。 |
| S007 | 泛型约束语法是否支持需确认。 | ArkTS generics / TS-compatible | 待确认 | T extends Base/interface/object。 |
| S008 | 默认类型参数是否支持需确认。 | ArkTS generics / TS-compatible | 待确认 | T = number。 |
| S009 | generic method in generic class 是否支持需确认。 | ArkTS generics | 待确认 | method 自身 U。 |
| S010 | generic class 可 extends / implements / export/import。 | ArkTS classes/modules | 待确认 | 组合语法。 |
| S011 | static member 与 class 类型参数 T 的组合边界需确认。 | ArkTS generics | 待确认 | 通常禁止 static 使用 T。 |
| S012 | generic abstract class 是否支持需确认。 | ArkTS abstract/generics | 待确认 | abstract 交叉。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | 类型实参个数必须匹配类型参数个数。 | ArkTS checker | 待确认 | P0。 |
| T002 | constructor 参数必须与实例化后的 T 类型兼容。 | ArkTS checker | 待确认 | P0。 |
| T003 | T 字段写入值必须与 T 兼容。 | ArkTS checker | 待确认 | P0。 |
| T004 | T 字段读取类型应保持 T 的实例化类型。 | ArkTS checker | 待确认 | P0。 |
| T005 | T[] 字段元素写入必须与 T 兼容。 | ArkTS checker | 待确认 | array generic。 |
| T006 | method 参数和返回值使用 T 时按实例化类型检查。 | ArkTS checker | 待确认 | method。 |
| T007 | generic method 自身类型参数 U 与 class T 应分别作用域。 | ArkTS checker | 待确认 | scope。 |
| T008 | method 类型参数与 class 类型参数同名是否允许需确认。 | ArkTS checker | 待确认 | shadow 边界。 |
| T009 | T extends Base 约束下可访问 Base public 成员。 | ArkTS checker | 待确认 | constraints。 |
| T010 | T extends interface 约束下可访问 interface 成员。 | ArkTS checker | 待确认 | constraints。 |
| T011 | 未约束 T 访问成员应报错。 | ArkTS checker | 待确认 | P0。 |
| T012 | 类型实参必须满足 T extends 约束。 | ArkTS checker | 待确认 | P0。 |
| T013 | 默认类型参数必须满足约束，如支持默认类型参数。 | ArkTS checker | 待确认 | default。 |
| T014 | Box<number> 与 Box<string> 兼容性应按 ArkTS 泛型规则判断。 | ArkTS type system | 待确认 | P0。 |
| T015 | Box<Derived> 与 Box<Base> 协变/不变规则需确认。 | ArkTS type system | 待确认 | variance。 |
| T016 | readonly T field 对泛型兼容性的影响需确认。 | ArkTS type system | 待确认 | readonly。 |
| T017 | private/protected T field 对泛型兼容性的影响需确认。 | ArkTS type system | 待确认 | visibility。 |
| T018 | generic class 可作为函数参数和返回值类型。 | ArkTS type system | 待确认 | class type。 |
| T019 | generic class 与 object literal compatibility 需确认。 | ArkTS checker | 待确认 | object literal。 |
| T020 | generic class implements generic interface<T> 时成员必须一致。 | ArkTS interfaces/generics | 待确认 | implements。 |
| T021 | generic class implements instantiated interface<number> 时按 number 检查。 | ArkTS interfaces/generics | 待确认 | implements。 |
| T022 | generic inheritance 中 super() 参数按实例化后的 base constructor 检查。 | ArkTS checker | 待确认 | inheritance。 |
| T023 | generic override 方法参数/返回类型必须兼容。 | ArkTS checker | 待确认 | override。 |
| T024 | generic abstract method 实现必须保持 T 兼容。 | ArkTS checker | 待确认 | abstract。 |
| T025 | static field 不能直接使用 class 类型参数 T，如 ArkTS 采用 TS 规则。 | ArkTS checker | 待确认 | static。 |
| T026 | static method 可声明自己的 U，不应直接依赖 class T，需确认。 | ArkTS checker | 待确认 | static generic method。 |
| T027 | 类型参数运行时不可作为值使用。 | ArkTS checker | 待确认 | erasure。 |
| T028 | 跨模块 generic class 类型实参错误应被 checker 捕获。 | ArkTS modules | 待确认 | module。 |
| T029 | ESObject/dynamic 边界是否绕过泛型检查需记录。 | ArkTS dynamic boundary | 待确认 | dynamic。 |
| T030 | constructor/static side 与 generic instance side 必须区分。 | ArkTS class type/generics | 待确认 | static side。 |
| T031 | generic default type parameter 与显式类型实参覆盖规则需确认。 | ArkTS checker | 待确认 | default。 |
| T032 | 多类型参数互相约束 U extends T 的支持边界需确认。 | ArkTS checker | 待确认 | constraints。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | generic class 运行时表现为普通 class constructor。 | ECMAScript 2022 class runtime | 待确认 | 泛型类型擦除。 |
| R002 | 不同类型实参实例运行时 prototype 行为应与普通 class 一致。 | ECMAScript 2022 | 待确认 | prototype。 |
| R003 | generic 类型参数运行时不可直接访问。 | ArkTS boundary | 待确认 | erasure。 |
| R004 | new Box<number>() 与 new Box<string>() 的 runtime constructor 是否相同需记录。 | ArkTS runtime boundary | 待确认 | erasure contrast。 |
| R005 | generic class instance 可参与 instanceof Box。 | ECMAScript 2022 | 待确认 | runtime class。 |
| R006 | generic 字段运行时只是普通字段。 | ECMAScript 2022 | 待确认 | class fields。 |
| R007 | generic method 运行时只是普通方法。 | ECMAScript 2022 | 待确认 | class methods。 |
| R008 | generic class constructor 不能不带 new 普通调用。 | ECMAScript 2022 | 待确认 | TypeError runtime。 |
| R009 | 类型擦除后 dynamic/ESObject 传入错误类型可能导致方法体运行时异常。 | ArkTS dynamic boundary | 待确认 | dynamic。 |
| R010 | static members 被所有泛型实例化共享的边界需记录。 | ECMAScript 2022 / ArkTS | 待确认 | static side。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | 类型实参个数不足。 | checker | Box<> 或 Pair<number> | P0。 |
| C002 | 类型实参个数过多。 | checker | Box<number,string> | P0。 |
| C003 | 类型实参与 constructor 参数不一致。 | checker | new Box<number>('x') | P0。 |
| C004 | T 字段写入不兼容值。 | checker | Box<number>.value = 'x' | P0。 |
| C005 | T[] 字段写入不兼容元素。 | checker | Box<number>.items.push('x') | P0。 |
| C006 | readonly T field 外部赋值。 | checker | box.value = x | readonly。 |
| C007 | static value: T 如 ArkTS 禁止。 | checker | static value:T | static。 |
| C008 | static method 直接使用 class T，如 ArkTS 禁止。 | checker | static m(v:T) | static。 |
| C009 | 未约束 T 访问成员。 | checker | value.name | P0。 |
| C010 | 类型实参不满足 class 约束。 | checker | Box<Bad> where T extends Base | P0。 |
| C011 | 类型实参不满足 interface 约束。 | checker | Box<Bad> where T extends I | P0。 |
| C012 | 默认类型参数不满足约束。 | checker | T extends I = Bad | default。 |
| C013 | 必选类型参数出现在默认类型参数之后，如 ArkTS 禁止。 | checker | <T=number,U> | default。 |
| C014 | method 类型参数与 class 类型参数同名，如 ArkTS 禁止。 | checker | method<T>() in class<T> | scope。 |
| C015 | generic method 约束不满足。 | checker | m<Bad>() where U extends I | method generic。 |
| C016 | Box<string> 赋给 Box<number>。 | checker | let b:Box<number>=boxString | compat。 |
| C017 | Box<Derived> 与 Box<Base> 不满足 ArkTS variance 规则。 | checker | variance mismatch | variance。 |
| C018 | generic class implements interface 缺少成员。 | checker | class Box<T> implements I<T> missing | interface。 |
| C019 | generic class implements interface 成员类型不兼容。 | checker | property T mismatch | interface。 |
| C020 | ordinary class extends instantiated generic class 时 super 参数错误。 | checker | extends Box<number>, super('x') | inheritance。 |
| C021 | generic class extends generic class 时传递类型参数错误。 | checker | extends Base<string> but T number | inheritance。 |
| C022 | generic override 参数类型不兼容。 | checker | override m(T) mismatch | override。 |
| C023 | generic override 返回类型不兼容。 | checker | return T mismatch | override。 |
| C024 | generic abstract method 实现参数类型不兼容。 | checker | abstract m(T), impl mismatch | abstract。 |
| C025 | generic abstract class 直接 new。 | checker | new AbstractBox<number>() | abstract。 |
| C026 | 类型参数在运行时值位置使用。 | checker | new T() / typeof T | erasure。 |
| C027 | Box<number>.staticMember 语法不支持时使用。 | checker | Box<number>.s | static side。 |
| C028 | object literal 赋给 generic class type 不满足规则。 | checker | let b:Box<number>={...} | object literal。 |
| C029 | 跨模块 generic class 类型实参错误。 | checker | import Box; new Box<number>('x') | module。 |
| C030 | generic type alias 跨模块使用不支持时出错。 | checker | type alias boundary | module。 |
| C031 | ESObject/dynamic 传入静态泛型 API 且类型不兼容，如 checker 可见。 | checker | set(value) | dynamic boundary。 |
| C032 | generic constructor overload 与 T 不兼容，如支持 overload。 | checker | constructor overload mismatch | constructor。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | generic class constructor 被普通调用。 | TypeError | Box() | ECMA class runtime。 |
| E002 | 类型擦除后 dynamic 传入错误类型导致方法体异常。 | TypeError 或差异记录 | dynamic value used as expected T | 动态边界。 |
| E003 | generic method 内部调用约束成员但动态对象缺失。 | TypeError | value.member() | ESObject/dynamic。 |
| E004 | constructor 中对 T 字段初始化逻辑抛异常。 | 原始异常类型 | throw in constructor | runtime。 |
| E005 | generic inheritance 中 super() 抛异常。 | 原始异常类型 | super throws | inheritance runtime。 |
| E006 | import generic class 失败导致运行时模块异常。 | ReferenceError 或模块错误 | module loading | module boundary。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| generic class | ECMA 无泛型类型系统 | TS 静态泛型 | ArkTS 静态泛型 | 不从 test262 推导。 |
| type erasure | ECMA runtime 无 T | TS 擦除 | ArkTS 是否擦除待确认 | runtime boundary。 |
| static uses T | ECMA 不涉及 | TS 禁止 class static 使用 T | ArkTS 待确认 | P1。 |
| default type parameter | ECMA 不涉及 | TS 支持 | ArkTS 支持待确认 | Unsupported 记录。 |
| constraints | ECMA 不涉及 | TS 支持 extends constraints | ArkTS 支持范围待确认 | P0。 |
| type argument inference | ECMA 不涉及 | TS 支持部分推断 | ArkTS 支持待确认 | 边界。 |
| variance | ECMA 不涉及 | TS 有复杂兼容规则 | ArkTS 规则待确认 | P1。 |
| object literal | ECMA 普通对象 | TS 结构兼容 | ArkTS 支持边界待确认 | 差异记录。 |
| generic implements | ECMA 无 interface | TS checker | ArkTS-specific | 不归 test262。 |
| runtime class behavior | 普通 class runtime | 泛型擦除后同普通 class | ArkTS 需验证 | test262 交叉。 |

## Open Questions

- ArkTS 泛型类是否完全运行时擦除？
- ArkTS 是否支持泛型类类型实参推断？
- ArkTS 是否支持默认类型参数？
- ArkTS 支持哪些泛型约束形式？
- class 类型参数 T 是否可在 static member 中使用？
- generic method 是否支持显式类型实参和推断？
- generic class compatibility 是不变、协变还是其他规则？
- generic class 与 object literal compatibility 如何判断？
- generic class implements generic interface 的约束如何合并？
- ESObject/dynamic 边界是否会绕过泛型检查？
