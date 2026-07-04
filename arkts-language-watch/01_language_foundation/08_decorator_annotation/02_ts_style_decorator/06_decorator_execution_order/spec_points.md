# Spec Points

## Feature

06 Decorator Execution Order

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

<!-- EXECUTION_ORDER_DEEPENING_2026_07_03 -->

## Execution Order Deepening Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-ORDER-SPEC-0001 | decorator expression 先求值 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0002 | decorator function 后调用 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0003 | decorator factory call 与 returned decorator function 调用需要区分 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0004 | decorator 参数表达式先于 decorator function 调用 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0005 | decorator side effect 执行次数应稳定 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0006 | decorator 不应重复求值 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0007 | decorator 不应重复调用 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0008 | decorator 不应遗漏调用 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0009 | syntax accepted 但 semantic invalid 的执行顺序不应发生 | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0010 | 抛异常时后续顺序需记录 boundary | Single Decorator Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0011 | 同一 class 上多个 decorators 的求值顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0012 | 同一 class 上多个 decorators 的调用顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0013 | 同一 property 上多个 decorators 的求值顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0014 | 同一 property 上多个 decorators 的调用顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0015 | 同一 method 上多个 decorators 的求值顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0016 | 同一 method 上多个 decorators 的调用顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0017 | identifier decorator 与 factory decorator 混合顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0018 | 多 factory 参数求值顺序 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0019 | 多 decorators 中某个抛异常后的行为 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0020 | 多 decorators 返回值组合行为待确认 | Multiple Decorators On Same Target | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0021 | class decorator 与 property decorator 的相对顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0022 | class decorator 与 method decorator 的相对顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0023 | property decorator 与 method decorator 的相对顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0024 | static property decorator 与 instance property decorator 的相对顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0025 | static method decorator 与 instance method decorator 的相对顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0026 | 同一 class 中多个 property decorators 的顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0027 | 同一 class 中多个 method decorators 的顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0028 | class member 声明顺序是否影响 decorator 顺序 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0029 | inheritance 中 base/derived decorator 顺序待确认 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0030 | export/default export 与 decorator 顺序待确认 | Cross Target Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0031 | factory call 求值先于 returned decorator function 调用 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0032 | factory 参数从左到右求值，如 ArkTS 语义确认 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0033 | 多参数 factory 求值顺序 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0034 | nested factory call 求值顺序 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0035 | factory 参数 IIFE 执行顺序 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0036 | factory 参数 arrow function 不应被立即执行 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0037 | factory 参数 normal function 不应被立即执行 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0038 | factory 内部副作用执行次数 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0039 | returned decorator function 调用次数 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0040 | factory 返回非函数时后续顺序待确认 | Factory Evaluation Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0041 | class decorator 与 class declaration evaluation 的相对顺序 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0042 | property decorator 与 field initializer 的相对顺序 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0043 | static property decorator 与 static field initializer 的相对顺序 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0044 | method decorator 与 method body execution 的相对顺序 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0045 | decorator 不应触发 method body 执行 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0046 | decorator 不应触发 instance field initializer 执行 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0047 | static initializer / static block 如支持需记录 boundary | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0048 | constructor execution 与 decorator execution 的顺序 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0049 | class decorator 返回值与 class binding 的顺序 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0050 | decorator side effect 与 class binding 可见性的关系待确认 | Class Evaluation Interaction | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0051 | imported decorator module 先初始化 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0052 | imported factory module 先初始化 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0053 | decorator 参数引用 imported binding 时 module initialization 顺序 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0054 | decorator side effect 与 module top-level side effect 顺序 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0055 | export decorated class 的 module evaluation 顺序 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0056 | default export decorated class 的 module evaluation 顺序 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0057 | circular import boundary | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0058 | re-export decorator boundary | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0059 | transform/lowering 后 module binding 顺序不应改变 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0060 | moduleVar 场景作为 PR 10632 syntax/reference 之一 | Module Scope Order | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0061 | decorator 被 lowering 到 class 外后顺序仍应保持 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0062 | class definition 与 decorator call 的顺序应稳定 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0063 | property decorator call 顺序应稳定 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0064 | method decorator call 顺序应稳定 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0065 | class decorator call 顺序应稳定 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0066 | factory call 与 decorator function call 不应错位 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0067 | lowering 后不应重复调用 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0068 | lowering 后不应遗漏调用 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0069 | lowering 后 AST 节点状态不应影响顺序 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0070 | lowering 后 codegen 顺序应符合设计 | Transform / Lowering Order | P0 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0071 | decorator factory 抛异常 | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0072 | decorator function 抛异常 | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0073 | decorator 参数表达式抛异常 | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0074 | 多 decorators 中第一个抛异常 | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0075 | 多 decorators 中后一个抛异常 | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0076 | factory 返回非法值 | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0077 | decorator expression unresolved | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0078 | non-callable decorator | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0079 | unsupported target 不应执行 decorator | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0080 | parser/checker 阶段失败不应产生运行时顺序 | Negative / Boundary | P2 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0081 | PR 10632 中 decorator transform 外提说明 lowering 顺序需要看护 | Regression Reference | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0082 | PR 10632 核心不是 execution order，而是 transform/sendable/codegen | Regression Reference | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0083 | transform 相关风险归入 05_decorator_transform | Regression Reference | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
| DECORATOR-ORDER-SPEC-0084 | sendable-specific 展开归入 07_decorator_with_sendable | Regression Reference | P1 | Not from test262；顺序行为需通过 ArkTS compiler/XTS smoke 确认 |
