# Spec Points

## Feature

01 Class Decorator

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

<!-- CLASS_DEEPENING_2026_07_03 -->

## Class Decorator Deepening Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-CLASS-SPEC-0001 | class declaration 前使用 class decorator | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0002 | class decorator 可为标识符 | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0003 | class decorator 可为调用表达式 | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0004 | class decorator 可携带参数 | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0005 | class decorator 参数表达式应被正确解析 | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0006 | class decorator target 应为 class constructor / class value 或 ArkTS 等价结构 | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0007 | class decorator 不应破坏 class declaration | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0008 | class decorator 不应破坏 constructor 类型检查 | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0009 | class decorator 不应破坏 class members 类型检查 | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0010 | class decorator 不应绕过 checker | Basic Class Decorator | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0011 | class decorator 接收 class 本体作为 target | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0012 | target 应能区分不同 class | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0013 | target 不应为 class instance | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0014 | target 不应为 prototype | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0015 | target 不应丢失 constructor | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0016 | target 不应错配到其他 class | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0017 | 多 class decorators 下 target 应一致 | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0018 | exported class target 应正确 | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0019 | default export class target 应正确 | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0020 | class decorator 与 class name binding 的关系待确认 | Class Target / Constructor Value | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0021 | class decorator factory 无参 | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0022 | class decorator factory 单参数 | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0023 | class decorator factory 多参数 | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0024 | factory 参数为 string literal | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0025 | factory 参数为 number literal | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0026 | factory 参数为 boolean literal | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0027 | factory 参数为 arrow function | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0028 | factory 参数为 normal function | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0029 | factory 参数为 IIFE | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0030 | factory 参数为 imported binding | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0031 | factory 返回 class decorator function | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0032 | factory 返回闭包 class decorator function | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0033 | factory 返回非函数时行为待确认 | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0034 | factory 抛异常时行为待确认 | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0035 | factory 求值顺序应稳定 | Decorator Factory | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0036 | `@dec class A` 基础形式 | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0037 | `@dec export class A` 是否支持需确认 | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0038 | `export @dec class A` 是否支持需确认 | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0039 | `@dec export default class A` 是否支持需确认 | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0040 | `export default @dec class A` 是否支持需确认 | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0041 | export class + class decorator | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0042 | default export class + class decorator | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0043 | class decorator 不应破坏 export binding | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0044 | imported decorated class 应可正常使用 | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0045 | default exported decorated class 的 class name binding 待确认 | Export / Default Export | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0046 | decorated class 构造函数参数仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0047 | decorated class constructor 返回规则仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0048 | decorated class instance members 类型仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0049 | decorated class static members 类型仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0050 | decorated class method 参数类型仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0051 | decorated class method 返回值类型仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0052 | decorated class field initializer 类型仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0053 | decorated class implements interface 仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0054 | decorated class extends base class 仍应检查 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0055 | class decorator 不应改变 class 静态类型，除非 ArkTS 明确支持返回替换类 | Class Type System | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0056 | decorated base class | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0057 | decorated derived class | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0058 | decorated class extends normal base | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0059 | normal class extends decorated base | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0060 | decorated class implements interface | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0061 | decorated derived class override method | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0062 | decorated class super call | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0063 | class decorator 不应破坏 inheritance | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0064 | class decorator 不应破坏 super | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0065 | class decorator 不应绕过 implements 检查 | Inheritance / Implements | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0066 | abstract class + class decorator 如支持需确认 | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0067 | generic class + class decorator | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0068 | generic type parameter 约束 + class decorator | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0069 | generic default type parameter + class decorator | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0070 | class expression + decorator 支持情况待确认 | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0071 | anonymous default export class + decorator boundary | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0072 | local class declaration + decorator boundary | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0073 | nested class + decorator boundary | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0074 | decorator 与 final/sealed 类似特性如存在则 Pending | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0075 | unsupported class form 标记 Pending | Abstract / Generic / Boundary | P2 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0076 | class decorator 返回 void | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0077 | class decorator 返回原 class | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0078 | class decorator 返回新 class / subclass 支持情况待确认 | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0079 | class decorator 返回非 class value 的行为待确认 | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0080 | class decorator 返回 null/undefined 行为待确认 | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0081 | class decorator 返回 number/string/object 行为待确认 | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0082 | class decorator 替换 class 后 constructor 行为待确认 | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0083 | class decorator 替换 class 后 instance type 行为待确认 | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0084 | class decorator 返回值 checker/runtime 阶段待确认 | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0085 | 不确定返回值行为放 Pending/Boundary | Return Value Behavior | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0086 | class decorator 可能在 class 定义之后调用 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0087 | lowering 后 decorator 调用目标应为 class | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0088 | lowering 后 export binding 应正确 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0089 | lowering 后 default export binding 应正确 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0090 | lowering 后 factory 参数作用域应正确 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0091 | lowering 后 imported binding 仍应正确 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0092 | lowering 后不应重复调用 decorator | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0093 | lowering 后不应遗漏 decorator | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0094 | lowering 后不应污染 AST 节点状态 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0095 | lowering 后不应污染 binder 上下文 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0096 | lowering 后 codegen 应使用正确上下文 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0097 | class decorator 是否存在类似 PR10632 的 context pollution 风险需记录 | Transform / Lowering | P0 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0098 | class decorator 从模块 import | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0099 | class decorator factory 从模块 import | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0100 | class decorator 参数引用 module import | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0101 | class decorator 参数函数捕获 import binding | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0102 | lowering 后 import binding 仍正确 | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0103 | export decorated class 后被其他模块 import | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0104 | default export decorated class 后被其他模块 import | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0105 | circular import boundary | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0106 | module initialization order boundary | Module Scope | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0107 | decorator 名称未定义 | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0108 | decorator 表达式类型错误 | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0109 | decorator 放在不支持的位置 | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0110 | decorator 放在 interface 上如不支持 | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0111 | decorator 放在 enum 上如不支持 | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0112 | decorator 放在 type alias 上 | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0113 | decorator 放在 object literal 上 | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0114 | factory 返回 invalid value | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0115 | decorator expression throw | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0116 | unsupported class decorator target 标记 Pending | Negative and Boundary | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0117 | PR 10632 不是 class decorator bug | Regression Reference | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0118 | class decorator 是否存在类似 transform/binder context pollution 风险需要记录 open question | Regression Reference | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0119 | transform 相关风险归入 05_decorator_transform | Regression Reference | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
| DECORATOR-CLASS-SPEC-0120 | sendable-specific 展开归入 07_decorator_with_sendable | Regression Reference | P1 | Not from test262；按 ArkTS decorator 支持情况落地 |
