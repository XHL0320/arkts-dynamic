# Spec Points

## Feature

Visibility Modifiers Watch

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

<!-- CLASS_VISIBILITY_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Visibility Modifiers

## ECMA Baseline Status

ArkTS-specific / TS-compatible

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript visibility modifiers compatibility reference
* ECMAScript 2022 class private fields only as comparison if ArkTS supports `#private`
* test262 class private fields cases only when ArkTS supports ECMAScript `#private`

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | class 成员可声明 public 修饰符，如 ArkTS 支持显式 public。 | ArkTS static rules / TS-compatible | 待确认 | 默认可见性需确认。 |
| S002 | class 成员可声明 private 修饰符。 | ArkTS static rules / TS-compatible | 待确认 | 与 ECMAScript #private 区分。 |
| S003 | class 成员可声明 protected 修饰符。 | ArkTS static rules / TS-compatible | 待确认 | 继承访问控制。 |
| S004 | 未显式声明可见性时默认可见性需确认。 | ArkTS static rules | 待确认 | 通常与 public 对照。 |
| S005 | 字段可声明可见性修饰符。 | ArkTS classes | 待确认 | field visibility。 |
| S006 | 方法可声明可见性修饰符。 | ArkTS classes | 待确认 | method visibility。 |
| S007 | constructor 可见性是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | private/protected constructor 边界。 |
| S008 | getter/setter 可见性是否支持需确认。 | ArkTS-specific / TS-compatible | 待确认 | 不支持则记录 Unsupported。 |
| S009 | static 成员可声明可见性修饰符。 | ArkTS classes | 待确认 | static side。 |
| S010 | abstract method 可见性与 abstract 组合需确认。 | ArkTS classes | 待确认 | abstract public/protected/private。 |
| S011 | override 时可见性语法和约束需确认。 | ArkTS classes | 待确认 | 不能非法收窄。 |
| S012 | ECMAScript #private 语法是否支持需确认。 | ECMAScript 2022 private fields | 待确认 | 不要默认纳入。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | public field 外部可访问。 | ArkTS checker | 待确认 | 基础正向。 |
| T002 | public method 外部可调用。 | ArkTS checker | 待确认 | 基础正向。 |
| T003 | private field 仅类内可访问。 | ArkTS checker | 待确认 | 外部/子类不可直接访问。 |
| T004 | private method 仅类内可调用。 | ArkTS checker | 待确认 | 外部/子类不可直接调用。 |
| T005 | protected field 类内和子类内可访问。 | ArkTS checker | 待确认 | 外部不可访问。 |
| T006 | protected method 类内和子类内可调用。 | ArkTS checker | 待确认 | 外部不可调用。 |
| T007 | private 成员子类不可直接访问。 | ArkTS checker | 待确认 | 继承边界。 |
| T008 | protected 成员在多层继承中可由派生类访问。 | ArkTS checker | 待确认 | A<-B<-C。 |
| T009 | private/protected 成员影响 class type compatibility。 | ArkTS type system | 待确认 | 结构/名义边界。 |
| T010 | private/protected 成员不能由 object literal 满足。 | ArkTS checker | 待确认 | object literal 边界。 |
| T011 | private/protected 成员不能满足 interface public member。 | ArkTS interfaces | 待确认 | P0。 |
| T012 | public 成员可满足 interface public property/method。 | ArkTS interfaces | 待确认 | interface 交叉。 |
| T013 | public override public method 应通过。 | ArkTS checker | 待确认 | override。 |
| T014 | public method override 为 protected/private 应报错。 | ArkTS checker | 待确认 | 可见性收窄。 |
| T015 | protected method override 为 public 是否允许需确认。 | ArkTS checker / TS-compatible | 待确认 | 放宽边界。 |
| T016 | protected method override 为 private 应报错。 | ArkTS checker | 待确认 | 收窄。 |
| T017 | private method 是否可被 override 需确认，通常应仅遮蔽。 | ArkTS checker | 待确认 | private override 边界。 |
| T018 | readonly 与 visibility 组合时 readonly 限制仍生效。 | ArkTS checker | 待确认 | private/protected readonly。 |
| T019 | static private/protected/public 成员属于 static side。 | ArkTS checker | 待确认 | 实例不可访问。 |
| T020 | protected static member 子类通过类名访问边界需确认。 | ArkTS checker | 待确认 | static inheritance。 |
| T021 | constructor private/protected/public 如支持，应限制 new 和 super()。 | ArkTS checker | 待确认 | constructor visibility。 |
| T022 | private constructor 可由类内 static factory 调用，如支持。 | ArkTS checker | 待确认 | singleton pattern。 |
| T023 | protected constructor 可由子类 super() 调用，如支持。 | ArkTS checker | 待确认 | inheritance。 |
| T024 | getter/setter 可见性如支持，应按读写访问分别检查。 | ArkTS checker | 待确认 | accessor。 |
| T025 | getter public setter private 的只读暴露模式是否支持需确认。 | ArkTS checker / TS-compatible | 待确认 | accessor 边界。 |
| T026 | generic class 中 private/protected 成员影响 generic compatibility。 | ArkTS generics | 待确认 | generic class。 |
| T027 | module export/import 不应改变成员可见性。 | ArkTS modules | 待确认 | 跨模块。 |
| T028 | ECMAScript #private 如支持，应按 brand check 而非 TS private 规则处理。 | ECMAScript 2022 | 待确认 | 差异记录。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | ArkTS/TS 风格 public/private/protected 主要是静态访问控制。 | ArkTS-specific | 待确认 | 运行时是否保留普通属性行为需确认。 |
| R002 | visibility 不应改变普通 class prototype chain。 | ECMAScript 2022 runtime | 待确认 | prototype 对照。 |
| R003 | visibility 不应改变 instanceof 行为。 | ECMAScript 2022 runtime | 待确认 | instanceof 对照。 |
| R004 | static visibility 不应改变 static member 的运行时宿主为 class constructor。 | ECMAScript 2022 runtime | 待确认 | static side。 |
| R005 | ECMAScript #private 如支持，运行时存在 brand check。 | ECMAScript 2022 private fields | 待确认 | 非 TS private。 |
| R006 | 动态 ESObject 是否可绕过 ArkTS visibility 需记录。 | ArkTS runtime boundary | 待确认 | 静态边界外。 |
| R007 | visibility 错误正常应由 checker 拦截，运行时错误主要来自动态绕过或 #private。 | ArkTS-specific | 待确认 | compile-time boundary。 |
| R008 | 跨模块访问 imported class 的 private/protected 仍应遵循静态可见性。 | ArkTS modules | 待确认 | module。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | 外部访问 private field。 | checker | obj.privateField | P0。 |
| C002 | 外部调用 private method。 | checker | obj.privateMethod() | P0。 |
| C003 | 子类直接访问基类 private field。 | checker | this.privateField | P0。 |
| C004 | 子类直接调用基类 private method。 | checker | this.privateMethod() | P0。 |
| C005 | 外部访问 protected field。 | checker | obj.protectedField | P0。 |
| C006 | 外部调用 protected method。 | checker | obj.protectedMethod() | P0。 |
| C007 | private field 重复声明。 | checker | private x; private x | 重复成员。 |
| C008 | private field 与 public field 同名冲突。 | checker | private x; public x | 同名边界。 |
| C009 | private method 试图满足 interface public method。 | checker | implements I with private m | P0。 |
| C010 | protected method 试图满足 interface public method。 | checker | implements I with protected m | P0。 |
| C011 | private field 试图满足 interface public property。 | checker | implements I with private x | P0。 |
| C012 | protected field 试图满足 interface public property。 | checker | implements I with protected x | P0。 |
| C013 | public method override 为 protected。 | checker | override protected m() | 可见性收窄。 |
| C014 | public method override 为 private。 | checker | override private m() | 可见性收窄。 |
| C015 | protected method override 为 private。 | checker | override private m() | 可见性收窄。 |
| C016 | private method 被标记 override，如 ArkTS 禁止。 | checker | override private m() | private override 边界。 |
| C017 | object literal 赋值给含 private 成员 class type。 | checker | let a:A = {...} | 兼容错误。 |
| C018 | object literal 赋值给含 protected 成员 class type。 | checker | let a:A = {...} | 兼容错误。 |
| C019 | 实例访问 static private/protected/public member。 | checker | obj.staticMember | static/instance 分离。 |
| C020 | 外部访问 private static field/method。 | checker | A.privateStatic | static visibility。 |
| C021 | 外部访问 protected static field/method。 | checker | A.protectedStatic | static visibility。 |
| C022 | static override 中可见性收窄。 | checker | Derived static protected m overrides public | static override。 |
| C023 | private constructor 外部 new，如支持 constructor visibility。 | checker | new A() | constructor visibility。 |
| C024 | protected constructor 外部 new，如支持 constructor visibility。 | checker | new A() | constructor visibility。 |
| C025 | private constructor 继承边界非法，如 ArkTS 禁止继承。 | checker | class D extends A | 待确认。 |
| C026 | private getter 外部读取，如支持 getter。 | checker | obj.x | accessor。 |
| C027 | private setter 外部写入，如支持 setter。 | checker | obj.x = 1 | accessor。 |
| C028 | protected getter/setter 外部访问，如支持 accessor。 | checker | obj.x | accessor。 |
| C029 | abstract public method 实现为 protected/private。 | checker | abstract implementation visibility | abstract 交叉。 |
| C030 | abstract protected method 实现为 private。 | checker | implementation private | abstract 交叉。 |
| C031 | 跨模块 import class 后访问 private field。 | checker | import A; new A().privateX | module。 |
| C032 | 跨模块 import class 后非子类访问 protected field。 | checker | new A().protectedX | module。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | 动态 ESObject 绕过 visibility 后访问缺失属性。 | TypeError 或差异记录 | dynamicObj.privateX | 静态语言应拦截。 |
| E002 | ECMAScript #private 外部访问语法/运行时错误，如 ArkTS 支持。 | SyntaxError 或 TypeError | obj.#x | 待确认。 |
| E003 | #private brand check 失败，如 ArkTS 支持。 | TypeError | method.call(wrongObject) | ECMA private。 |
| E004 | private/protected 方法体自身抛异常。 | 原始异常类型 | public wrapper 调用 private method | 错误来自方法体。 |
| E005 | 跨模块加载失败导致 class 不可用。 | ReferenceError 或模块错误 | import failure | module boundary。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| ArkTS private | ECMA 无 TS-style private | TS private 是静态约束 | ArkTS 支持方式待确认 | 与 #private 区分。 |
| ECMAScript #private | ECMA 运行时 brand check | TS 也支持 #private | ArkTS 支持待确认 | 未确认不纳入必测。 |
| compile-time only | ECMA public 属性运行时可访问 | TS private/protected 编译期限制 | ArkTS 是否仅编译期生效待确认 | 静态边界。 |
| type compatibility | ECMA 不涉及 | TS private/protected 影响兼容 | ArkTS 规则待确认 | P1。 |
| interface implements | ECMA 不涉及 | TS private/protected 不能满足 public interface | ArkTS 预期类似但待确认 | P0。 |
| constructor visibility | ECMA constructor 无 public/private/protected | TS 支持 | ArkTS 支持待确认 | Unsupported 记录。 |
| getter/setter visibility | ECMA accessor 无 TS visibility | TS 支持 | ArkTS 支持待确认 | Unsupported 记录。 |
| override visibility | ECMA 不涉及静态可见性 | TS 不允许非法收窄 | ArkTS 规则待确认 | P0。 |
| dynamic bypass | ECMA 动态属性访问 | TS 编译后可能仍可访问 | ArkTS runtime 行为需确认 | 差异记录。 |

## Open Questions

- ArkTS `private` 是 TypeScript 风格静态 private，还是支持 ECMAScript `#private`？
- ArkTS 是否支持 ECMAScript `#private` 语法和 brand check？
- `private/protected/public` 是否仅在编译期生效？
- private/protected 是否影响 class type compatibility，规则是否与 TypeScript 一致？
- private/protected 是否严格不能满足 interface public 成员？
- ArkTS 是否支持 private/protected/public constructor？
- ArkTS 是否支持 getter/setter 可见性，以及 getter/setter 可见性不一致？
- override 时 protected 放宽为 public 是否允许？
- private method 在子类同名声明时是 override、遮蔽还是禁止？
- dynamic ESObject 是否可能绕过 visibility 检查？
