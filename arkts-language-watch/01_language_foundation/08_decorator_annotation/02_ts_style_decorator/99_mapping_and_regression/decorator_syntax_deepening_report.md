# Decorator Syntax Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 76 |
| 新增 test design points | 110 |
| 新增 coverage points | 110 |
| 新增 P0 coverage points | 20 |
| 新增 P1 coverage points | 62 |
| 新增 basic syntax points | 15 |
| 新增 valid target points | 15 |
| 新增 invalid target points | 20 |
| 新增 modifier order points | 15 |
| 新增 expression form points | 18 |
| PR 10632 syntax reference points | 5 |
| sendable-specific points | 1 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| 00_decorator_syntax/README.md | append | 明确基础语法主线 |
| 00_decorator_syntax/spec_points.md | append | 新增 syntax watch points |
| 00_decorator_syntax/test_design.md | append | 新增 syntax test matrix |
| 00_decorator_syntax/coverage_matrix.md | append | 新增 DECORATOR-SYNTAX coverage |
| 00_decorator_syntax/test262_mapping.md | append | 明确 Not from test262 |
| 00_decorator_syntax/issues/fixed_issues.md | append | 登记 PR 10632 syntax reference |
| 00_decorator_syntax/issues/known_issues.md | append | 登记 Pending syntax 风险 |
| decorator_total_coverage_matrix.md | append | 汇总 syntax coverage |
| decorator_xts_generation_plan.md | append | 更新 syntax baseline stage |
| decorator_priority_index.md | append | 标记 00_decorator_syntax 为 P1 |
| decorator_open_questions.md | append | 补充 syntax 待确认问题 |
| decorator_regression_index.md | append | 补充 PR 10632 syntax 边界 |
| decorator_test262_total_mapping.md | append | 补充 syntax mapping |

## Decorator Syntax Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| Basic syntax | 15 | P0/P1 | 00_decorator_syntax | 基础入口 |
| Valid target syntax | 15 | P1/P2 | 01/02/03 target dirs | 合法 target |
| Invalid target syntax | 20 | P0/P1 | 00_decorator_syntax | parser/checker negative |
| Modifier order | 15 | P1/P2 | class/property/method | 修饰符顺序 |
| Multiple decorators | 12 | P1 | 06_decorator_execution_order | 只看语法 |
| Expression form | 18 | P1/P2 | 04_decorator_factory | 表达式形态 |
| Parser/checker distinction | 10 | P1 | 00_decorator_syntax | parser/checker 分界 |
| Regression reference | 5 | P0/P1 | 05/07/02/04 | PR 10632 syntax reference |

## PR 10632 Boundary

PR 10632 在本目录只作为合法 property decorator + decorator factory syntax 的 reference。其核心风险不属于 syntax：

- transform 根因归入 `05_decorator_transform/`
- sendable 交叉归入 `07_decorator_with_sendable/`
- property decorator 主体归入 `02_property_decorator/`
- factory 参数归入 `04_decorator_factory/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | class 前 @decorator | XTS smoke | P0 |  |
| 2 | property 前 @decorator | XTS smoke | P0 |  |
| 3 | method 前 @decorator | XTS smoke | P0 |  |
| 4 | static property 前 @decorator | XTS smoke | P1 |  |
| 5 | static method 前 @decorator | XTS smoke | P1 |  |
| 6 | @decorator() call expression | XTS smoke | P0 |  |
| 7 | @decorator(arg) call expression | XTS smoke | P1 |  |
| 8 | @decorator(arg1, arg2) call expression | XTS smoke | P1 |  |
| 9 | @ns.decorator member expression boundary | manual pending | P2 |  |
| 10 | @(decorator) parenthesized boundary | manual pending | P2 |  |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| ArkTS 当前正式支持哪些 decorator target | parser/checker + 官方规范确认 |
| modifier order 是否与 TS legacy decorator 一致 | fail_compile/boundary |
| member expression decorator 是否支持 | parser/checker boundary |
| parameter/accessor decorator 是否支持 | unsupported target |
| unsupported target 的报错阶段是 parser 还是 checker | 区分 parser/checker 用例 |
