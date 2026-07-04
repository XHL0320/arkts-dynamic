# Spec Points

## Feature

02 Property Decorator

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

<!-- PROPERTY_DEEPENING_2026_07_03 -->

# Spec Points

## Feature

Property Decorator

## Baseline

ArkTS-specific / TS-compatible / Mixed

## Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-PROPERTY-SPEC-0001 | instance field 前使用 property decorator | Basic Property Decorator | P0 | 基础能力 |
| DECORATOR-PROPERTY-SPEC-0002 | static field 前使用 property decorator | Basic Property Decorator | P0 | static target |
| DECORATOR-PROPERTY-SPEC-0003 | property decorator 可为标识符 | Basic Property Decorator | P0 | identifier form |
| DECORATOR-PROPERTY-SPEC-0004 | property decorator 可为调用表达式 | Basic Property Decorator | P0 | factory form |
| DECORATOR-PROPERTY-SPEC-0005 | property decorator 可携带参数 | Basic Property Decorator | P1 | 参数表达式 |
| DECORATOR-PROPERTY-SPEC-0006 | property decorator 参数表达式应被正确解析 | Basic Property Decorator | P1 | parser/checker |
| DECORATOR-PROPERTY-SPEC-0007 | property decorator 不应破坏字段声明 | Basic Property Decorator | P0 | field declaration |
| DECORATOR-PROPERTY-SPEC-0008 | property decorator 不应破坏字段类型检查 | Basic Property Decorator | P0 | checker |
| DECORATOR-PROPERTY-SPEC-0009 | property decorator 不应改变字段的声明类型 | Basic Property Decorator | P0 | type stability |
| DECORATOR-PROPERTY-SPEC-0010 | property decorator 不应绕过 checker | Basic Property Decorator | P0 | negative still fails |
| DECORATOR-PROPERTY-SPEC-0011 | instance property decorator target 应与 prototype 或等价结构相关 | Target and Property Key | P0 | target |
| DECORATOR-PROPERTY-SPEC-0012 | static property decorator target 应与 class constructor 或等价结构相关 | Target and Property Key | P0 | target |
| DECORATOR-PROPERTY-SPEC-0013 | property key 应正确传递 | Target and Property Key | P0 | key |
| DECORATOR-PROPERTY-SPEC-0014 | string property key 应正确 | Target and Property Key | P0 | string key |
| DECORATOR-PROPERTY-SPEC-0015 | numeric-like property key 应按 ArkTS 规则处理 | Target and Property Key | P1 | numeric-like key |
| DECORATOR-PROPERTY-SPEC-0016 | computed property key 如支持需记录 Pending/Boundary | Target and Property Key | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0017 | symbol property key 如支持需记录 Pending/Boundary | Target and Property Key | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0018 | target 与 key 参数不应因 transform 错乱 | Target and Property Key | P0 | transform relation |
| DECORATOR-PROPERTY-SPEC-0019 | 多 property decorator 下 target/key 应分别正确 | Target and Property Key | P1 | multiple fields |
| DECORATOR-PROPERTY-SPEC-0020 | key 不应错配到其他字段 | Target and Property Key | P0 | key isolation |
| DECORATOR-PROPERTY-SPEC-0021 | number field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0022 | string field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0023 | boolean field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0024 | bigint field + property decorator 如支持 | Field Type and Initializer | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0025 | object field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0026 | class type field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0027 | interface type field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0028 | array field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0029 | enum field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0030 | generic T field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0031 | nullable field + property decorator | Field Type and Initializer | P1 | field type |
| DECORATOR-PROPERTY-SPEC-0032 | field initializer 与 decorator 共存 | Field Type and Initializer | P0 | initializer |
| DECORATOR-PROPERTY-SPEC-0033 | 无 initializer 字段与 decorator 共存 | Field Type and Initializer | P1 | initializer |
| DECORATOR-PROPERTY-SPEC-0034 | initializer 求值不应被 decorator transform 破坏 | Field Type and Initializer | P0 | transform relation |
| DECORATOR-PROPERTY-SPEC-0035 | field type mismatch + decorator 应仍然报错 | Field Type and Initializer | P0 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0036 | initializer mismatch + decorator 应仍然报错 | Field Type and Initializer | P0 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0037 | static field + property decorator | Static / Readonly / Visibility | P0 | static |
| DECORATOR-PROPERTY-SPEC-0038 | readonly field + property decorator | Static / Readonly / Visibility | P1 | readonly |
| DECORATOR-PROPERTY-SPEC-0039 | static readonly field + property decorator | Static / Readonly / Visibility | P1 | static readonly |
| DECORATOR-PROPERTY-SPEC-0040 | public field + property decorator | Static / Readonly / Visibility | P1 | visibility |
| DECORATOR-PROPERTY-SPEC-0041 | private field + property decorator 如支持情况待确认 | Static / Readonly / Visibility | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0042 | protected field + property decorator 如支持情况待确认 | Static / Readonly / Visibility | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0043 | visibility 不应影响 decorator target 计算 | Static / Readonly / Visibility | P1 | target |
| DECORATOR-PROPERTY-SPEC-0044 | decorator 不应绕过 private/protected 访问规则 | Static / Readonly / Visibility | P1 | checker |
| DECORATOR-PROPERTY-SPEC-0045 | static field target 不应误用 prototype | Static / Readonly / Visibility | P0 | target |
| DECORATOR-PROPERTY-SPEC-0046 | instance field target 不应误用 constructor | Static / Readonly / Visibility | P0 | target |
| DECORATOR-PROPERTY-SPEC-0047 | property decorator factory 无参 | Decorator Factory | P1 | factory |
| DECORATOR-PROPERTY-SPEC-0048 | property decorator factory 单参数 | Decorator Factory | P1 | factory |
| DECORATOR-PROPERTY-SPEC-0049 | property decorator factory 多参数 | Decorator Factory | P1 | factory |
| DECORATOR-PROPERTY-SPEC-0050 | 参数为 string literal | Decorator Factory | P1 | argument |
| DECORATOR-PROPERTY-SPEC-0051 | 参数为 number literal | Decorator Factory | P1 | argument |
| DECORATOR-PROPERTY-SPEC-0052 | 参数为 boolean literal | Decorator Factory | P1 | argument |
| DECORATOR-PROPERTY-SPEC-0053 | 参数为 arrow function | Decorator Factory | P1 | argument function |
| DECORATOR-PROPERTY-SPEC-0054 | 参数为 normal function | Decorator Factory | P1 | argument function |
| DECORATOR-PROPERTY-SPEC-0055 | 参数为 IIFE | Decorator Factory | P1 | argument expression |
| DECORATOR-PROPERTY-SPEC-0056 | 参数为 imported binding | Decorator Factory | P1 | module |
| DECORATOR-PROPERTY-SPEC-0057 | 参数为 enum value | Decorator Factory | P1 | argument |
| DECORATOR-PROPERTY-SPEC-0058 | 参数为 class static value | Decorator Factory | P1 | argument |
| DECORATOR-PROPERTY-SPEC-0059 | factory 返回 decorator function | Decorator Factory | P1 | return function |
| DECORATOR-PROPERTY-SPEC-0060 | factory 返回闭包 decorator function | Decorator Factory | P1 | closure |
| DECORATOR-PROPERTY-SPEC-0061 | factory 返回非函数时行为待确认 | Decorator Factory | P2 | Pending runtime semantics |
| DECORATOR-PROPERTY-SPEC-0062 | factory 抛异常时行为待确认 | Decorator Factory | P2 | Pending runtime semantics |
| DECORATOR-PROPERTY-SPEC-0063 | factory 求值顺序应稳定 | Decorator Factory | P1 | execution order |
| DECORATOR-PROPERTY-SPEC-0064 | property decorator 可能被 lowering 到 class 外部 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0065 | lowering 后 decorator 调用应在 class 定义之后 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0066 | lowering 后 target/key 参数应正确 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0067 | lowering 后 field initializer 仍应正确 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0068 | lowering 后 decorator 参数函数作用域应正确 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0069 | lowering 后 decorator 参数 IIFE 应按普通表达式处理 | Transform / Lowering | P1 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0070 | lowering 后 imported binding 仍应正确 | Transform / Lowering | P1 | Related: 09_decorator_module_scope |
| DECORATOR-PROPERTY-SPEC-0071 | lowering 后不应重复调用 decorator | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0072 | lowering 后不应遗漏 decorator | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0073 | lowering 后不应污染 AST 节点状态 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0074 | lowering 后不应污染 binder 上下文 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0075 | lowering 后 codegen 应使用正确上下文 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-PROPERTY-SPEC-0076 | property decorator 从模块 import | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-PROPERTY-SPEC-0077 | property decorator factory 从模块 import | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-PROPERTY-SPEC-0078 | property decorator 参数引用 module import | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-PROPERTY-SPEC-0079 | property decorator 参数函数捕获 import binding | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-PROPERTY-SPEC-0080 | lowering 后 import binding 仍正确 | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-PROPERTY-SPEC-0081 | export class + property decorator | Module Scope | P1 | module |
| DECORATOR-PROPERTY-SPEC-0082 | default export class + property decorator 如支持 | Module Scope | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0083 | re-export decorator boundary | Module Scope | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0084 | circular import boundary | Module Scope | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0085 | module initialization order boundary | Module Scope | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0086 | decorator 名称未定义 | Negative and Boundary | P0 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0087 | decorator 表达式类型错误 | Negative and Boundary | P0 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0088 | decorator 放在不支持的位置 | Negative and Boundary | P0 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0089 | decorator 放在 local variable | Negative and Boundary | P1 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0090 | decorator 放在 interface field | Negative and Boundary | P1 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0091 | decorator 放在 type alias | Negative and Boundary | P1 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0092 | decorator 放在 enum member | Negative and Boundary | P1 | fail_compile |
| DECORATOR-PROPERTY-SPEC-0093 | factory 返回 invalid value | Negative and Boundary | P2 | boundary |
| DECORATOR-PROPERTY-SPEC-0094 | decorator expression throw | Negative and Boundary | P2 | boundary |
| DECORATOR-PROPERTY-SPEC-0095 | unsupported property key 标记 Pending | Negative and Boundary | P2 | Pending |
| DECORATOR-PROPERTY-SPEC-0096 | PR 10632 原始形态属于 P0 regression | Regression Reference | P0 | PR 10632 |
| DECORATOR-PROPERTY-SPEC-0097 | property decorator 参数 arrow function 是 PR 10632 相关风险 | Regression Reference | P0 | PR 10632 |
| DECORATOR-PROPERTY-SPEC-0098 | property decorator transform 后 AST 状态污染是 PR 10632 相关风险 | Regression Reference | P0 | PR 10632 |
| DECORATOR-PROPERTY-SPEC-0099 | sendable class 具体组合放入 07_decorator_with_sendable，本目录只做引用 | Regression Reference | P1 | Related: 07_decorator_with_sendable |
