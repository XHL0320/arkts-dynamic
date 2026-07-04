# TS Style Decorator Watch

本目录用于看护 ArkTS 中 TS 风格 decorator 相关能力。

## Current Focus

当前重点：

1. decorator syntax
2. class decorator
3. property decorator
4. method decorator
5. decorator factory
6. decorator transform / lowering
7. decorator execution order
8. decorator with sendable class
9. decorator with class features
10. decorator module scope
11. regression for compiler pipeline bugs

## Important Regression

PR 10632:

`Sendable class 中装饰器内的语句生成的字节码错误`

该问题属于：

`property decorator + sendable class + transformer + binder + bytecode generation`

应作为 P0 regression 进入：

`07_decorator_with_sendable`
和
`99_mapping_and_regression`

## Control Files

| 文件 | 作用 |
|---|---|
| decorator_watch_review.md | 总体一致性审查 |
| decorator_total_coverage_matrix.md | 总覆盖矩阵 |
| decorator_xts_generation_plan.md | 后续 XTS / bytecode regression 生成计划 |
| decorator_priority_index.md | 优先级索引 |
| decorator_open_questions.md | 总待确认问题 |
| decorator_regression_index.md | 回归索引 |
| decorator_test262_total_mapping.md | test262 总映射 |
