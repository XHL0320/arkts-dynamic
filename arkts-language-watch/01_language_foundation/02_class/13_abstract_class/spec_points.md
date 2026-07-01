# Spec Points

## Feature

Abstract Class Watch

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

<!-- CLASS_ABSTRACT_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Abstract Class

## ECMA Baseline Status

ArkTS-specific / TS-compatible

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript abstract class compatibility reference
* ECMAScript 2022 class runtime semantics, only for runtime behavior of emitted/compatible class structure
* test262 class cases, only for runtime inheritance behavior when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 允许声明 abstract class。 | ArkTS static rules / TS-compatible | 待确认 | abstract 是静态语言能力，不是 ECMAScript 运行时关键字。 |
| S002 | abstract class 中允许声明 concrete field。 | ArkTS static rules | 待确认 | 字段规则复用 class field。 |
| S003 | abstract class 中允许声明 concrete method。 | ArkTS static rules | 待确认 | 运行时表现为 prototype method。 |
| S004 | abstract class 中允许声明 constructor。 | ArkTS static rules | 待确认 | constructor 可被子类 super() 调用。 |
| S005 | abstract class 中允许声明 abstract method。 | ArkTS static rules / TS-compatible | 待确认 | 无方法体。 |
| S006 | abstract method 不能包含方法体。 | ArkTS static rules | 待确认 | 有方法体应 fail_compile。 |
| S007 | abstract class 可继承普通 class。 | ArkTS static rules | 待确认 | extends 普通基类。 |
| S008 | abstract class 可继承 abstract class。 | ArkTS static rules | 待确认 | 多层抽象继承。 |
| S009 | 普通 class 可继承 abstract class。 | ArkTS static rules | 待确认 | 非 abstract 子类必须实现抽象成员。 |
| S010 | abstract field / abstract property 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不支持时记录 Unsupported。 |
| S011 | abstract accessor 是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | getter/setter 依赖 ArkTS 支持情况。 |
| S012 | abstract static member 是否支持或明确禁止需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不要默认按 TS 行为处理。 |
| S013 | abstract class 可 export/import。 | ArkTS modules | 待确认 | 跨模块用例落点。 |
| S014 | abstract class 可声明为 generic abstract class。 | ArkTS generics | 待确认 | 泛型与抽象成员组合。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | abstract class 可作为变量类型。 | ArkTS type system | 待确认 | 变量可接收 concrete 子类实例。 |
| T002 | abstract class 可作为函数参数类型。 | ArkTS type system | 待确认 | 参数接受子类实例。 |
| T003 | abstract class 可作为返回值类型。 | ArkTS type system | 待确认 | 返回 concrete 子类实例。 |
| T004 | abstract class 禁止直接 new。 | ArkTS checker | 待确认 | 核心 fail_compile。 |
| T005 | 非 abstract 子类必须实现全部 inherited abstract method。 | ArkTS checker | 待确认 | P0。 |
| T006 | abstract 子类允许暂不实现全部 abstract method。 | ArkTS checker | 待确认 | 多层抽象继承。 |
| T007 | abstract method 实现的参数类型必须兼容。 | ArkTS checker | 待确认 | 不可不安全收窄。 |
| T008 | abstract method 实现的返回值类型必须兼容。 | ArkTS checker | 待确认 | 返回类型不兼容报错。 |
| T009 | abstract method 实现的可见性不能非法收窄。 | ArkTS checker | 待确认 | public 实现为 protected/private 应报错。 |
| T010 | protected abstract method 是否可由 public 实现需确认。 | ArkTS checker / TS-compatible | 待确认 | 边界记录。 |
| T011 | private abstract method 是否禁止需确认。 | ArkTS checker / TS-compatible | 待确认 | 通常应禁止。 |
| T012 | abstract method 与 concrete method 同名冲突应报错。 | ArkTS checker | 待确认 | 同一类内冲突。 |
| T013 | abstract method 重复声明或 overload 支持需确认。 | ArkTS checker | 待确认 | 支持时检查实现签名。 |
| T014 | abstract field 如支持，非 abstract 子类必须实现。 | ArkTS checker | 待确认 | 不支持则 Unsupported。 |
| T015 | abstract field 实现类型必须兼容。 | ArkTS checker | 待确认 | 如支持 abstract field。 |
| T016 | abstract class concrete field 可被子类继承。 | ArkTS checker/runtime | 待确认 | 字段继承。 |
| T017 | abstract class concrete method 可被子类继承。 | ArkTS checker/runtime | 待确认 | 方法继承。 |
| T018 | abstract class constructor 参数在子类 super() 中检查。 | ArkTS checker | 待确认 | constructor/super 交叉。 |
| T019 | abstract class implements interface 时是否可保留 abstract method 待确认。 | ArkTS checker | 待确认 | abstract class 可延迟实现时记录。 |
| T020 | concrete 子类最终必须满足 interface 和 abstract method。 | ArkTS checker | 待确认 | interface 交叉。 |
| T021 | abstract class concrete method 可满足 interface method。 | ArkTS checker | 待确认 | 签名必须兼容。 |
| T022 | abstract class concrete field 可满足 interface property。 | ArkTS checker | 待确认 | 属性类型兼容。 |
| T023 | generic abstract class 的 T 在 abstract method 中生效。 | ArkTS generics | 待确认 | 泛型抽象方法。 |
| T024 | generic 约束在子类实现 abstract method 时继续生效。 | ArkTS generics | 待确认 | 约束不应丢失。 |
| T025 | abstract class 与 object literal 兼容边界需确认。 | ArkTS type system | 待确认 | 不要直接套用 TS 结构兼容。 |
| T026 | abstract static member 支持与否会影响子类静态侧检查。 | ArkTS checker | 待确认 | 不支持则 fail_compile/差异。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | abstract class 的 concrete 子类运行时仍是 class 实例。 | ECMAScript 2022 class runtime | 待确认 | abstract 本身不来自 ECMA。 |
| R002 | abstract class concrete method 位于运行时 prototype 上。 | ECMAScript 2022 class runtime | 待确认 | 可通过子类实例调用。 |
| R003 | 子类实例 instanceof abstract base class 的行为需验证。 | ECMAScript 2022 class runtime | 待确认 | 基于 prototype chain。 |
| R004 | abstract class constructor 可由子类 super() 执行。 | ECMAScript 2022 / ArkTS | 待确认 | 不能直接 new abstract class。 |
| R005 | abstract base constructor 初始化 concrete field。 | ECMAScript 2022 class fields | 待确认 | 初始化顺序交叉。 |
| R006 | 子类 prototype chain 应连接到 abstract base prototype。 | ECMAScript 2022 | 待确认 | 继承运行时对照。 |
| R007 | constructor property 行为与普通 class 继承一致。 | ECMAScript 2022 | 待确认 | 运行时检查。 |
| R008 | abstract 约束主要由 checker 保证，运行时不应依赖 abstract 关键字。 | ArkTS-specific | 待确认 | 动态绕过需记录。 |
| R009 | abstract base constructor 抛异常时子类初始化失败。 | ECMAScript 2022 | 待确认 | abrupt completion。 |
| R010 | 跨模块 export/import 后 abstract 子类运行时继承链保持一致。 | ArkTS modules / ES2022 runtime | 待确认 | integration。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | 直接 new abstract class。 | checker | new BaseAbstract() | 核心负向。 |
| C002 | abstract method 带方法体。 | parser/checker | abstract m(): void { } | 抽象方法不能实现。 |
| C003 | 非 abstract class 中声明 abstract method。 | checker | class A { abstract m(): void } | 需要 abstract class。 |
| C004 | 普通子类未实现 inherited abstract method。 | checker | class D extends A {} | P0。 |
| C005 | 普通子类只实现部分 abstract method。 | checker | A 有 m/n，D 只实现 m | P0。 |
| C006 | 实现 abstract method 的参数类型不兼容。 | checker | m(x:string) 实现 m(x:number) | 签名错误。 |
| C007 | 实现 abstract method 的返回类型不兼容。 | checker | 返回 string 实现返回 number | 签名错误。 |
| C008 | 实现 public abstract method 时可见性收窄。 | checker | protected/private m() | 可见性错误。 |
| C009 | private abstract method，如 ArkTS 禁止。 | checker | private abstract m() | 待确认。 |
| C010 | abstract method 与 concrete method 同名冲突。 | checker | abstract m(); m() {} | 成员冲突。 |
| C011 | abstract method 重复声明且非合法 overload。 | checker | abstract m(); abstract m() | 重名边界。 |
| C012 | abstract field 语法不支持时使用 abstract field。 | parser/checker | abstract x: number | Unsupported。 |
| C013 | abstract field 实现类型不兼容，如支持 abstract field。 | checker | x:string 实现 x:number | 类型错误。 |
| C014 | abstract accessor 语法不支持时使用 abstract get/set。 | parser/checker | abstract get x() | Unsupported。 |
| C015 | abstract static member 不支持时声明 abstract static。 | parser/checker | abstract static m() | 待确认。 |
| C016 | abstract base constructor super() 参数类型错误。 | checker | super('x') -> constructor(number) | constructor 交叉。 |
| C017 | abstract base constructor super() 参数个数不足。 | checker | super() -> constructor(x:number) | constructor 交叉。 |
| C018 | abstract base constructor super() 参数个数过多且 ArkTS 不允许。 | checker | super(1,2) | 规则待确认。 |
| C019 | interface method 与 abstract method 签名不兼容。 | checker | implements I; abstract m mismatch | interface 交叉。 |
| C020 | concrete 子类未最终实现 interface method。 | checker | abstract base implements I but D 未实现 | interface 交叉。 |
| C021 | generic abstract method 实现时违反泛型约束。 | checker | T extends Base，子类实现不满足 | generic 交叉。 |
| C022 | abstract class 继承链出现循环。 | checker | abstract class A extends B; B extends A | 继承负向。 |
| C023 | abstract class 继承非 class / 非 constructor。 | checker | abstract class A extends value | extends 边界。 |
| C024 | object literal 赋值给 abstract class 类型不满足 ArkTS 规则。 | checker | let a: A = { ... } | 兼容边界。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | 动态绕过直接构造 abstract class 的行为。 | TypeError 或差异记录 | 通过反射/动态构造尝试 new abstract | ArkTS 静态语言应提前拦截。 |
| E002 | abstract base constructor 抛异常。 | 原始异常类型 | 子类 super() 调用中 throw | 运行时传播。 |
| E003 | super() 初始化失败导致子类对象未完成初始化。 | ReferenceError 或原始异常 | abstract base constructor abrupt completion | constructor 边界。 |
| E004 | 通过动态方式调用缺失 abstract method 实现。 | TypeError 或差异记录 | 绕过 checker 后调用 undefined | 静态语言应避免。 |
| E005 | 跨模块加载失败导致 abstract base 不可用。 | ReferenceError 或模块错误 | import abstract base 失败 | 模块边界。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| abstract 关键字 | ECMA 无 abstract class 语法 | TS 类型系统概念 | ArkTS-specific / checker 规则 | 不可从 test262 直接推导。 |
| abstract class 作为值 | ECMA class 是运行时值 | TS abstract class 可作值但不可 new | ArkTS 是否允许作为值使用待确认 | 记录 constructor type 边界。 |
| 直接实例化 | ECMA 无 abstract 限制 | TS 编译期禁止 | ArkTS 应 fail_compile | P0。 |
| object literal 兼容 | ECMA 不涉及静态类型 | TS 可能结构兼容 | ArkTS 规则待确认 | 不要默认套用 TS。 |
| abstract static member | ECMA 不涉及 | TS 支持情况与版本相关 | ArkTS 支持待确认 | 记录 Unsupported。 |
| abstract field/accessor | ECMA 不涉及 | TS 支持情况与版本相关 | ArkTS 支持待确认 | 记录 Unsupported。 |
| private abstract | ECMA 不涉及 | TS 通常禁止 | ArkTS 应确认 | fail_compile 候选。 |
| protected abstract | ECMA 不涉及 | TS 支持 | ArkTS 支持待确认 | 实现可见性边界。 |
| test262 映射 | 仅覆盖 class runtime | 不覆盖 abstract checker | ArkTS abstract 以 spec/checker 用例为主 | test262 只做交叉。 |

## Open Questions

- ArkTS 是否完整支持 abstract class 作为值使用但禁止直接 new？
- ArkTS 是否支持 abstract field / abstract property？
- ArkTS 是否支持 abstract accessor？
- ArkTS 是否支持 abstract static member，或明确禁止？
- ArkTS 是否允许 private abstract method？
- ArkTS 是否允许 protected abstract method 被 public 方法实现？
- ArkTS 是否允许 abstract class implements interface 后延迟到 concrete 子类实现？
- ArkTS abstract class 与 object literal 的兼容规则是什么？
- generic abstract class 的约束在子类实现中是否完全保留？
- abstract class 跨模块 export/import 后 checker 与 runtime 行为是否一致？
