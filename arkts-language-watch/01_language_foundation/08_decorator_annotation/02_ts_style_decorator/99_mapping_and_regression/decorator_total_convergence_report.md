# Decorator Total Convergence Report

## Summary

| 指标 | 数量 |
|---|---|
| 扫描子目录数量 | 10 |
| 扫描 coverage_matrix 数量 | 10 |
| 原始 coverage 项数量 | 1383 |
| 去重后 coverage 项数量 | 1239 |
| P0 数量 | 263 |
| P1 数量 | 670 |
| P2 数量 | 306 |
| Pending/Unsupported 数量 | 303 |
| First Batch 候选数量 | 50 |
| PR 10632 reference 数量 | 127 |
| sendable-specific 数量 | 93 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| decorator_total_coverage_matrix.md | rewrite | 汇总并去重 00-09 coverage |
| decorator_duplicate_and_overlap_report.md | create/update | 重复与交叉归并报告 |
| decorator_priority_index.md | rewrite | P0/P1 索引重排 |
| decorator_xts_generation_plan.md | rewrite | 生成阶段与首批候选 |
| decorator_first_batch_candidate_index.md | create/update | First Batch 50 条候选 |
| decorator_open_questions.md | rewrite | open questions 去重 |
| decorator_regression_index.md | rewrite | PR 10632 主归属收敛 |
| decorator_test262_total_mapping.md | rewrite | test262 总映射修正 |

## Convergence Decisions

| 决策 | 说明 |
|---|---|
| 普通 decorator 主线优先 | sendable 不扩散到全量主线 |
| PR 10632 主归属 | `07_decorator_with_sendable/` |
| transform/lowering 主归属 | `05_decorator_transform/` |
| factory 主归属 | `04_decorator_factory/` |
| module scope 主归属 | `09_decorator_module_scope/` |
| class feature integration 主归属 | `08_decorator_with_class_features/` |

## First Batch Overview

| 来源目录 | 候选数量 | P0 数量 | P1 数量 | 备注 |
|---|---|---|---|---|
| 00_decorator_syntax | 16 | 16 | 0 | 普通主线/少量 regression 按策略抽取 |
| 01_class_decorator | 4 | 4 | 0 | 普通主线/少量 regression 按策略抽取 |
| 02_property_decorator | 27 | 27 | 0 | 普通主线/少量 regression 按策略抽取 |
| 05_decorator_transform | 3 | 3 | 0 | 普通主线/少量 regression 按策略抽取 |

## Need Review Items

| 项目 | 原因 | 建议 |
|---|---|---|
| 基础合法场景 | legacy/generic row or unclear ownership | 人工确认是否继续保留为占位覆盖项 |
| parser/checker 负向 | legacy/generic row or unclear ownership | 人工确认是否继续保留为占位覆盖项 |
| transform/lowering | legacy/generic row or unclear ownership | 人工确认是否继续保留为占位覆盖项 |
| sendable 交叉 | legacy/generic row or unclear ownership | 人工确认是否继续保留为占位覆盖项 |
| integration 组合 | legacy/generic row or unclear ownership | 人工确认是否继续保留为占位覆盖项 |
