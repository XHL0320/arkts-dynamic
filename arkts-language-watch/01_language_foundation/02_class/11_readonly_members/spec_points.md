# Spec Points

## Feature

Readonly Members Watch

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

<!-- CLASS_READONLY_MEMBERS_DETAILED_WATCH_V1 -->
# Spec Points

## Feature

Readonly Members

## ECMA Baseline Status

ArkTS-specific / TS-compatible

## Related Sources

* ArkTS official language documentation
* ArkTS static language rules
* TypeScript readonly property compatibility reference
* ECMAScript 2022 class fields runtime semantics, only for runtime field behavior
* test262 class fields cases, only for runtime initialization behavior when applicable

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | 允许声明 readonly 实例字段。 | ArkTS static rules / TS-compatible | 待确认 | readonly 是静态约束。 |
| S002 | 允许声明 readonly static 字段，如 ArkTS 支持。 | ArkTS classes | 待确认 | static 交叉。 |
| S003 | readonly 字段可声明类型注解。 | ArkTS type system | 待确认 | 类型检查。 |
| S004 | readonly 字段可在声明处初始化。 | ArkTS classes | 待确认 | 初始化入口。 |
| S005 | readonly 字段可否在 constructor 中初始化需确认。 | ArkTS checker / TS-compatible | 待确认 | constructor 初始化。 |
| S006 | readonly 可与 public/private/protected 组合。 | ArkTS visibility | 待确认 | 可见性交叉。 |
| S007 | readonly 可与 generic class 字段组合。 | ArkTS generics | 待确认 | T 类型字段。 |
| S008 | abstract readonly field 是否支持需确认。 | ArkTS abstract class | 待确认 | 不支持则记录 Unsupported。 |
| S009 | interface readonly property 是否支持需确认。 | ArkTS interfaces | 待确认 | interface 交叉。 |
| S010 | readonly 跨 module export/import 后仍保持静态只读约束。 | ArkTS modules | 待确认 | 跨模块。 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | readonly 字段初始化值必须可赋值给字段类型。 | ArkTS checker | 待确认 | P0。 |
| T002 | readonly 字段声明处初始化后外部可读。 | ArkTS checker | 待确认 | 读允许。 |
| T003 | readonly 字段 constructor 中初始化支持范围需确认。 | ArkTS checker | 待确认 | constructor。 |
| T004 | readonly 字段声明处初始化后 constructor 再赋值是否允许需确认。 | ArkTS checker | 待确认 | 重复赋值边界。 |
| T005 | readonly 字段 constructor 中重复赋值是否允许需确认。 | ArkTS checker | 待确认 | 多次赋值。 |
| T006 | readonly 字段 constructor 外赋值应报错。 | ArkTS checker | 待确认 | P0。 |
| T007 | readonly 字段普通方法内赋值应报错。 | ArkTS checker | 待确认 | P0。 |
| T008 | readonly 字段所有 constructor 分支 definite assignment 规则需确认。 | ArkTS checker / TS-compatible | 待确认 | definite assignment。 |
| T009 | readonly 未初始化字段是否报错需确认。 | ArkTS checker | 待确认 | 初始化规则。 |
| T010 | readonly object field 只限制引用重新赋值还是深只读需确认。 | ArkTS type system | 待确认 | 浅只读边界。 |
| T011 | readonly array field 只限制引用重新赋值还是元素修改需确认。 | ArkTS type system | 待确认 | 浅只读边界。 |
| T012 | readonly static field 外部赋值应报错。 | ArkTS checker | 待确认 | static。 |
| T013 | readonly static field 类内 static method 赋值边界需确认。 | ArkTS checker | 待确认 | static method。 |
| T014 | private/protected readonly 仍受可见性约束。 | ArkTS checker | 待确认 | visibility。 |
| T015 | 子类不能修改继承 readonly field。 | ArkTS checker | 待确认 | inheritance P0。 |
| T016 | readonly 字段遮蔽规则需确认。 | ArkTS checker | 待确认 | field shadow。 |
| T017 | 普通字段遮蔽 readonly 字段是否允许需确认。 | ArkTS checker | 待确认 | override/shadow 边界。 |
| T018 | readonly 字段遮蔽普通字段是否允许需确认。 | ArkTS checker | 待确认 | shadow 边界。 |
| T019 | class readonly field 可满足 interface readonly property，如支持 interface readonly。 | ArkTS interfaces | 待确认 | interface。 |
| T020 | class 普通 field 是否可满足 interface readonly property 需确认。 | ArkTS interfaces / TS-compatible | 待确认 | 兼容边界。 |
| T021 | class readonly field 是否可满足 mutable interface property 需确认。 | ArkTS interfaces | 待确认 | 方向性。 |
| T022 | interface readonly property 引用下写入应报错。 | ArkTS checker | 待确认 | P0。 |
| T023 | readonly 是否影响 class type compatibility 需确认。 | ArkTS type system | 待确认 | compatibility。 |
| T024 | object literal 赋给含 readonly field class/interface 的规则需确认。 | ArkTS checker | 待确认 | object literal。 |
| T025 | generic class readonly field 类型 T 初始化必须满足 T/约束。 | ArkTS generics | 待确认 | generic。 |
| T026 | union/null class type 下 readonly field 访问和写入边界需确认。 | ArkTS type system | 待确认 | union/null。 |
| T027 | readonly static field 与 constructor/static side type 的兼容边界需确认。 | ArkTS class type | 待确认 | typeof Class。 |
| T028 | readonly 规则应优先由 checker 拦截，除非 ArkRuntime 有属性描述符限制。 | ArkTS boundary | 待确认 | runtime boundary。 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | readonly 字段运行时仍按 class field 初始化顺序创建。 | ECMAScript 2022 class fields | 待确认 | 运行时字段。 |
| R002 | readonly instance field 是 instance 上的属性。 | ECMAScript 2022 runtime | 待确认 | 属性位置。 |
| R003 | readonly static field 是 constructor object 上的属性。 | ECMAScript 2022 runtime | 待确认 | static 属性。 |
| R004 | readonly 是否影响 runtime property writable descriptor 需确认。 | ArkTS runtime boundary | 待确认 | 重要边界。 |
| R005 | readonly 类型规则在运行时是否擦除需确认。 | ArkTS runtime boundary | 待确认 | 静态/运行时分离。 |
| R006 | readonly object/array 若仅引用只读，内部属性/元素运行时仍可能可变。 | ArkTS boundary / ES runtime | 待确认 | 浅只读。 |
| R007 | Object.freeze 与 readonly 不是同一概念，应作为运行时对照。 | ECMAScript 2022 | 待确认 | 差异记录。 |
| R008 | 动态 ESObject 是否可绕过 readonly 需记录。 | ArkTS dynamic boundary | 待确认 | 动态边界。 |
| R009 | 若 runtime 属性不可写，严格写入可能抛 TypeError。 | ECMAScript 2022 | 待确认 | 仅 runtime descriptor 生效时。 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | readonly 字段类型注解与初始化值不一致。 | checker | readonly x:number='s' | P0。 |
| C002 | readonly 字段 constructor 参数赋值类型错误。 | checker | this.x = 's' where x:number | P0。 |
| C003 | readonly 字段部分 constructor 分支未赋值，如 ArkTS 要求 definite assignment。 | checker | if branch missing assignment | 待确认。 |
| C004 | readonly 字段声明处初始化后 constructor 再赋值，如 ArkTS 禁止。 | checker | readonly x=1; constructor(){this.x=2} | 待确认。 |
| C005 | readonly 字段 constructor 中重复赋值，如 ArkTS 禁止。 | checker | this.x=1; this.x=2 | 待确认。 |
| C006 | readonly 字段 constructor 外赋值。 | checker | obj.x=1 | P0。 |
| C007 | readonly 字段实例方法中赋值。 | checker | method(){this.x=1} | P0。 |
| C008 | readonly 字段 static method 中赋值边界。 | checker | static m(obj){obj.x=1} | P0。 |
| C009 | 外部对 readonly 字段赋值。 | checker | a.x = 2 | P0。 |
| C010 | 通过对象别名对 readonly 字段赋值。 | checker | let b=a; b.x=2 | P0。 |
| C011 | 通过 class type 引用对 readonly 字段赋值。 | checker | let b:A=a; b.x=2 | P0。 |
| C012 | 通过 interface readonly property 引用赋值。 | checker | let i:I=a; i.x=2 | P0。 |
| C013 | readonly 字段自增。 | checker | a.x++ | P0。 |
| C014 | readonly 字段复合赋值。 | checker | a.x += 1 | P0。 |
| C015 | readonly object field 引用重新赋值。 | checker | a.obj = {} | P0。 |
| C016 | readonly array field 引用重新赋值。 | checker | a.arr = [] | P0。 |
| C017 | readonly static field 外部赋值。 | checker | A.x=1 | P0。 |
| C018 | readonly static field 类内 static method 赋值，如 ArkTS 禁止。 | checker | static m(){this.x=1} | 待确认。 |
| C019 | private readonly field 外部读取/写入。 | checker | a.privateReadonly | visibility。 |
| C020 | protected readonly field 外部读取/写入。 | checker | a.protectedReadonly | visibility。 |
| C021 | 子类修改继承 readonly field。 | checker | this.baseReadonly=1 | P0。 |
| C022 | 派生类 constructor 直接初始化基类 readonly field，如 ArkTS 禁止。 | checker | this.baseReadonly=1 | inheritance。 |
| C023 | 子类普通字段遮蔽基类 readonly field，如 ArkTS 禁止。 | checker | field shadow | 待确认。 |
| C024 | class readonly field 类型与 interface readonly property 不一致。 | checker | implements I mismatch | interface。 |
| C025 | protected/private readonly field 不能满足 public interface property。 | checker | implements I with protected/private readonly | interface。 |
| C026 | abstract readonly field 不支持时声明。 | parser/checker | abstract readonly x | Unsupported。 |
| C027 | generic readonly field 初始化不满足约束。 | checker | readonly value:T = bad | generic。 |
| C028 | import class 后写 readonly field。 | checker | import A; new A().x=1 | module。 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | 动态方式修改 readonly field。 | TypeError 或差异记录 | dynamicObj.x=2 | checker 应拦截静态代码。 |
| E002 | runtime property descriptor 不可写时赋值。 | TypeError | strict write to non-writable | 仅 ArkRuntime 设置 descriptor 时。 |
| E003 | readonly object field 内部属性修改时方法体抛异常。 | 原始异常类型 | a.obj.mutate() | 浅只读边界。 |
| E004 | readonly array field 元素修改运行时边界。 | TypeError 或差异记录 | a.arr[0]=1 | 按 ArkTS/Runtime 确认。 |
| E005 | circular import 下 readonly static 初始化失败。 | ReferenceError 或差异记录 | module cycle | 按支持情况记录。 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| readonly nature | ECMA 无 readonly 字段语法 | TS 静态只读 | ArkTS 是否纯编译期限制待确认 | P0。 |
| runtime descriptor | ECMA property descriptor 可写性独立 | TS readonly 不改变 runtime descriptor | ArkTS 是否改变 descriptor 待确认 | 边界。 |
| constructor init | ECMA 不限制多次赋值 | TS readonly 可在 constructor 赋值 | ArkTS 规则待确认 | P0。 |
| object shallow readonly | ECMA 普通对象属性可变 | TS readonly 只读引用 | ArkTS 是否浅只读待确认 | 边界。 |
| array shallow readonly | ECMA array 元素可变 | TS readonly field 不等于 readonly array | ArkTS 待确认 | 边界。 |
| interface readonly | ECMA 无 interface | TS 支持 readonly property | ArkTS 支持待确认 | interface。 |
| compatibility | ECMA 不涉及 | TS 有 readonly assignability 方向性 | ArkTS 规则待确认 | P1。 |
| private/protected | ECMA 不涉及 TS-style visibility | TS visibility 叠加 readonly | ArkTS 待确认 | 交叉。 |

## Open Questions

- readonly 是否是纯编译期限制？
- readonly 是否影响运行时 property descriptor writable？
- readonly 字段是否必须在声明处或 constructor 中初始化？
- readonly 字段是否允许 constructor 中多次赋值？
- readonly object 字段是否只是引用只读？
- readonly array 字段是否允许修改元素或调用 push/pop？
- 普通字段是否能满足 readonly interface property？
- readonly 是否影响 class type compatibility 和 object literal compatibility？
- readonly static field 的类内赋值边界是什么？
- readonly 与 private/protected 组合时兼容性如何判断？
