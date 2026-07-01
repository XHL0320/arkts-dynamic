# Spec Points

## Feature

Super Watch

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

<!-- CLASS_SUPER_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Class Super

## ECMA Baseline Status

ES2022 / ArkTS-specific

## Related Sources

* ECMAScript 2022 Super Calls
* ECMAScript 2022 Super Property References
* ECMAScript 2022 Derived Class Constructor Semantics
* ArkTS official language documentation
* ArkTS static language rules
* TypeScript super compatibility reference
* test262 super related cases

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 派生类 constructor 中允许使用 super() 调用基类构造函数。 | ECMAScript 2022 / ArkTS | 待确认 | 作为派生类初始化入口。 |
| S002 | super() 只能作为派生类 constructor 中的 SuperCall 使用。 | ECMAScript 2022 | 待确认 | 普通方法中不能以函数形式调用 super()。 |
| S003 | 派生类 constructor 中访问 this 前必须先执行 super()。 | ECMAScript 2022 / ArkTS static rules | 待确认 | ArkTS 可能前移为 checker 错误。 |
| S004 | 实例方法中允许使用 super.method() 访问基类 prototype 方法。 | ECMAScript 2022 | 待确认 | 需要确认 ArkTS 对 super property 的支持范围。 |
| S005 | static method 中允许使用 super.staticMethod() 访问基类静态方法。 | ECMAScript 2022 | 待确认 | static super 需单独覆盖。 |
| S006 | super.property 字段访问是否支持需按 ArkTS 规范确认。 | ArkTS-specific / ECMAScript 2022 | 待确认 | 不支持时记录为差异。 |
| S007 | getter/setter 的 super 访问是否支持需按 ArkTS 规范确认。 | ECMAScript 2022 / TS-compatible | 待确认 | 如果 getter/setter 不支持则排除。 |
| S008 | super 可在 method 内的 arrow function 中按词法捕获，如 ArkTS 支持。 | ECMAScript 2022 | 待确认 | 需要验证 lexical super。 |
| S009 | 普通嵌套 function 中使用 super 应为语法错误或 checker 错误。 | ECMAScript 2022 / ArkTS static rules | 待确认 | super 不跨普通函数词法边界。 |
| S010 | 非派生类 constructor 中使用 super() 应报错。 | ECMAScript 2022 / ArkTS static rules | 待确认 | 无 [[ConstructorKind]] derived 语义。 |
| S011 | 非 class 作用域中使用 super 应报错。 | ECMAScript 2022 | 待确认 | parser/checker 负向用例。 |
| S012 | super 与多层继承、override、abstract、generic 的组合语法需保持一致。 | ArkTS-specific / TS-compatible | 待确认 | 组合场景放在 integration。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | super() 实参类型必须可赋值给基类 constructor 参数类型。 | ArkTS static rules | 待确认 | 类型不匹配应 fail_compile。 |
| T002 | super() 实参数量必须满足基类 constructor 必填参数。 | ArkTS static rules | 待确认 | 参数不足应 fail_compile。 |
| T003 | super() 传入多余参数是否允许需按 ArkTS 调用规则确认。 | ArkTS static rules | 待确认 | 记录 TS/ArkTS 差异。 |
| T004 | 派生类 constructor 中 this 使用必须在 super() 之后。 | ArkTS static rules | 待确认 | this-before-super 关键 P0。 |
| T005 | super.method() 的参数类型按基类方法签名检查。 | ArkTS static rules | 待确认 | 不匹配应 fail_compile。 |
| T006 | super.method() 的返回值类型按基类方法返回类型推导。 | ArkTS static rules | 待确认 | 覆盖 number/string/object/generic。 |
| T007 | super.missingMethod() 应被 checker 拦截。 | ArkTS static rules | 待确认 | 动态边界另行记录。 |
| T008 | super.method 非 callable 的动态边界若可构造，应运行时 TypeError。 | ECMAScript 2022 | 待确认 | ArkTS 静态语言可能无法表达。 |
| T009 | 实例方法中 super 只能访问基类实例侧成员。 | ArkTS static rules | 待确认 | 访问 static 成员边界需确认。 |
| T010 | static method 中 super 只能访问基类静态侧成员。 | ArkTS static rules | 待确认 | 访问实例成员应报错。 |
| T011 | super 访问 private 成员应报错或不允许。 | ArkTS static rules / TS-compatible | 待确认 | private 不参与基类公开访问。 |
| T012 | super 访问 protected 成员的支持边界需确认。 | ArkTS static rules / TS-compatible | 待确认 | 通过子类上下文访问。 |
| T013 | super 访问 readonly 字段写入应受 readonly 限制。 | ArkTS static rules | 待确认 | 字段访问支持时覆盖。 |
| T014 | override 方法中调用 super.method() 应按基类签名检查。 | ArkTS static rules | 待确认 | 覆盖方法覆盖交叉。 |
| T015 | abstract class 中 concrete method 可被子类通过 super 调用。 | ArkTS static rules | 待确认 | abstract 交叉。 |
| T016 | abstract method 无实现时不应允许 super.abstractMethod()。 | ArkTS static rules | 待确认 | 如语法支持，必须负向。 |
| T017 | interface method 不提供 super 实现。 | ArkTS static rules | 待确认 | implements 不改变 super 查找。 |
| T018 | generic base constructor 参数类型应在 super(value) 中生效。 | ArkTS static rules | 待确认 | 泛型约束交叉。 |
| T019 | generic base method 返回 T 时 super.method() 返回类型应保持 T。 | ArkTS static rules | 待确认 | 覆盖类型推导。 |
| T020 | 多层继承中 super.method() 只解析直接基类 prototype 链入口。 | ECMAScript 2022 / ArkTS | 待确认 | 运行时与类型均需记录。 |
| T021 | super 在 arrow function 中的捕获不应改变 this 类型。 | ECMAScript 2022 / ArkTS | 待确认 | 如支持 lexical super。 |
| T022 | super() 返回 object 的派生类初始化边界需按 ECMA/ArkTS 确认。 | ECMAScript 2022 | 待确认 | 运行时边界。 |
| T023 | super 与 new.target、Reflect.construct 相关类型边界如支持需记录。 | ECMAScript 2022 | 待确认 | 不支持则排除。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | 派生类实例初始化前 super() 创建并初始化 this 绑定。 | ECMAScript 2022 | 待确认 | derived constructor 核心语义。 |
| R002 | super() 调用基类 constructor，执行基类字段和 constructor 初始化。 | ECMAScript 2022 | 待确认 | 与初始化顺序关联。 |
| R003 | super() 后派生类字段初始化，再继续执行派生类 constructor。 | ECMAScript 2022 | 待确认 | Base field -> Base constructor -> Derived field -> Derived constructor。 |
| R004 | super.method() 的属性查找从基类 prototype 开始。 | ECMAScript 2022 | 待确认 | 不是从当前类 prototype 开始。 |
| R005 | super.method() 调用时 receiver 仍为当前 this。 | ECMAScript 2022 | 待确认 | 覆盖 this 绑定。 |
| R006 | static super method 的属性查找从基类 constructor 开始。 | ECMAScript 2022 | 待确认 | static inheritance。 |
| R007 | super getter/setter 如支持，应以当前 this 作为 receiver。 | ECMAScript 2022 | 待确认 | getter/setter 支持待确认。 |
| R008 | super.method 不存在时调用应进入 undefined callable 边界。 | ECMAScript 2022 | 待确认 | 静态语言通常前移为编译错误。 |
| R009 | super.method 存在但不是 callable 时应抛 TypeError。 | ECMAScript 2022 | 待确认 | 动态场景可记录。 |
| R010 | super() 重复调用应导致初始化异常。 | ECMAScript 2022 | 待确认 | 异常类型需确认。 |
| R011 | this before super 在 ECMA 中属于 ReferenceError 边界。 | ECMAScript 2022 | 待确认 | ArkTS 可能前移为 fail_compile。 |
| R012 | constructor abrupt completion 会导致实例初始化失败。 | ECMAScript 2022 | 待确认 | super 或基类 constructor 抛错。 |
| R013 | 多层继承中 super 调用链按直接基类逐层执行。 | ECMAScript 2022 | 待确认 | A<-B<-C。 |
| R014 | 修改基类 prototype 后 super.method() 是否可观察需按 ArkTS 动态能力确认。 | ECMAScript 2022 | 待确认 | ArkTS 可能限制动态修改。 |
| R015 | super 与 derived constructor return object/primitive 的行为需确认。 | ECMAScript 2022 | 待确认 | 与 constructor 返回值规则交叉。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | 非派生类 constructor 中调用 super()。 | parser/checker | class A { constructor() { super() } } | 应 fail_compile。 |
| C002 | 普通实例方法中以函数形式调用 super()。 | parser/checker | method() { super() } | SuperCall 位置非法。 |
| C003 | static method 中以函数形式调用 super()。 | parser/checker | static m() { super() } | SuperCall 位置非法。 |
| C004 | class 外使用 super。 | parser | function f() { super.m() } | 语法非法。 |
| C005 | 普通嵌套 function 中使用 super。 | parser/checker | m() { function f() { super.m() } } | 词法边界非法。 |
| C006 | 派生类 constructor 中 super() 前访问 this。 | checker | constructor() { this.x = 1; super() } | this-before-super。 |
| C007 | super() 前调用 this.method()。 | checker | constructor() { this.m(); super() } | this-before-super。 |
| C008 | super() 前读取 this.field。 | checker | constructor() { let x = this.f; super() } | this-before-super。 |
| C009 | 派生类 constructor 中部分路径未调用 super()。 | checker | if (flag) super() | 路径分析待确认。 |
| C010 | super() 参数类型与基类 constructor 不匹配。 | checker | super('x') 传给 number 参数 | 类型错误。 |
| C011 | super() 必填参数不足。 | checker | Base constructor 需要参数但 super() 无参数 | 调用错误。 |
| C012 | super() 参数过多且 ArkTS 不允许多余参数。 | checker | super(1, 2) | 规则待确认。 |
| C013 | super.method() 参数类型不匹配。 | checker | super.m('x') 调用 m(n:number) | 类型错误。 |
| C014 | super.method() 参数个数不足。 | checker | super.m() 调用 m(n:number) | 调用错误。 |
| C015 | super.method() 参数过多且 ArkTS 不允许多余参数。 | checker | super.m(1,2) | 规则待确认。 |
| C016 | 调用不存在的 super.missingMethod()。 | checker | super.missingMethod() | 成员不存在。 |
| C017 | 实例方法中通过 super 访问基类 static method。 | checker | super.staticM() | 静态侧/实例侧错误。 |
| C018 | static method 中通过 super 访问基类实例方法。 | checker | static m(){ super.instanceM() } | 静态侧/实例侧错误。 |
| C019 | super 访问 private 成员。 | checker | super.privateMethod() | private 边界。 |
| C020 | super 写 readonly 字段。 | checker | super.readonlyField = 1 | 字段访问支持时覆盖。 |
| C021 | 子类尝试 super.abstractMethod() 且基类无 concrete 实现。 | checker | super.m() where m abstract | abstract 交叉。 |
| C022 | interface 实现方法中误认为存在 super interface method。 | checker | implements I; super.m() | interface 无 runtime super。 |
| C023 | 派生类未 extends 具体基类却使用 super property。 | checker | class A { m(){ super.m() } } | 非派生类 super property。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | this before super 未被静态拦截时运行期异常。 | ReferenceError | constructor 中 super 前读取 this | ArkTS 可能前移为 fail_compile。 |
| E002 | super() 重复调用。 | ReferenceError 或 TypeError | constructor 中调用两次 super() | 异常类型需确认。 |
| E003 | super.method 存在但非 callable。 | TypeError | 动态修改基类 prototype.m 为 number 后调用 | 如 ArkTS 允许动态修改。 |
| E004 | super.missingMethod() 未被静态拦截时调用 undefined。 | TypeError | 动态对象边界 | 静态语言通常 fail_compile。 |
| E005 | 基类 constructor 抛异常导致 super() abrupt completion。 | 原始异常类型 | super() 内部 throw | 对象初始化失败。 |
| E006 | super getter/setter receiver 非法或内部状态非法。 | TypeError | getter 使用非法 receiver | 如支持 getter/setter。 |
| E007 | derived constructor return primitive/object 边界异常。 | TypeError 或差异记录 | super 后 return primitive/object | 按 ArkRuntime 确认。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| this before super | ReferenceError runtime boundary | 通常可前移为 checker 错误 | 应优先 fail_compile，动态场景记录运行时 | P0。 |
| super() 重复调用 | 运行时初始化错误 | TS 报错或运行时错误 | ArkTS 应明确 checker/runtime 边界 | P0。 |
| super property 字段访问 | ECMA 支持 super property reference | TS 支持部分场景 | ArkTS 是否支持待确认 | 不支持则差异。 |
| getter/setter super | ECMA 支持 accessor receiver 语义 | TS 支持 | ArkTS getter/setter 支持待确认 | 待确认。 |
| arrow function 捕获 super | ECMA lexical super | TS 支持 | ArkTS 是否支持待确认 | 待确认。 |
| 普通嵌套 function super | 语法非法 | TS 报错 | ArkTS 应 parser/checker 报错 | fail_compile。 |
| static super | ECMA 支持静态侧查找 | TS 支持 | ArkTS static method/field 支持边界需确认 | P1。 |
| prototype 动态修改 | ECMA 可观察 | TS 可表达 JS 行为 | ArkTS 可能限制动态属性 | 差异记录。 |
| new.target / Reflect.construct | ECMA 支持 | TS 可表达 | ArkTS 支持待确认 | 不支持则排除。 |

## Open Questions

- ArkTS 是否将所有 this-before-super 场景前移为编译期错误？
- ArkTS 是否允许 constructor 中存在分支 super() 并进行路径完整性分析？
- ArkTS 是否支持 super.field 读写，还是只支持 super.method()？
- ArkTS 是否支持 getter/setter，并允许通过 super 访问 accessor？
- ArkTS 是否支持 static super property 和 static super method 的完整 ECMA 行为？
- ArkTS 是否支持 arrow function 中词法捕获 super？
- ArkTS 是否允许动态修改 prototype 并影响 super.method() 查找？
- super() 重复调用在 ArkRuntime 中的具体异常类型是什么？
- derived constructor return object / primitive 的行为是否与 ECMAScript 一致？
- test262 中哪些 super 用例因 ArkTS 静态语法限制需要改写或排除？
