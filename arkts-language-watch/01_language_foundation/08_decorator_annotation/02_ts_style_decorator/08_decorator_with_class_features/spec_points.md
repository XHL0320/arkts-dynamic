# Spec Points

## Feature

08 Decorator With Class Features

## Baseline Status

ArkTS-specific / TS-compatible / Mixed / Pending

## Related Concepts

| 类别 | 关注点 | 备注 |
|---|---|---|
| Parser | decorator placement | target legality pending |
| Transformer | decorator lowering | Not from test262 |
| Binder | scope and sendable state | PR 10632 high risk |
| Checker | decorator function type and target | ArkTS behavior pending |
| CodeGen | decorator call and bytecode | bytecode regression |

## ArkTS Boundary

| 场景 | 预期分类 | 备注 |
|---|---|---|
| decorator target support | Pending | 需确认 ArkTS 支持范围 |
| decorator transform | ArkTS-specific | 编译链看护 |
| test262 mapping | Not applicable | 不是 ES2022 直接覆盖 |

<!-- CLASS_FEATURES_DEEPENING_2026_07_03 -->

## Decorator With Class Features Deepening Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-CLASS-FEATURE-SPEC-0001 | static property + property decorator | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0002 | static method + method decorator | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0003 | static readonly property + property decorator | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0004 | static property target 不应误用 prototype | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0005 | static method target 不应误用 prototype | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0006 | static member decorator 不应破坏 static access | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0007 | static member decorator 不应绕过 static 类型检查 | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0008 | static member decorator 与 class decorator 共存 | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0009 | static member decorator 与 factory 共存 | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0010 | static field initializer 与 decorator 的相对行为待确认 | Static | P0 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0011 | readonly property + property decorator | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0012 | readonly property initializer + decorator | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0013 | readonly property 无 initializer + decorator | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0014 | decorated readonly property 不应绕过 readonly 赋值限制 | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0015 | decorated field initializer 类型仍应检查 | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0016 | decorated field initializer side effect 顺序待确认 | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0017 | decorated field 无 initializer 的默认行为 | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0018 | decorated field 类型推断或显式类型检查 | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0019 | decorated field 与 factory 参数表达式 | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0020 | decorated field 与 transform/lowering | Readonly / Field Initializer | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0021 | public property + decorator | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0022 | private property + decorator boundary | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0023 | protected property + decorator boundary | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0024 | public method + decorator | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0025 | private method + decorator boundary | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0026 | protected method + decorator boundary | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0027 | decorated private/protected member 不应绕过访问控制 | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0028 | visibility 不应影响 target/key 的基本稳定性 | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0029 | private/protected decorator 是否支持需 Pending | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0030 | invalid visibility order 与 decorator 应 fail_compile 或 Pending | Visibility | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0031 | decorated class constructor 类型检查仍应生效 | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0032 | constructor parameter 类型检查仍应生效 | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0033 | constructor body 语义不应被 class decorator 破坏 | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0034 | constructor decorator 如不支持应 fail_compile 或 Pending | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0035 | constructor parameter decorator 如不支持应 fail_compile 或 Pending | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0036 | decorated class 实例化正常 | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0037 | class decorator 不应自动执行 constructor | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0038 | property/method decorator 不应自动执行 constructor | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0039 | field initializer 与 constructor 顺序待确认 | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0040 | transform/lowering 不应改变 constructor binding | Constructor | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0041 | decorated base class | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0042 | decorated derived class | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0043 | decorated derived class extends normal base | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0044 | normal derived class extends decorated base | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0045 | decorated derived class super call | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0046 | decorated method 中 super.method 调用 | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0047 | decorated override method 与 super.method | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0048 | property decorator 与 inheritance | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0049 | method decorator 与 inheritance | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0050 | class decorator 不应破坏 prototype chain | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0051 | class decorator 返回值是否影响 inheritance 需 Pending | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0052 | decorated base class static member 继承边界 | Inheritance / Super | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0053 | override method + method decorator | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0054 | decorated override 参数匹配 | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0055 | decorated override 参数不匹配仍应报错 | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0056 | decorated override 返回值匹配 | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0057 | decorated override 返回值不匹配仍应报错 | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0058 | decorated method 不应绕过 override 要求 | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0059 | method decorator 与 override 修饰符顺序待确认 | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0060 | factory decorator 与 override | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0061 | transform/lowering 不应破坏 override checker | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0062 | override boundary 如果 ArkTS 支持差异需 Pending | Override | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0063 | abstract class + class decorator boundary | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0064 | abstract method + method decorator boundary | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0065 | abstract property + property decorator boundary | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0066 | abstract class decorated 后仍不能直接实例化 | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0067 | concrete subclass 实现 decorated abstract method | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0068 | decorated concrete method 实现 abstract method | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0069 | abstract + factory decorator | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0070 | abstract + export/default boundary | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0071 | abstract + transform/lowering boundary | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0072 | unsupported abstract decorator 组合标记 Pending | Abstract | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0073 | generic class + class decorator | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0074 | generic class field + property decorator | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0075 | generic method + method decorator | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0076 | generic type parameter constraint + decorator | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0077 | generic default type parameter + decorator | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0078 | generic instantiation 后 decorated class 正常 | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0079 | generic method 参数类型仍检查 | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0080 | generic method 返回值仍检查 | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0081 | factory 参数引用 generic-related value boundary | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0082 | transform/lowering 不应丢失 generic 语义 | Generic | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0083 | decorated class implements interface | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0084 | decorated class missing interface member 仍报错 | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0085 | decorated method implements interface method | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0086 | decorated property implements interface property | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0087 | class decorator 不应绕过 implements 检查 | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0088 | property/method decorator 不应绕过 implements 检查 | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0089 | interface method decorator 如不支持应 fail_compile | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0090 | interface property decorator 如不支持应 fail_compile | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0091 | exported decorated class implements interface | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0092 | generic interface + decorated class boundary | Implements Interface | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0093 | overloaded method + method decorator boundary | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0094 | decorator 放在 overload signature 还是 implementation 需确认 | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0095 | decorated overload 参数检查仍应生效 | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0096 | decorated overload 返回值检查仍应生效 | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0097 | getter + decorator boundary | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0098 | setter + decorator boundary | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0099 | accessor decorator 是否支持需 Pending | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0100 | property decorator 与 accessor decorator 边界 | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0101 | parameter decorator 是否支持需 Pending | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0102 | unsupported accessor/parameter 场景标记 fail_compile 或 Pending | Method Overload / Accessor / Boundary | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0103 | nested class + decorator boundary | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0104 | local class declaration + decorator boundary | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0105 | class expression + decorator boundary | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0106 | anonymous class + decorator boundary | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0107 | default export anonymous class + decorator boundary | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0108 | decorator 不应破坏 class name binding | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0109 | local scope 中 decorator binding 解析 | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0110 | nested scope 中 decorator binding 解析 | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0111 | unsupported class form 标记 Pending | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0112 | transform/lowering 后 scope 不应错乱 | Nested / Local / Class Expression | P2 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0113 | PR 10632 涉及 property decorator + field + transform | Regression Reference | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0114 | PR 10632 的 sendable-specific 展开归入 07_decorator_with_sendable | Regression Reference | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0115 | PR 10632 的 transform 根因归入 05_decorator_transform | Regression Reference | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
| DECORATOR-CLASS-FEATURE-SPEC-0116 | 本目录仅保留 class field feature integration reference | Regression Reference | P1 | Not from test262；class feature integration 按 ArkTS 支持范围落地 |
