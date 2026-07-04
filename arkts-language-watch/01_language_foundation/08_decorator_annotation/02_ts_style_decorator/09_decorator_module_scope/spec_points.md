# Spec Points

## Feature

09 Decorator Module Scope

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

<!-- MODULE_SCOPE_DEEPENING_2026_07_03 -->

## Decorator Module Scope Deepening Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-MODULE-SPEC-0001 | class decorator function 从模块 import | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0002 | property decorator function 从模块 import | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0003 | method decorator function 从模块 import | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0004 | default imported decorator | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0005 | namespace imported decorator 如支持 | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0006 | renamed import decorator | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0007 | re-exported decorator boundary | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0008 | unresolved imported decorator 应报错 | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0009 | imported decorator 非函数时行为待确认 | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0010 | imported decorator 不应破坏 target/key/descriptor | Imported Decorator Function | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0011 | class decorator factory 从模块 import | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0012 | property decorator factory 从模块 import | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0013 | method decorator factory 从模块 import | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0014 | default imported factory | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0015 | namespace imported factory 如支持 | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0016 | renamed import factory | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0017 | re-exported factory boundary | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0018 | imported factory 参数应正确求值 | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0019 | imported factory 返回 decorator function | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0020 | imported factory 返回闭包 decorator function | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0021 | imported factory 非函数应报错或 boundary | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0022 | imported factory 抛异常 boundary | Imported Decorator Factory | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0023 | decorator 参数引用 imported number | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0024 | decorator 参数引用 imported string | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0025 | decorator 参数引用 imported boolean | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0026 | decorator 参数引用 imported enum | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0027 | decorator 参数引用 imported class | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0028 | decorator 参数引用 imported function | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0029 | decorator 参数引用 imported const | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0030 | decorator 参数引用 imported let 如支持 | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0031 | decorator 参数引用 default import | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0032 | decorator 参数引用 namespace import | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0033 | decorator 参数函数捕获 imported binding | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0034 | decorator 参数 IIFE 读取 imported binding | Decorator Parameter Imported Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0035 | imported factory 捕获其定义模块变量 | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0036 | local factory 捕获 imported binding | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0037 | factory 返回 decorator function 捕获 imported binding | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0038 | factory 返回 decorator function 捕获 local module binding | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0039 | factory 参数函数捕获 imported binding | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0040 | factory 参数 IIFE 捕获 imported binding | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0041 | closure 不应因 transform/lowering 丢失 binding | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0042 | lowering 后 class 外 decorator 调用仍可访问 module binding | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0043 | module binding 不应错绑到其他模块 | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0044 | 多个 modules 中同名 binding 不应混淆 | Factory Closure And Module Binding | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0045 | export class + class decorator | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0046 | export class + property decorator | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0047 | export class + method decorator | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0048 | default export class + class decorator | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0049 | default export class + property decorator | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0050 | default export class + method decorator | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0051 | decorated class 被其他模块 import | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0052 | decorated default class 被其他模块 import | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0053 | decorated class export binding 不应被 decorator 破坏 | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0054 | decorated class static member export 后仍可访问 | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0055 | decorated class instance member export 后仍可访问 | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0056 | export order 与 decorator side effect 待确认 | Export Decorated Class | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0057 | decorator 定义模块初始化先于使用模块 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0058 | factory 定义模块初始化先于使用模块 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0059 | decorator 参数 imported binding 所在模块初始化顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0060 | imported decorator side effect 顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0061 | imported factory side effect 顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0062 | decorated module top-level side effect 顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0063 | decorator application side effect 顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0064 | export decorated class 时 module evaluation 顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0065 | default export decorated class 时 module evaluation 顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0066 | multiple decorated classes 的 module-level 顺序 | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0067 | circular import boundary | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0068 | re-export boundary | Module Initialization Order | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0069 | lowering 后 imported decorator binding 仍正确 | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0070 | lowering 后 imported factory binding 仍正确 | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0071 | lowering 后 decorator 参数 imported binding 仍正确 | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0072 | lowering 后 decorator 参数函数捕获 import 仍正确 | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0073 | lowering 后 decorator 参数 IIFE 捕获 import 仍正确 | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0074 | lowering 后 class 外 decorator 调用作用域正确 | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0075 | lowering 后不应把 imported binding 解析为 local binding | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0076 | lowering 后不应丢失 module namespace | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0077 | lowering 后不应重复初始化 module | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0078 | lowering 后不应改变 module initialization order | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0079 | lowering 后 bytecode/codegen 使用正确 binding | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0080 | PR 10632 moduleVar 形态作为 reference | Transform / Lowering With Module Scope | P0 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0081 | import 不存在的 decorator | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0082 | import 不存在的 factory | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0083 | imported decorator 类型不可调用 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0084 | imported factory 类型不可调用 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0085 | imported factory 返回非法值 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0086 | imported binding 类型不匹配 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0087 | circular import 中 decorator 未初始化 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0088 | re-export decorator 未解析 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0089 | namespace import decorator 不支持时应报错 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0090 | default import decorator 不支持时应报错 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0091 | decorator 参数引用未导出的 binding | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0092 | module path 错误 | Negative / Boundary | P2 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0093 | PR 10632 使用 import moduleVar | Regression Reference | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0094 | PR 10632 中 decorator 参数函数捕获 imported binding | Regression Reference | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0095 | PR 10632 中 transform/lowering 后 class 外 decorator 调用仍需正确解析 module binding | Regression Reference | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0096 | PR 10632 核心不是 module scope bug，而是 transform/sendable/codegen | Regression Reference | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
| DECORATOR-MODULE-SPEC-0097 | sendable-specific 展开归入 07_decorator_with_sendable | Regression Reference | P1 | Not from test262；需通过 ArkTS multi-file/compiler expected 设计落地 |
