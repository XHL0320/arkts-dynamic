# Decorator Total Convergence Report

## Summary

| 指标 | 数量 |
|---|---|
| 扫描子目录数量 | 10 |
| 扫描 coverage_matrix 数量 | 10 |
| 原始 coverage 项数量 | 1383 |
| 去重后 coverage 项数量 | 1234 |
| P0 数量 | 261 |
| P1 数量 | 667 |
| P2 数量 | 306 |
| Pending/Unsupported 数量 | 301 |
| First Batch 候选数量 | 50 |
| PR 10632 reference 数量 | 5 in First Batch / 126 total coverage references |
| sendable-specific 数量 | 4 in First Batch / 79 sendable-directory coverage |
| Need Review Items | 6 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| decorator_total_coverage_matrix.md | update | 删除 legacy/generic 占位总表行并补充治理说明 |
| decorator_duplicate_and_overlap_report.md | rewrite | 清理 legacy/generic 归并组，修正所有权 |
| decorator_priority_index.md | rewrite | P0/P1 索引按首批均衡候选重排 |
| decorator_xts_generation_plan.md | rewrite | First Batch Candidate List 同步重排 |
| decorator_first_batch_candidate_index.md | rewrite | First Batch 50 条覆盖 10 个目录 |
| decorator_total_convergence_report.md | update | First Batch Overview 与 Need Review 修正 |
| decorator_governance_fix_report.md | create | 本轮治理修正报告 |

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
|---|---:|---:|---:|---|
| 00_decorator_syntax | 8 | 8 | 0 | syntax baseline |
| 01_class_decorator | 5 | 3 | 2 | class decorator core |
| 02_property_decorator | 8 | 8 | 0 | property decorator core |
| 03_method_decorator | 5 | 5 | 0 | method decorator core |
| 04_decorator_factory | 6 | 4 | 2 | factory core |
| 05_decorator_transform | 6 | 6 | 0 | transform/lowering |
| 06_decorator_execution_order | 3 | 0 | 3 | execution order smoke |
| 07_decorator_with_sendable | 4 | 3 | 1 | PR10632/sendable-specific |
| 08_decorator_with_class_features | 2 | 1 | 1 | class feature integration |
| 09_decorator_module_scope | 3 | 1 | 2 | module scope |

## Need Review Items

| 项目 | 原因 | 建议 |
|---|---|---|
| decorator factory 返回非函数 | checker/runtime 阶段待确认 | 设计 fail_compile/runtime boundary 对照 |
| method decorator descriptor 是否可观察 | ArkTS 等价结构待确认 | 设计 compiler expected 与 runtime smoke |
| class decorator 返回新 class 是否支持 | class decorator 返回值语义待确认 | 设计 boundary/compiler expected |
| accessor decorator 是否支持 | target support 待确认 | 设计 unsupported target fail_compile |
| parameter decorator 是否支持 | target support 待确认 | 设计 unsupported target fail_compile |
| bytecode expected 放置目录 | 普通 transform 与 sendable regression 均涉及 bytecode | 普通根因归 `05`，PR10632 专项归 `07` |
