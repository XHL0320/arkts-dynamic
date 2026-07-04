# Spec Points

## Feature

05 Decorator Transform

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

<!-- TRANSFORM_DEEPENING_2026_07_03 -->

# Spec Points

## Feature

Decorator Transform / Lowering

## Baseline

ArkTS-specific / TS-compatible / Mixed

## Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DTR-SPEC-0001 | property decorator 可被 lowering 到 class 外部 | Transform Position | P0 | PR 10632 根因层 |
| DTR-SPEC-0002 | method decorator 可被 lowering 到 class 外部或 descriptor 处理逻辑中 | Transform Position | P1 | method descriptor 规则待确认 |
| DTR-SPEC-0003 | class decorator 可在 class 定义之后调用 | Transform Position | P1 | class decorator lowering |
| DTR-SPEC-0004 | decorator factory 调用和 decorator function 调用需要区分 | Transform Position | P0 | factory evaluation 与 invocation 分离 |
| DTR-SPEC-0005 | transform 后代码执行位置可能不同于源码位置 | Transform Position | P0 | binder/codegen 不应只看源码位置 |
| DTR-SPEC-0006 | transform 后 decorator 调用不能改变 class 初始化基本语义 | Transform Position | P0 | field initializer 与 class evaluation 边界 |
| DTR-SPEC-0007 | instance property decorator target 应指向 prototype 或等价结构 | Target and Key | P0 | target 参数核心 |
| DTR-SPEC-0008 | static property decorator target 应指向 class constructor 或等价结构 | Target and Key | P0 | static target 高风险 |
| DTR-SPEC-0009 | instance method decorator target 应指向 prototype 或等价结构 | Target and Key | P1 | method target |
| DTR-SPEC-0010 | static method decorator target 应指向 class constructor 或等价结构 | Target and Key | P1 | static method target |
| DTR-SPEC-0011 | property key 应保持 string/symbol 等正确语义 | Target and Key | P0 | key 参数不可丢失 |
| DTR-SPEC-0012 | computed property key 如支持需保持求值顺序 | Target and Key | P2 | Pending target support |
| DTR-SPEC-0013 | private field decorator target 如支持需确认 | Target and Key | P2 | Pending target support |
| DTR-SPEC-0014 | protected field decorator target 如支持需确认 | Target and Key | P2 | Pending target support |
| DTR-SPEC-0015 | decorator factory 先求值 | Decorator Factory Lowering | P1 | evaluation order |
| DTR-SPEC-0016 | factory 返回值作为 decorator function | Decorator Factory Lowering | P0 | 返回函数调用 |
| DTR-SPEC-0017 | factory 参数表达式应按源码顺序求值 | Decorator Factory Lowering | P1 | 参数求值顺序 |
| DTR-SPEC-0018 | 参数中的 arrow function 不应被错误归入 class 上下文 | Decorator Factory Lowering | P0 | 状态污染风险 |
| DTR-SPEC-0019 | 参数中的 normal function 不应被错误归入 class 上下文 | Decorator Factory Lowering | P0 | 状态污染风险 |
| DTR-SPEC-0020 | 参数中的 IIFE 应按普通表达式处理 | Decorator Factory Lowering | P0 | 原始 PR 形态扩展 |
| DTR-SPEC-0021 | 参数引用 import binding 时 transform 后作用域仍正确 | Decorator Factory Lowering | P1 | module scope |
| DTR-SPEC-0022 | factory 返回非函数时行为待确认或 boundary | Decorator Factory Lowering | P2 | Pending runtime semantics |
| DTR-SPEC-0023 | transform 后原始 TS decorator 节点可能仍保留 | AST Node Relationship | P0 | 原始节点保留 |
| DTR-SPEC-0024 | transform 后 JS/lowered 节点可能与原始节点共享指针 | AST Node Relationship | P0 | 浅拷贝风险 |
| DTR-SPEC-0025 | shared pointer 不应导致 binder flag 污染 | AST Node Relationship | P0 | PR 10632 核心 |
| DTR-SPEC-0026 | shared pointer 不应导致 scope 污染 | AST Node Relationship | P0 | scope 状态隔离 |
| DTR-SPEC-0027 | shared pointer 不应导致 type/checker 状态污染 | AST Node Relationship | P1 | checker 状态隔离 |
| DTR-SPEC-0028 | shared pointer 不应导致 codegen 使用旧上下文 | AST Node Relationship | P0 | codegen 风险 |
| DTR-SPEC-0029 | transform 后节点应能覆盖或重算上下文状态 | AST Node Relationship | P0 | 修复策略 |
| DTR-SPEC-0030 | 深拷贝与显式状态重设是两类修复思路 | AST Node Relationship | P1 | 设计评审 |
| DTR-SPEC-0031 | transform 后 class 外 decorator 节点不应继承 class 内上下文 | Binder Context | P0 | 上下文重算 |
| DTR-SPEC-0032 | transform 后 class 外 decorator 节点不应继承 sendable class 上下文 | Binder Context | P0 | inSendable 污染 |
| DTR-SPEC-0033 | transform 后 class 外 decorator 节点不应继承 method/function 局部上下文 | Binder Context | P1 | 局部 scope 风险 |
| DTR-SPEC-0034 | decorator 参数函数应按实际 lowered 位置绑定 | Binder Context | P0 | 函数上下文 |
| DTR-SPEC-0035 | decorator function 本身的 scope 应正确 | Binder Context | P1 | 函数作用域 |
| DTR-SPEC-0036 | decorator 调用外提后变量捕获应正确 | Binder Context | P1 | captured binding |
| DTR-SPEC-0037 | import binding 在 lowered decorator 表达式中应正确解析 | Binder Context | P1 | module binding |
| DTR-SPEC-0038 | property decorator lowering 后应生成正确 decorator 调用 | Codegen / Bytecode | P0 | bytecode expected |
| DTR-SPEC-0039 | method decorator lowering 后应生成正确 descriptor/target 调用 | Codegen / Bytecode | P1 | descriptor 待确认 |
| DTR-SPEC-0040 | class decorator lowering 后应生成正确 class decorator 调用 | Codegen / Bytecode | P1 | class decorator |
| DTR-SPEC-0041 | decorator 调用顺序应与 ArkTS 实现一致 | Codegen / Bytecode | P1 | execution order 关联 |
| DTR-SPEC-0042 | transform 后不应生成错误 sendable 字节码 | Codegen / Bytecode | P0 | PR 10632 |
| DTR-SPEC-0043 | transform 后不应重复生成 decorator 调用 | Codegen / Bytecode | P0 | 重复调用风险 |
| DTR-SPEC-0044 | transform 后不应遗漏 decorator 调用 | Codegen / Bytecode | P0 | 遗漏调用风险 |
| DTR-SPEC-0045 | bytecode expected 是关键测试形式 | Codegen / Bytecode | P0 | 测试策略 |
| DTR-SPEC-0046 | PR 10632 属于 transform/binder/codegen regression | Regression | P0 | 根因归属 |
| DTR-SPEC-0047 | property decorator + sendable 是 P0 | Regression | P0 | 直接触发路径 |
| DTR-SPEC-0048 | decorator 参数 arrow function 是 P0 | Regression | P0 | 状态污染高风险 |
| DTR-SPEC-0049 | decorator 参数 normal function 是 P1 | Regression | P1 | 扩展风险 |
| DTR-SPEC-0050 | 多 decorator 节点状态污染是 P1 | Regression | P1 | 多节点隔离 |
| DTR-SPEC-0051 | static property decorator transform 是 P1 | Regression | P1 | target 与上下文双风险 |
| DTR-SPEC-0052 | module import + decorator transform 是 P1 | Regression | P1 | moduleVar 扩展 |
| DTR-SPEC-0053 | transform 后 binder 状态应可覆盖旧 flag | Binder Context | P0 | 修复策略验证 |
| DTR-SPEC-0054 | transform 后 checker 状态不应复用错误 owner | AST Node Relationship | P1 | 类型状态污染 |
| DTR-SPEC-0055 | decorator expression throw 不应破坏 AST context | Boundary | P2 | Pending runtime semantics |
| DTR-SPEC-0056 | class expression decorator 如支持需单独记录 | Boundary | P2 | Unsupported/Pending |
