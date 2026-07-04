# Decorator Class Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 120 |
| 新增 test design points | 163 |
| 新增 coverage points | 163 |
| 新增 P0 coverage points | 29 |
| 新增 P1 coverage points | 82 |
| 新增 class core points | 25 |
| 新增 target/constructor points | 16 |
| 新增 factory points | 18 |
| 新增 export/default points | 14 |
| 新增 class type system points | 20 |
| 新增 transform/lowering points | 16 |
| PR 10632 reference points | 4 |
| sendable-specific points | 2 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\01_class_decorator\README.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\01_class_decorator\spec_points.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\01_class_decorator\test_design.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\01_class_decorator\coverage_matrix.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\01_class_decorator\test262_mapping.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\01_class_decorator\issues\fixed_issues.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\01_class_decorator\issues\known_issues.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_total_coverage_matrix.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_xts_generation_plan.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_priority_index.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_open_questions.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_regression_index.md | append | class decorator deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_test262_total_mapping.md | append | class decorator deepening |

## Class Decorator Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| class core | 25 | P0/P1 | 00_decorator_syntax | 普通 class declaration 主线 |
| target/constructor | 16 | P0/P1 | 05_decorator_transform | class value / constructor target |
| factory | 18 | P1 | 04_decorator_factory | factory call / return |
| export/default | 14 | P1/P2 | 09_decorator_module_scope | order 与 binding 待确认 |
| class type system | 20 | P1 | 05_decorator_transform | 不绕过 checker |
| transform/lowering | 16 | P0/P1 | 05_decorator_transform | bytecode expected 候选 |

## PR 10632 Boundary

PR 10632 不是 class decorator bug。本目录只将其作为 class decorator transform 是否存在类似 AST state pollution / binder context pollution 的风险提醒。

其核心归属：

- property decorator 主体：`02_property_decorator/`
- transform 根因：`05_decorator_transform/`
- sendable 交叉：`07_decorator_with_sendable/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | class decorator 基础 | XTS smoke | P0 | 普通 class declaration |
| 2 | class decorator target | compiler expected | P0 | class constructor / class value |
| 3 | class decorator factory | XTS smoke | P1 | Related: 04_decorator_factory |
| 4 | export class + class decorator | parser/checker | P1 | export binding |
| 5 | default export class + class decorator | manual pending | P2 | 支持范围待确认 |
| 6 | class decorator 返回值 boundary | runtime smoke / boundary | P2 | 替换 class 待确认 |
| 7 | decorated class constructor 类型检查 | parser/checker | P1 | 不绕过 checker |
| 8 | decorated class inheritance | XTS smoke | P1 | extends/super |
| 9 | class decorator transform lowering | bytecode expected | P0 | 编译链高风险 |
| 10 | invalid target: interface / enum / type alias | parser/checker | P1 | fail_compile |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| class decorator target 是否为 class constructor / class value | compiler expected |
| class decorator 返回值是否允许替换 class | boundary/runtime smoke |
| export/default export 与 class decorator 的合法顺序 | parser/checker |
| generic/abstract/class expression 是否支持 class decorator | manual confirmation |
| class decorator 是否存在类似 PR10632 的 AST/binder 污染风险 | bytecode expected |
