# Decorator Governance Fix Report

## Summary

| 指标 | 数量 |
|---|---|
| 修正文件数量 | 7 |
| 删除 legacy/generic 占位归并组数量 | 5 |
| 修正归并所有权数量 | 10 |
| First Batch 候选数量 | 50 |
| First Batch 覆盖目录数量 | 10 |
| First Batch P0 数量 | 39 |
| First Batch P1 数量 | 11 |
| First Batch 普通主线数量 | 46 |
| First Batch PR 10632 数量 | 5 |
| First Batch sendable-specific 数量 | 4 |
| Need Review 项数量 | 6 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| decorator_total_coverage_matrix.md | update | 删除 legacy/generic 总表行并补充治理说明 |
| decorator_duplicate_and_overlap_report.md | rewrite | 删除 legacy/generic 占位归并组，使用真实 Coverage ID |
| decorator_priority_index.md | rewrite | P0/P1 索引按均衡首批候选重排 |
| decorator_xts_generation_plan.md | rewrite | 同步 First Batch Candidate List |
| decorator_first_batch_candidate_index.md | rewrite | First Batch 50 条覆盖 10 个目录 |
| 99_mapping_and_regression/decorator_total_convergence_report.md | update | 更新 First Batch Overview 和 Need Review |
| 99_mapping_and_regression/decorator_governance_fix_report.md | create | 本轮治理修正记录 |

## Removed Legacy / Generic Items

| 原项目 | 处理方式 | 原因 |
|---|---|---|
| 基础合法场景占位 | 删除占位归并组 | 无真实 Coverage ID 支撑，已由 syntax/class/property/method 真实项覆盖 |
| 通用 parser/checker negative 占位 | 删除占位归并组 | 通用负向归属 `00_decorator_syntax` 的真实 Coverage ID |
| transform/lowering 占位 | 删除占位归并组 | transform 归属 `05_decorator_transform` 的真实 Coverage ID |
| sendable 交叉占位 | 删除占位归并组 | sendable-specific 归属 `07_decorator_with_sendable` 的真实 Coverage ID |
| integration 组合占位 | 删除占位归并组 | class features/module/order 等真实集成项已覆盖 |

## Ownership Fixes

| 测试点 | 原归属 | 新归属 | 原因 |
|---|---|---|---|
| decorator 名称未定义 | class/property/method 分散 | 00_decorator_syntax | 通用 checker negative |
| decorator 表达式类型错误 | class/property/method 分散 | 00_decorator_syntax | 通用 checker negative |
| decorator without declaration / bare `@` | 多目录占位 | 00_decorator_syntax | 通用 parser error |
| factory 返回非函数 / factory throw | target-specific 目录分散 | 04_decorator_factory | factory 基础能力 |
| factory call lowering | property/method/factory 分散 | 05_decorator_transform | lowering 根因归属 transform |
| AST state / binder context pollution | class/property/method/factory 分散 | 05_decorator_transform | transform/codegen 根因 |
| multiple decorators order | factory/property/method 分散 | 06_decorator_execution_order | 顺序看护归属 execution order |
| sendable-specific PR10632 变体 | 普通目录扩散 | 07_decorator_with_sendable | sendable 不扩散到普通主线 |
| static/readonly/override 组合 | class/property/method 分散 | 08_decorator_with_class_features | class feature integration |
| imported binding / moduleVar | factory/property 分散 | 09_decorator_module_scope | module binding 归属 module scope |

## First Batch Distribution

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

## PR 10632 Boundary After Fix

| 文件 | 处理方式 | 说明 |
|---|---|---|
| decorator_regression_index.md | 保持 | PR 10632 主归属仍为 `07_decorator_with_sendable` |
| decorator_first_batch_candidate_index.md | 收敛 | First Batch 中 PR 10632 为 5 条，保持 3-5 条范围 |
| decorator_xts_generation_plan.md | 收敛 | Stage 6 独立承载 PR10632/sendable-specific |
| decorator_total_coverage_matrix.md | 标注 | 普通目录仅作为 reference，不作为 sendable 主线 |
| decorator_duplicate_and_overlap_report.md | 修正 | sendable-specific 归属 `07_decorator_with_sendable` |

## Remaining Need Review

| 项目 | 原因 | 建议 |
|---|---|---|
| decorator factory 返回非函数 | checker/runtime 阶段待确认 | 设计 fail_compile/runtime boundary 对照 |
| method decorator descriptor 是否可观察 | ArkTS 等价结构待确认 | 设计 compiler expected 与 runtime smoke |
| class decorator 返回新 class 是否支持 | class decorator 返回值语义待确认 | 设计 boundary/compiler expected |
| accessor decorator 是否支持 | target support 待确认 | 设计 unsupported target fail_compile |
| parameter decorator 是否支持 | target support 待确认 | 设计 unsupported target fail_compile |
| bytecode expected 放置目录 | 普通 transform 与 sendable regression 均涉及 bytecode | 普通根因归 `05`，PR10632 专项归 `07` |
