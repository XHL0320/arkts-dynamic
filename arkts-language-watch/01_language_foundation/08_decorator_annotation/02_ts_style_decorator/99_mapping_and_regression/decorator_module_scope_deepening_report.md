# Decorator Module Scope Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 97 |
| 新增 test design points | 148 |
| 新增 coverage points | 148 |
| 新增 P0 coverage points | 25 |
| 新增 P1 coverage points | 82 |
| 新增 imported decorator points | 18 |
| 新增 imported factory points | 20 |
| 新增 imported binding parameter points | 20 |
| 新增 factory closure/binding points | 16 |
| 新增 export decorated class points | 18 |
| 新增 module initialization order points | 18 |
| 新增 transform/lowering module scope points | 18 |
| PR 10632 reference points | 5 |
| sendable-specific points | 2 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\09_decorator_module_scope\README.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\09_decorator_module_scope\spec_points.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\09_decorator_module_scope\test_design.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\09_decorator_module_scope\coverage_matrix.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\09_decorator_module_scope\test262_mapping.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\09_decorator_module_scope\issues\fixed_issues.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\09_decorator_module_scope\issues\known_issues.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_total_coverage_matrix.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_xts_generation_plan.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_priority_index.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_open_questions.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_regression_index.md | append | module scope deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_test262_total_mapping.md | append | module scope deepening |

## Module Scope Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| imported decorator function | 18 | P0/P1 | 01/02/03 | 跨模块 decorator function |
| imported decorator factory | 20 | P1 | 04_decorator_factory | factory import/return |
| imported binding parameter | 20 | P1/P2 | 04_decorator_factory | 参数与类型边界 |
| factory closure/binding | 16 | P0/P1 | 04/05 | closure + lowering |
| export decorated class | 18 | P1/P2 | 01_class_decorator | export/default binding |
| module initialization order | 18 | P1/P2 | 06_decorator_execution_order | side effect/order |
| transform/lowering module scope | 18 | P0/P1 | 05_decorator_transform | bytecode expected 候选 |

## PR 10632 Boundary

PR 10632 不是 module scope bug。本目录只将其作为 imported `moduleVar`、factory 参数函数捕获 imported binding、transform/lowering 后 module binding 的风险提醒。

其核心归属：

- property decorator 主体：`02_property_decorator/`
- transform 根因：`05_decorator_transform/`
- sendable 交叉：`07_decorator_with_sendable/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | imported property decorator | compiler expected | P0 | Related: 02_property_decorator |
| 2 | imported method decorator | compiler expected | P0 | Related: 03_method_decorator |
| 3 | imported class decorator | compiler expected | P0 | Related: 01_class_decorator |
| 4 | imported decorator factory | compiler expected | P1 | Related: 04_decorator_factory |
| 5 | decorator 参数引用 imported binding | XTS smoke / compiler expected | P1 | module binding |
| 6 | factory 参数函数捕获 imported binding | compiler expected | P1 | closure |
| 7 | export decorated class | multi-file integration | P1 | export binding |
| 8 | default export decorated class | boundary | P2 | Pending |
| 9 | module initialization order | integration | P1 | Related: 06_decorator_execution_order |
| 10 | transform/lowering 后 imported binding 正确 | bytecode expected | P0 | Related: 05_decorator_transform |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| namespace/default import decorator 是否支持 | parser/checker boundary |
| re-export decorator/factory 是否支持 | multi-file boundary |
| circular import 中 decorator/factory 是否稳定 | boundary |
| lowering 后 class 外 decorator 调用是否稳定解析 imported binding | bytecode expected |
| imported decorator/factory module initialization order 是否稳定 | multi-file integration |
