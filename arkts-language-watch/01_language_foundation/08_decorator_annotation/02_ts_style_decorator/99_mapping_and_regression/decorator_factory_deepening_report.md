# Decorator Factory Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 86 |
| 新增 test design points | 124 |
| 新增 coverage points | 124 |
| 新增 P0 coverage points | 30 |
| 新增 P1 coverage points | 60 |
| 新增 factory core points | 36 |
| 新增 factory parameter points | 39 |
| 新增 return value points | 21 |
| 新增 evaluation order points | 17 |
| 新增 transform/lowering points | 21 |
| PR 10632 reference points | 6 |
| sendable-specific points | 2 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| 04_decorator_factory/README.md | append | 明确普通 decorator factory 主线 |
| 04_decorator_factory/spec_points.md | append | 新增 factory watch points |
| 04_decorator_factory/test_design.md | append | 新增 factory test matrix |
| 04_decorator_factory/coverage_matrix.md | append | 新增 DECORATOR-FACTORY coverage |
| 04_decorator_factory/test262_mapping.md | append | 明确 Not from test262 |
| 04_decorator_factory/issues/fixed_issues.md | append | 登记 PR 10632 factory 关联 |
| 04_decorator_factory/issues/known_issues.md | append | 登记 Pending 风险 |
| decorator_total_coverage_matrix.md | append | 汇总 factory coverage |
| decorator_xts_generation_plan.md | append | 更新 Stage 4 |
| decorator_priority_index.md | append | 标记 04_decorator_factory 为 P1 |
| decorator_open_questions.md | append | 补充 factory 待确认问题 |
| decorator_regression_index.md | append | 补充 PR 10632 factory 边界 |
| decorator_test262_total_mapping.md | append | 补充 factory mapping |

## Decorator Factory Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| Basic factory | 18 | P0/P1 | 04_decorator_factory | factory 核心 |
| Factory parameter matrix | 24 | P1 | 04_decorator_factory, 09_decorator_module_scope | 参数表达式 |
| Return value matrix | 16 | P1/P2 | 04_decorator_factory | 返回 decorator function / invalid return |
| Evaluation order matrix | 16 | P1/P2 | 06_decorator_execution_order | 求值顺序 |
| Transform/lowering matrix | 18 | P0/P1 | 05_decorator_transform | lowering 交叉 |
| Module/export matrix | 12 | P1/P2 | 09_decorator_module_scope | module scope |
| Boundary/unsupported matrix | 14 | P2 | 04_decorator_factory | pending support |
| Regression reference matrix | 6 | P0/P1 | 07_decorator_with_sendable | PR 10632 有限引用 |

## PR 10632 Boundary

PR 10632 在本目录作为 factory 参数表达式和 transform 关联回归记录，不作为 sendable class 全量组合的主线。sendable-specific 扩展归入：

`07_decorator_with_sendable/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | 无参 factory | XTS smoke | P0 |  |
| 2 | 单参 factory | XTS smoke | P0 |  |
| 3 | 多参 factory | XTS smoke | P0 |  |
| 4 | factory 调用结果作为 decorator | XTS smoke | P0 |  |
| 5 | factory 和普通 decorator 标识符对照 | XTS smoke | P1 |  |
| 6 | factory 用于 property decorator | XTS smoke | P0 |  |
| 7 | factory 用于 static property decorator | XTS smoke | P1 |  |
| 8 | factory 用于 method decorator | XTS smoke | P1 |  |
| 9 | factory 用于 class decorator | XTS smoke | P1 |  |
| 10 | factory 未定义 | parser/checker | P0 |  |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| factory 返回非函数时 ArkTS 行为是 checker 报错还是 runtime 报错 | boundary |
| 多个 decorator factories 的求值顺序是否与 TS legacy 行为一致 | execution order 测试 |
| factory 参数 IIFE 与 transform lowering 后作用域是否稳定 | compiler expected |
| imported factory 的 module initialization order 是否稳定 | module scope 测试 |
| factory 参数中的 function expression 是否存在非 sendable AST state pollution 风险 | transform regression |
