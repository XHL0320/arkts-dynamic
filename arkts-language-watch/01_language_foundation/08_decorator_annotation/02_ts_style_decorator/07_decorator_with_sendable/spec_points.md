# Spec Points

## Feature

07 Decorator With Sendable

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

<!-- SENDABLE_DEEPENING_2026_07_03 -->

# Spec Points

## Feature

Decorator With Sendable

## Baseline

ArkTS-specific / TS-compatible / Mixed

## Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DWS-SPEC-0001 | constructor 中 `"use sendable"` 标记 sendable class | Sendable class recognition | P0 | 确认 sendable class 入口识别不被 decorator 逻辑影响 |
| DWS-SPEC-0002 | sendable class 本体仍应按 sendable class 生成 | Sendable class recognition | P0 | PR 10632 修复不能破坏 class 本体 sendable 字节码 |
| DWS-SPEC-0003 | sendable class method body 内函数应保持 sendable 语义 | Sendable class recognition | P0 | 真正位于 sendable class 内的函数不能被误清理 |
| DWS-SPEC-0004 | class 外部 decorator lowering 逻辑不应当成 sendable class 内部逻辑 | Sendable class recognition | P0 | 源码位置与 lowering 后执行位置需要分离处理 |
| DWS-SPEC-0005 | sendable class 与普通 class 应建立 bytecode 对照 | Sendable class recognition | P0 | 用于识别 inSendable 污染 |
| DWS-SPEC-0006 | property decorator 源码位置位于 class property 前 | Property decorator transform | P1 | parser/AST 节点位置应正确 |
| DWS-SPEC-0007 | property decorator transform/lowering 可外提到 class 外部 | Property decorator transform | P0 | 核心风险点 |
| DWS-SPEC-0008 | instance property decorator target 应与 class prototype 相关 | Property decorator transform | P0 | target 不能因 sendable 交叉改变 |
| DWS-SPEC-0009 | static property decorator target 应与 class constructor 相关 | Property decorator transform | P1 | static target 边界需确认 |
| DWS-SPEC-0010 | property key 应正确传递 | Property decorator transform | P0 | 避免 lowering 后 key 丢失或错位 |
| DWS-SPEC-0011 | decorator factory 调用结果应作为实际 decorator function | Property decorator transform | P0 | factory 返回函数是后续调用目标 |
| DWS-SPEC-0012 | decorator expression 的执行位置与源码位置可能不同 | Property decorator transform | P0 | binder/codegen 必须按 lowering 后上下文处理 |
| DWS-SPEC-0013 | decorator 参数中的 arrow function 不应错误继承 sendable class 上下文 | Binder / inSendable | P0 | PR 10632 主路径 |
| DWS-SPEC-0014 | decorator 参数中的 normal function 不应错误继承 sendable class 上下文 | Binder / inSendable | P0 | 覆盖非箭头函数 |
| DWS-SPEC-0015 | decorator factory 返回的 decorator function 不应错误继承 sendable class 上下文 | Binder / inSendable | P0 | 覆盖返回函数 |
| DWS-SPEC-0016 | transform 后 class 外部节点应覆盖旧的 inSendable 状态 | Binder / inSendable | P0 | 修复策略核心 |
| DWS-SPEC-0017 | 原始 AST 节点与转换后节点共享指针时不能污染 codegen | Binder / inSendable | P0 | PR 10632 root cause |
| DWS-SPEC-0018 | 真正位于 sendable method 内的函数不能被误清理 | Binder / inSendable | P0 | 防止过度修复 |
| DWS-SPEC-0019 | 多个 decorators 之间不应互相污染 inSendable 标记 | Binder / inSendable | P0 | 状态隔离风险 |
| DWS-SPEC-0020 | sendable class 本体应生成 sendable class 相关字节码 | Bytecode | P0 | bytecode expected 基线 |
| DWS-SPEC-0021 | class 外 decorator 表达式中的函数不应生成 sendable function 字节码 | Bytecode | P0 | PR 10632 断言点 |
| DWS-SPEC-0022 | decorator 调用应在 class 定义之后正确生成 | Bytecode | P0 | lowering 调用位置 |
| DWS-SPEC-0023 | property decorator 调用不应破坏 class field 初始化 | Bytecode | P1 | field init 与 decorator 交叉 |
| DWS-SPEC-0024 | bytecode expected 测试应作为主要回归形式 | Bytecode | P0 | XTS smoke 只能辅助 |
| DWS-SPEC-0025 | decorator 参数可引用 module import | Module scope | P1 | 覆盖 moduleVar 原始场景 |
| DWS-SPEC-0026 | decorator factory 可从其他模块 import | Module scope | P1 | 跨模块 decorator factory |
| DWS-SPEC-0027 | decorator 参数中的 arrow function 访问 import binding 时不应改变 sendable 标记 | Module scope | P0 | PR 10632 扩展路径 |
| DWS-SPEC-0028 | module initialization order 不应因 decorator lowering 被错误改变 | Module scope | P2 | 运行顺序待确认 |
| DWS-SPEC-0029 | import 变量访问和 sendable 检查应分别处理 | Module scope | P1 | 作用域与 sendable 标记解耦 |
| DWS-SPEC-0030 | class decorator + sendable class 属于 boundary | Boundary | P2 | 支持范围待确认 |
| DWS-SPEC-0031 | method decorator + sendable class 属于 boundary | Boundary | P2 | 可能存在类似 transform/binder 风险 |
| DWS-SPEC-0032 | static property decorator + sendable class 属于高风险 boundary | Boundary | P1 | target 与 inSendable 双重风险 |
| DWS-SPEC-0033 | private property decorator + sendable class 支持情况待确认 | Boundary | P2 | Pending target support |
| DWS-SPEC-0034 | protected property decorator + sendable class 支持情况待确认 | Boundary | P2 | Pending target support |
| DWS-SPEC-0035 | readonly property decorator + sendable class 不应影响 readonly 语义 | Boundary | P2 | class feature integration |
| DWS-SPEC-0036 | generic sendable class + decorator 属于 boundary | Boundary | P2 | 泛型与 sendable 支持需确认 |
| DWS-SPEC-0037 | abstract sendable class + decorator 属于 boundary | Boundary | P2 | abstract + sendable 支持需确认 |
| DWS-SPEC-0038 | decorator execution order + sendable class 属于 boundary | Boundary | P2 | 顺序待确认 |
| DWS-SPEC-0039 | nested decorators / multiple decorators 需要状态隔离 | Boundary | P1 | 避免多节点共享状态污染 |
| DWS-SPEC-0040 | unsupported decorator target 只标记 Pending | Boundary | P2 | 不生成强断言 |
| DWS-SPEC-0041 | decorator 参数 IIFE 的内部函数应按 class 外上下文绑定 | Binder / inSendable | P0 | 覆盖原始 IIFE 形态 |
| DWS-SPEC-0042 | decorator transform 不应污染原 AST 节点状态 | Property decorator transform | P0 | AST 共享指针风险 |
| DWS-SPEC-0043 | decorator lowering 后 codegen 应读取最新 binder 上下文 | Bytecode | P0 | codegen 状态源 |
| DWS-SPEC-0044 | sendable function 内 decorator factory 调用需区分上下文 | Boundary | P2 | sendable function 交叉 |
| DWS-SPEC-0045 | class 外普通 function 与 decorator 参数函数 bytecode 应一致 | Bytecode | P1 | 普通函数对照 |
