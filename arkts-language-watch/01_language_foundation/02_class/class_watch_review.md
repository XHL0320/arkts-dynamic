<!-- CLASS_WATCH_CONSOLIDATION_V1 -->

# Class Watch Review

## Review Scope

本报告审查 `01_language_foundation/02_class/` 下所有 Class 看护子目录。

## Reviewed Directories

| 子目录 | 是否存在 | README | spec_points.md | test_design.md | coverage_matrix.md | test262_mapping.md | issues | 备注 |
|---|---|---|---|---|---|---|---|---|
| 00_class_declaration | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 01_class_type | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 02_class_instantiation | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 03_field | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 04_method | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 05_constructor | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 06_visibility_modifiers | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 07_inheritance | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 08_super | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 09_override | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 10_static_members | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 11_readonly_members | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 12_object_literal | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 13_abstract_class | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 14_class_and_interface | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 15_generic_class | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 16_this_in_class | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 17_class_scope | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 18_class_initialization_order | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 19_class_runtime_behavior | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 99_mapping_and_regression | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |

## Structure Consistency Check

检查每个子目录是否都包含：

- README.md
- spec_points.md
- test_design.md
- coverage_matrix.md
- test262_mapping.md
- xts/pass
- xts/fail_compile
- xts/fail_runtime
- xts/boundary
- xts/regression
- xts/integration
- issues/known_issues.md
- issues/fixed_issues.md

| 子目录 | 结构完整性 | 缺失项 | 处理建议 |
|---|---|---|---|
| 00_class_declaration | 完整 |  | 无需处理 |
| 01_class_type | 完整 |  | 无需处理 |
| 02_class_instantiation | 完整 |  | 无需处理 |
| 03_field | 完整 |  | 无需处理 |
| 04_method | 完整 |  | 无需处理 |
| 05_constructor | 完整 |  | 无需处理 |
| 06_visibility_modifiers | 完整 |  | 无需处理 |
| 07_inheritance | 完整 |  | 无需处理 |
| 08_super | 完整 |  | 无需处理 |
| 09_override | 完整 |  | 无需处理 |
| 10_static_members | 完整 |  | 无需处理 |
| 11_readonly_members | 完整 |  | 无需处理 |
| 12_object_literal | 完整 |  | 无需处理 |
| 13_abstract_class | 完整 |  | 无需处理 |
| 14_class_and_interface | 完整 |  | 无需处理 |
| 15_generic_class | 完整 |  | 无需处理 |
| 16_this_in_class | 完整 |  | 无需处理 |
| 17_class_scope | 完整 |  | 无需处理 |
| 18_class_initialization_order | 完整 |  | 无需处理 |
| 19_class_runtime_behavior | 完整 |  | 无需处理 |
| 99_mapping_and_regression | 完整 |  | 无需处理 |

## Terminology Consistency Check

| 推荐术语 | 不推荐/可合并术语 | 说明 |
|---|---|---|
| fail_compile | compile negative / checker negative / parser negative | 统一用例类型 |
| fail_runtime | runtime negative / runtime error | 统一运行时异常用例类型 |
| boundary | edge case / corner case | 统一边界用例类型 |
| integration | cross feature / combination | 统一组合用例类型 |
| regression | historical issue case | 统一回归用例类型 |
| ES2022 | ECMAScript 2022 | ECMA 基线状态统一 |
| ArkTS-specific | ArkTS specific / ArkTS only | ArkTS 自定义语义统一 |
| TS-compatible | TypeScript compatible / TS reference | TS 兼容参考统一 |
| Mixed | ES2022 / ArkTS-specific / TS-compatible 混合 | 混合语义统一 |

## ECMA Baseline Consistency Check

推荐取值只能使用：

- ES2022
- ES2023-supported
- ES2023-unknown
- ES2024+
- ArkTS-specific
- TS-compatible
- Mixed
- Unsupported

| 子目录 | 当前使用的 Baseline Status | 是否规范 | 建议修正 |
|---|---|---|---|
| 00_class_declaration | ES2022, ArkTS-specific | 是 |  |
| 01_class_type | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 02_class_instantiation | ES2022 | 是 |  |
| 03_field | ES2022, ArkTS-specific, TS-compatible, Mixed | 是 |  |
| 04_method | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 05_constructor | ES2022, ArkTS-specific, TS-compatible, Mixed | 是 |  |
| 06_visibility_modifiers | ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 07_inheritance | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 08_super | ES2022, ArkTS-specific, TS-compatible, Unsupported | 是 |  |
| 09_override | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 10_static_members | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 11_readonly_members | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 12_object_literal | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 13_abstract_class | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 14_class_and_interface | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 15_generic_class | ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 16_this_in_class | ES2022, ArkTS-specific, TS-compatible, Mixed | 是 |  |
| 17_class_scope | ES2022, ArkTS-specific | 是 |  |
| 18_class_initialization_order | ES2022, ArkTS-specific, TS-compatible, Mixed, Unsupported | 是 |  |
| 19_class_runtime_behavior | ES2022, ArkTS-specific, TS-compatible, Mixed | 是 |  |
| 99_mapping_and_regression | Mixed | 是 |  |

## test262 Mapping Boundary Check

重点规则：

1. test262 只映射 ECMAScript runtime semantics；
2. ArkTS-specific / TS-compatible 静态类型规则不应直接归为 test262；
3. class runtime behavior、constructor、prototype、instanceof、super、field initialization、static initialization 等可以参考 test262；
4. interface、generic、abstract、readonly、visibility、class type compatibility 等主要应使用 ArkTS spec/checker 用例。

| 子目录 | test262 映射是否合理 | 可参考 test262 的部分 | 不应归入 test262 的部分 | 修正建议 |
|---|---|---|---|---|
| 00_class_declaration | 待补充 | class runtime behavior | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 01_class_type | 合理 | class cannot be called without new; class constructor runtime value; class inheritance runtime behavior; instance constructor property; instanceof class; prototype property | TypeScript class type compatibility reference, not test262; class type-specific behavior is ArkTS-specific, not from test262; constructor type / typeof Class; object literal to class type is ArkTS-specific/TS-compatible; static side vs instance side | 保持 runtime 与 static 边界分离 |
| 02_class_instantiation | 待补充 | class runtime behavior | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 03_field | 合理 | class cannot be called without new; class field initialization order; class fields and TDZ; class fields and inheritance; computed field name; derived class field initialization | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 04_method | 合理 | async method; class method cannot be used as constructor; class method definition; computed method name; generator method; getter method | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 05_constructor | 合理 | Reflect.construct with class constructor; base constructor and derived fields initialization order; class constructor definition; constructor cannot be called without new; constructor property; constructor return object | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 06_visibility_modifiers | 合理 | ECMAScript private fields #x, only if ArkTS supports it; class inheritance runtime behavior; instanceof class; private field brand check, only if ArkTS supports #private; prototype chain; public class fields runtime behavior | TypeScript-style private/protected/public is ArkTS-specific or TS-compatible, not from test262; interface compatibility with private/protected; object literal compatibility with private/protected | 保持 runtime 与 static 边界分离 |
| 07_inheritance | 合理 | class extends base class; class fields initialization order; derived class abrupt completion; derived class default constructor; derived constructor super call; extends non-constructor | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 08_super | 合理 | static super method; static super property; super abrupt completion; super and prototype lookup; super call arguments; super call in derived constructor | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 09_override | 合理 | class fields vs methods name collision; getter/setter override, only if ArkTS supports accessors; method cannot be used as constructor; method function name behavior; method inheritance runtime behavior; overridden method dispatch | TypeScript/ArkTS override keyword is not from test262; abstract method implementation is ArkTS-specific/TS-compatible; interface method implementation is ArkTS-specific/TS-compatible; override type checking is ArkTS-specific/TS-compatible | 保持 runtime 与 static 边界分离 |
| 10_static_members | 合理 | class evaluation with static members; constructor object property behavior; public static field; public static method; static block abrupt completion, only if ArkTS supports it; static block, only if ArkTS supports it | TypeScript/ArkTS static type checking is not from test262 | 保持 runtime 与 static 边界分离 |
| 11_readonly_members | 合理 | Object.freeze comparison, only as runtime contrast if needed; class fields are runtime properties; constructor initialization order; derived class field initialization; field initialization order; property assignment runtime behavior, only for dynamic boundary | readonly-specific behavior is ArkTS-specific/TS-compatible, not from test262 | 保持 runtime 与 static 边界分离 |
| 12_object_literal | 合理 | computed property name, only if ArkTS supports it; getter/setter in object literal, only if ArkTS supports it; missing property runtime behavior; object initializer runtime behavior; object literal method definition; object literal property definition | excess property check is ArkTS-specific/TS-compatible; object literal compatibility with class type is ArkTS-specific/TS-compatible; object literal compatibility with interface type is ArkTS-specific/TS-compatible; private/protected compatibility is ArkTS-specific/TS-compatible | 保持 runtime 与 static 边界分离 |
| 13_abstract_class | 合理 | class inheritance runtime behavior; constructor property; derived constructor super call; field initialization order; instanceof with base and derived; method inheritance | TypeScript abstract compatibility reference, not test262; abstract class direct new negative; abstract class implements interface; abstract method implementation signature; abstract-specific behavior is ArkTS-specific, not from test262; generic abstract class | 保持 runtime 与 static 边界分离 |
| 14_class_and_interface | 合理 | class inheritance runtime behavior; class instance runtime behavior; field access runtime behavior; instanceof class; method call runtime behavior; prototype chain | TypeScript interface compatibility reference, not test262; abstract class implements interface; generic interface implements; implements-specific checker behavior is ArkTS-specific, not from test262; interface-specific behavior is ArkTS-specific, not from test262; module import interface implements | 保持 runtime 与 static 边界分离 |
| 15_generic_class | 合理 | class cannot be called without new; class constructor runtime behavior; class fields runtime behavior; class inheritance runtime behavior; class methods runtime behavior; instanceof class | TypeScript generic compatibility reference, not test262; generic constraints are ArkTS-specific/TS-compatible, not test262; generic default type parameters are ArkTS-specific/TS-compatible, not test262; generic implements interface is ArkTS-specific/TS-compatible, not test262; generic-specific behavior is ArkTS-specific/TS-compatible, not from test262; type erasure runtime contrast, ArkTS-specific | 保持 runtime 与 static 边界分离 |
| 16_this_in_class | 合理 | arrow function lexical this in class method; call/apply/bind this behavior, only if ArkTS supports it; class method strict this; class method this binding; derived constructor this before super; field initializer using this | explicit this parameter is ArkTS-specific/TS-compatible, only if ArkTS supports it; polymorphic this is ArkTS-specific/TS-compatible; this type checking is ArkTS-specific/TS-compatible | 保持 runtime 与 static 边界分离 |
| 17_class_scope | 待补充 | class runtime behavior | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |
| 18_class_initialization_order | 合理 | base class instance fields initialization; base constructor before derived fields; base static before derived static; class evaluation order; constructor abrupt completion; constructor return object/primitive boundary | TypeScript/ArkTS definite assignment checking is not from test262 | 保持 runtime 与 static 边界分离 |
| 19_class_runtime_behavior | 合理 | #private field; call/apply/bind; class constructor cannot be called without new; class constructor with new; class declaration runtime binding; class evaluation abrupt completion | ArkTS static type rules are not from test262 | 保持 runtime 与 static 边界分离 |
| 99_mapping_and_regression | 待补充 | class runtime behavior | ArkTS checker/type system rules | 保持 runtime 与 static 边界分离 |

## Priority Consistency Check

### P0

```text
03_field
04_method
05_constructor
07_inheritance
08_super
13_abstract_class
14_class_and_interface
```

### P1

```text
01_class_type
06_visibility_modifiers
09_override
10_static_members
11_readonly_members
16_this_in_class
18_class_initialization_order
19_class_runtime_behavior
```

### P2

```text
00_class_declaration
02_class_instantiation
12_object_literal
15_generic_class
17_class_scope
```

### P3 / Mapping

```text
99_mapping_and_regression
```

| 子目录 | 建议优先级 | 原因 | 是否建议优先生成 XTS |
| --- | ----- | -- | ------------ |
| 00_class_declaration | P2 | 基础语法和绑定，风险低于核心成员语义 | 按需 |
| 01_class_type | P1 | 类值空间/类型空间和 static/instance side 交叉重要 | 是 |
| 02_class_instantiation | P2 | new/default constructor 与 runtime 边界补充 | 按需 |
| 03_field | P0 | 字段类型、初始化、赋值与继承交叉风险最高 | 是 |
| 04_method | P0 | 方法参数、返回值、this、重写是核心 checker 行为 | 是 |
| 05_constructor | P0 | 构造参数、初始化、super/this-before-super 关键 | 是 |
| 06_visibility_modifiers | P1 | private/protected/public 影响访问和兼容 | 是 |
| 07_inheritance | P0 | extends、继承链、基类/派生类兼容是核心语义 | 是 |
| 08_super | P0 | super call/property 独立运行时与静态边界集中 | 是 |
| 09_override | P1 | 覆盖签名、可见性、abstract/interface 交叉复杂 | 是 |
| 10_static_members | P1 | static side、继承、初始化顺序风险较高 | 是 |
| 11_readonly_members | P1 | readonly 初始化、赋值与兼容交叉价值高 | 是 |
| 12_object_literal | P2 | 结构兼容和 runtime 差异重要但依赖 ArkTS 规则确认 | 按需 |
| 13_abstract_class | P0 | 抽象成员实现与禁止实例化是高价值编译负向 | 是 |
| 14_class_and_interface | P0 | implements 与成员完整性是高风险静态检查 | 是 |
| 15_generic_class | P2 | 泛型静态检查重要但多数为类型系统扩展 | 按需 |
| 16_this_in_class | P1 | this binding 与静态 this type 贯穿 class 语义 | 是 |
| 17_class_scope | P2 | 作用域和绑定边界作为补充覆盖 | 按需 |
| 18_class_initialization_order | P1 | 统一收口字段、constructor、static 初始化顺序 | 是 |
| 19_class_runtime_behavior | P1 | prototype、instanceof、constructor runtime 对照 | 是 |
| 99_mapping_and_regression | P3 | 集中映射和回归维护目录 | 否 |

## Overall Findings

1. P0 目录已经形成 field、method、constructor、inheritance、super、abstract、interface 的高价值细粒度设计。
2. P1/P2 中 class type、visibility、override、static、readonly、generic、object literal、this、initialization order 已经具备后续生成 XTS 的设计基础。
3. 00_class_declaration、02_class_instantiation、17_class_scope、19_class_runtime_behavior 若仍停留在骨架模板，建议作为补齐后的第二轮验收重点。
4. this before super、初始化顺序、super.method、static side、private/protected compatibility 等主题跨目录重复较多，需要按主归属目录生成首批 XTS。
5. class expression、typeof Class、object literal to class、getter/setter、static block、#private、generic default 等 ArkTS 支持情况需要人工确认后再生成强断言用例。
