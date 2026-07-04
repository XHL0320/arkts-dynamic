# Decorator Execution Order Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 84 |
| 新增 test design points | 140 |
| 新增 coverage points | 140 |
| 新增 P0 coverage points | 27 |
| 新增 P1 coverage points | 79 |
| 新增 single decorator order points | 15 |
| 新增 multiple decorators points | 18 |
| 新增 cross target order points | 20 |
| 新增 factory evaluation order points | 20 |
| 新增 class evaluation interaction points | 18 |
| 新增 transform/lowering order points | 16 |
| PR 10632 reference points | 5 |
| sendable-specific points | 2 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\06_decorator_execution_order\README.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\06_decorator_execution_order\spec_points.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\06_decorator_execution_order\test_design.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\06_decorator_execution_order\coverage_matrix.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\06_decorator_execution_order\test262_mapping.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\06_decorator_execution_order\issues\fixed_issues.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\06_decorator_execution_order\issues\known_issues.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_total_coverage_matrix.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_xts_generation_plan.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_priority_index.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_open_questions.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_regression_index.md | append | execution order deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_test262_total_mapping.md | append | execution order deepening |

## Execution Order Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| single decorator order | 15 | P0/P1 | 00_decorator_syntax, 04_decorator_factory | 基础执行链路 |
| multiple decorators | 18 | P1 | 01/02/03/04 | 同一 target 多 decorator |
| cross target order | 20 | P1/P2 | 01/02/03/05 | class/property/method 混合 |
| factory evaluation order | 20 | P1 | 04_decorator_factory | 参数、IIFE、副作用 |
| class evaluation interaction | 18 | P1/P2 | 01/02/03 | initializer/constructor/body |
| transform/lowering order | 16 | P0/P1 | 05_decorator_transform | bytecode expected 候选 |

## PR 10632 Boundary

PR 10632 不是 execution order bug。本目录只将其作为 property decorator lowering / factory 参数表达式顺序的参考提醒。

其核心归属：

- property decorator 主体：`02_property_decorator/`
- transform 根因：`05_decorator_transform/`
- sendable 交叉：`07_decorator_with_sendable/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | 单个 decorator factory 求值与调用顺序 | XTS smoke | P0 | factory call + returned decorator |
| 2 | 两个 property decorators 的求值/调用顺序 | XTS smoke | P1 | Related: 02_property_decorator |
| 3 | 两个 method decorators 的求值/调用顺序 | XTS smoke | P1 | Related: 03_method_decorator |
| 4 | 两个 class decorators 的求值/调用顺序 | XTS smoke | P1 | Related: 01_class_decorator |
| 5 | factory 参数 IIFE 求值顺序 | XTS smoke | P1 | Related: 04_decorator_factory |
| 6 | class/property/method 混合顺序 | compiler expected | P1 | integration |
| 7 | static/instance member decorator 顺序 | compiler expected | P1 | member order |
| 8 | decorator 与 field initializer 顺序 | runtime smoke / boundary | P2 | Pending |
| 9 | transform/lowering 后 decorator call 顺序 | bytecode expected | P0 | Related: 05_decorator_transform |
| 10 | factory throw / decorator throw boundary | boundary | P2 | throw order |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| 多 decorator 求值/调用顺序是否与 TS legacy 一致 | XTS smoke / compiler expected |
| class/property/method 混合顺序是否稳定 | compiler expected |
| throw 后是否继续后续 decorators | boundary |
| decorator 与 static field initializer 的相对顺序 | runtime smoke |
| transform/lowering 是否改变原始顺序 | bytecode expected |
