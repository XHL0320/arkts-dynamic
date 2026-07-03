# Spec Summary

## Feature

TS Style Decorator

## Baseline Status

ArkTS-specific / TS-compatible / Mixed

## Not Covered

本目录不覆盖 ArkUI UI 装饰器，也不覆盖 ArkTS `@interface` annotation 主线。

## Core Concepts

1. decorator 写在声明前；
2. decorator 可以是标识符；
3. decorator 可以是调用表达式，即 decorator factory；
4. decorator 可用于 class / property / method，具体支持范围以 ArkTS 行为为准；
5. decorator transform 可能将 decorator 调用外提到 class 外部；
6. decorator 表达式中的函数不应被错误归入 class 或 sendable class 上下文；
7. 多 decorator 存在求值顺序和调用顺序；
8. decorator lowering 可能影响 bytecode；
9. decorator 与 sendable class 的交叉是高风险点。

## Compiler Pipeline

| 阶段 | 关注点 |
|---|---|
| Parser | `@decorator` 语法解析 |
| AST | decorator 节点挂载位置 |
| Transformer | decorator 外提 / lowering |
| Binder | decorator 表达式中函数作用域、sendable 标记 |
| Checker | decorator 函数类型、参数、target |
| CodeGen | decorator 调用和字节码生成 |
| Runtime | decorator 是否按顺序执行 |
