# Spec Points

## Feature

04 Decorator Factory

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

<!-- FACTORY_DEEPENING_2026_07_03 -->

# Spec Points

## Feature

Decorator Factory

## Baseline

ArkTS-specific / TS-compatible / Mixed

## Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-FACTORY-SPEC-0001 | decorator factory 是一个调用表达式 | Factory Basic | P0 | factory call expression |
| DECORATOR-FACTORY-SPEC-0002 | factory 调用结果作为实际 decorator function | Factory Basic | P0 | returned decorator |
| DECORATOR-FACTORY-SPEC-0003 | factory 无参调用 | Factory Basic | P0 | basic |
| DECORATOR-FACTORY-SPEC-0004 | factory 单参调用 | Factory Basic | P0 | basic |
| DECORATOR-FACTORY-SPEC-0005 | factory 多参调用 | Factory Basic | P0 | basic |
| DECORATOR-FACTORY-SPEC-0006 | factory 参数表达式应被正确解析 | Factory Basic | P1 | parser/checker |
| DECORATOR-FACTORY-SPEC-0007 | factory 不应破坏 decorator target | Factory Basic | P0 | target stability |
| DECORATOR-FACTORY-SPEC-0008 | factory 不应破坏 decorated declaration | Factory Basic | P0 | declaration stability |
| DECORATOR-FACTORY-SPEC-0009 | factory 返回值行为需要按 ArkTS 实现确认 | Factory Basic | P2 | Pending runtime semantics |
| DECORATOR-FACTORY-SPEC-0010 | factory 与普通 decorator 标识符形式应区分 | Factory Basic | P1 | identifier contrast |
| DECORATOR-FACTORY-SPEC-0011 | 参数为 string literal | Factory Parameter Types | P1 | argument |
| DECORATOR-FACTORY-SPEC-0012 | 参数为 number literal | Factory Parameter Types | P1 | argument |
| DECORATOR-FACTORY-SPEC-0013 | 参数为 boolean literal | Factory Parameter Types | P1 | argument |
| DECORATOR-FACTORY-SPEC-0014 | 参数为 bigint literal，如支持 | Factory Parameter Types | P2 | Pending |
| DECORATOR-FACTORY-SPEC-0015 | 参数为 enum value | Factory Parameter Types | P1 | argument |
| DECORATOR-FACTORY-SPEC-0016 | 参数为 class static value | Factory Parameter Types | P1 | argument |
| DECORATOR-FACTORY-SPEC-0017 | 参数为 local const | Factory Parameter Types | P1 | scope |
| DECORATOR-FACTORY-SPEC-0018 | 参数为 imported binding | Factory Parameter Types | P1 | Related: 09_decorator_module_scope |
| DECORATOR-FACTORY-SPEC-0019 | 参数为 arrow function | Factory Parameter Types | P1 | function expression |
| DECORATOR-FACTORY-SPEC-0020 | 参数为 normal function | Factory Parameter Types | P1 | function expression |
| DECORATOR-FACTORY-SPEC-0021 | 参数为 IIFE | Factory Parameter Types | P1 | expression |
| DECORATOR-FACTORY-SPEC-0022 | 参数为 array/object literal，如支持情况待确认 | Factory Parameter Types | P2 | Pending |
| DECORATOR-FACTORY-SPEC-0023 | 参数为 nested call expression | Factory Parameter Types | P1 | expression |
| DECORATOR-FACTORY-SPEC-0024 | 参数为 conditional expression，如支持情况待确认 | Factory Parameter Types | P2 | Pending |
| DECORATOR-FACTORY-SPEC-0025 | factory 返回 decorator function | Return Value | P0 | valid return |
| DECORATOR-FACTORY-SPEC-0026 | factory 返回闭包 decorator function | Return Value | P1 | closure |
| DECORATOR-FACTORY-SPEC-0027 | factory 返回带状态的 decorator function | Return Value | P1 | stateful closure |
| DECORATOR-FACTORY-SPEC-0028 | factory 返回非函数时行为待确认 | Return Value | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0029 | factory 返回 null/undefined 时行为待确认 | Return Value | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0030 | factory 返回 number/string/object 时行为待确认 | Return Value | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0031 | factory 抛异常时行为待确认 | Return Value | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0032 | returned decorator function 参数应与 target 类型匹配 | Return Value | P1 | checker |
| DECORATOR-FACTORY-SPEC-0033 | returned decorator function 被调用时机应稳定 | Return Value | P1 | call timing |
| DECORATOR-FACTORY-SPEC-0034 | returned decorator function 不应被重复调用 | Return Value | P0 | call count |
| DECORATOR-FACTORY-SPEC-0035 | factory 参数按源码顺序求值 | Evaluation Order | P1 | order |
| DECORATOR-FACTORY-SPEC-0036 | 多参数 factory 求值顺序 | Evaluation Order | P1 | order |
| DECORATOR-FACTORY-SPEC-0037 | 多个 decorator factories 的求值顺序 | Evaluation Order | P1 | order |
| DECORATOR-FACTORY-SPEC-0038 | factory 求值与 decorator function 调用需要区分 | Evaluation Order | P0 | evaluation vs application |
| DECORATOR-FACTORY-SPEC-0039 | factory 求值先于实际 decorator 应用 | Evaluation Order | P0 | order |
| DECORATOR-FACTORY-SPEC-0040 | factory 中副作用执行次数应正确 | Evaluation Order | P1 | side effect count |
| DECORATOR-FACTORY-SPEC-0041 | factory 参数 IIFE 执行次数应正确 | Evaluation Order | P1 | IIFE count |
| DECORATOR-FACTORY-SPEC-0042 | factory 参数函数表达式不应被提前执行 | Evaluation Order | P1 | function expression |
| DECORATOR-FACTORY-SPEC-0043 | factory 与 field initializer 的相对顺序待确认 | Evaluation Order | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0044 | factory 与 class evaluation 的相对顺序待确认 | Evaluation Order | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0045 | factory + property decorator | Combination With Targets | P0 | Related: 02_property_decorator |
| DECORATOR-FACTORY-SPEC-0046 | factory + static property decorator | Combination With Targets | P0 | Related: 02_property_decorator |
| DECORATOR-FACTORY-SPEC-0047 | factory + method decorator | Combination With Targets | P1 | method target |
| DECORATOR-FACTORY-SPEC-0048 | factory + static method decorator | Combination With Targets | P1 | method target |
| DECORATOR-FACTORY-SPEC-0049 | factory + class decorator | Combination With Targets | P1 | class target |
| DECORATOR-FACTORY-SPEC-0050 | factory + export class | Combination With Targets | P1 | module |
| DECORATOR-FACTORY-SPEC-0051 | factory + default export class | Combination With Targets | P2 | Pending |
| DECORATOR-FACTORY-SPEC-0052 | factory + readonly/static/visibility | Combination With Targets | P1 | class feature |
| DECORATOR-FACTORY-SPEC-0053 | factory + generic class boundary | Combination With Targets | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0054 | factory + abstract class boundary | Combination With Targets | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0055 | factory call 可能被 lowering 到 class 外部 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-FACTORY-SPEC-0056 | factory 参数表达式 lowering 后作用域应正确 | Transform / Lowering | P0 | scope |
| DECORATOR-FACTORY-SPEC-0057 | factory 返回的 decorator function 调用应正确 | Transform / Lowering | P0 | call |
| DECORATOR-FACTORY-SPEC-0058 | factory 与 actual decorator call 不应错位 | Transform / Lowering | P0 | call alignment |
| DECORATOR-FACTORY-SPEC-0059 | factory 不应重复调用 | Transform / Lowering | P0 | call count |
| DECORATOR-FACTORY-SPEC-0060 | factory 不应遗漏调用 | Transform / Lowering | P0 | call count |
| DECORATOR-FACTORY-SPEC-0061 | factory 参数中的 function 不应错误继承 class 上下文 | Transform / Lowering | P0 | AST/binder risk |
| DECORATOR-FACTORY-SPEC-0062 | factory 参数中的 IIFE 应按普通表达式处理 | Transform / Lowering | P0 | PR 10632 reference |
| DECORATOR-FACTORY-SPEC-0063 | factory 参数引用 import binding 时 lowering 后仍正确 | Transform / Lowering | P1 | Related: 09_decorator_module_scope |
| DECORATOR-FACTORY-SPEC-0064 | transform 后 AST 状态不应污染 factory 参数函数 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-FACTORY-SPEC-0065 | factory 从其他模块 import | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-FACTORY-SPEC-0066 | factory 参数引用 module import | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-FACTORY-SPEC-0067 | factory 返回的 decorator function 捕获 module binding | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-FACTORY-SPEC-0068 | factory 与 re-export boundary | Module Scope | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0069 | factory 与 circular import boundary | Module Scope | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0070 | factory lowering 后 import binding 仍正确 | Module Scope | P1 | Related: 09_decorator_module_scope |
| DECORATOR-FACTORY-SPEC-0071 | factory 所在模块初始化顺序待确认 | Module Scope | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0072 | factory 调用副作用与 module evaluation 顺序待确认 | Module Scope | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0073 | factory 未定义 | Negative / Boundary | P0 | fail_compile |
| DECORATOR-FACTORY-SPEC-0074 | factory 不是函数 | Negative / Boundary | P0 | fail_compile |
| DECORATOR-FACTORY-SPEC-0075 | factory 返回非法值 | Negative / Boundary | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0076 | factory 参数类型不符合预期 | Negative / Boundary | P1 | checker |
| DECORATOR-FACTORY-SPEC-0077 | factory 抛异常 | Negative / Boundary | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0078 | factory 放在不支持的 decorator target | Negative / Boundary | P1 | fail_compile |
| DECORATOR-FACTORY-SPEC-0079 | factory 参数为 unsupported expression | Negative / Boundary | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0080 | factory 与 unsupported decorator target | Negative / Boundary | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0081 | factory 与 unsupported property key | Negative / Boundary | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0082 | factory 与 unsupported class expression decorator | Negative / Boundary | P2 | boundary |
| DECORATOR-FACTORY-SPEC-0083 | PR 10632 中 factory 参数为 arrow IIFE | Regression Reference | P0 | PR 10632 |
| DECORATOR-FACTORY-SPEC-0084 | PR 10632 中 factory 参数引用 module import | Regression Reference | P0 | PR 10632 |
| DECORATOR-FACTORY-SPEC-0085 | PR 10632 中 factory 参数函数与 transform/lowering 相关 | Regression Reference | P0 | PR 10632 |
| DECORATOR-FACTORY-SPEC-0086 | sendable-specific 展开归入 07_decorator_with_sendable | Regression Reference | P1 | Related: 07_decorator_with_sendable |
