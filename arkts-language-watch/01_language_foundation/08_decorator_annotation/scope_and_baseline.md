# Scope and Baseline

## Current Focus

当前优先看护：

`02_ts_style_decorator`

## Baseline Classification

| 特性 | Baseline | test262 是否直接覆盖 | 备注 |
|---|---|---|---|
| class decorator | TS-compatible / ArkTS-specific | 否 | 取决于 ArkTS 支持情况 |
| property decorator | TS-compatible / ArkTS-specific | 否 | 本轮重点 |
| method decorator | TS-compatible / ArkTS-specific | 否 | 本轮重点 |
| decorator factory | TS-compatible / ArkTS-specific | 否 | 本轮重点 |
| decorator transform/lowering | ArkTS-specific | 否 | 编译链看护 |
| decorator execution order | TS-compatible / ArkTS-specific | 否 | 需按 ArkTS 行为确认 |
| decorator with sendable class | ArkTS-specific | 否 | PR 10632 回归重点 |
| ArkUI decorators | Framework-specific | 否 | 本轮不覆盖 |
| `@interface` annotation | ArkTS-specific | 否 | 后续展开 |

## Key Principle

Decorator 相关测试不能只验证 `@xxx` 语法是否可解析，还要覆盖：

1. decorator 目标是否合法；
2. decorator factory 是否正确求值；
3. decorator transform 后代码结构是否正确；
4. decorator 内表达式中的函数是否被错误归属到 class/sendable 上下文；
5. 多 decorator 执行顺序；
6. 与 class field/method/static/inheritance/sendable/module 的交叉；
7. bytecode 是否符合预期；
8. regression 是否覆盖历史缺陷。
