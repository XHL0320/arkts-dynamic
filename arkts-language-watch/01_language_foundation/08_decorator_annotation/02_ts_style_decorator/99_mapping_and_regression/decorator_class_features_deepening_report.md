# Decorator Class Features Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 116 |
| 新增 test design points | 177 |
| 新增 coverage points | 177 |
| 新增 P0 coverage points | 20 |
| 新增 P1 coverage points | 78 |
| 新增 static points | 18 |
| 新增 readonly/field initializer points | 18 |
| 新增 visibility points | 16 |
| 新增 constructor points | 14 |
| 新增 inheritance/super points | 20 |
| 新增 override points | 14 |
| 新增 abstract points | 14 |
| 新增 generic points | 16 |
| 新增 implements points | 14 |
| 新增 overload/accessor/parameter boundary points | 16 |
| PR 10632 reference points | 5 |
| sendable-specific points | 2 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\08_decorator_with_class_features\README.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\08_decorator_with_class_features\spec_points.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\08_decorator_with_class_features\test_design.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\08_decorator_with_class_features\coverage_matrix.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\08_decorator_with_class_features\test262_mapping.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\08_decorator_with_class_features\issues\fixed_issues.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\08_decorator_with_class_features\issues\known_issues.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_total_coverage_matrix.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_xts_generation_plan.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_priority_index.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_open_questions.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_regression_index.md | append | class features deepening |
| arkts-language-watch\01_language_foundation\08_decorator_annotation\02_ts_style_decorator\decorator_test262_total_mapping.md | append | class features deepening |

## Class Features Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| static | 18 | P0/P1 | 02/03/05 | static target/lowering |
| readonly/field initializer | 18 | P1/P2 | 02/06 | readonly checker 与 initializer order |
| visibility | 16 | P1/P2 | 00/02/03/05 | private/protected Pending |
| constructor | 14 | P1/P2 | 01/06 | constructor timing |
| inheritance/super | 20 | P1/P2 | 01/03/05 | prototype/super |
| override | 14 | P1/P2 | 03/05 | override checker |
| abstract | 14 | P2 | 01/03 | support boundary |
| generic | 16 | P1/P2 | 01/03/05 | generic checker/lowering |
| implements | 14 | P1/P2 | 01/02/03 | interface checker |
| overload/accessor/parameter | 16 | P2 | 00/03 | unsupported boundary |

## PR 10632 Boundary

PR 10632 不是 class features bug。本目录只将其作为 property decorator + class field + transform/lowering 的参考提醒。

其核心归属：

- property decorator 主体：`02_property_decorator/`
- transform 根因：`05_decorator_transform/`
- sendable 交叉：`07_decorator_with_sendable/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | static property + property decorator | compiler expected | P0 | static target |
| 2 | static method + method decorator | compiler expected | P0 | static target |
| 3 | readonly property + property decorator | parser/checker | P1 | readonly checker |
| 4 | public/private/protected + decorator boundary | boundary | P2 | visibility support |
| 5 | override method + method decorator | parser/checker | P1 | override checker |
| 6 | inheritance + class/method/property decorator | integration | P1 | extends/super |
| 7 | generic class + class decorator | boundary | P2 | Pending |
| 8 | abstract class/method + decorator boundary | boundary | P2 | Pending |
| 9 | implements interface + decorated class | parser/checker | P1 | interface checker |
| 10 | field initializer + property decorator | boundary | P2 | execution order |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| private/protected member 是否支持 decorator 以及 target/key 如何表示 | parser/checker/compiler expected |
| abstract class/method/property 与 decorator 的支持范围 | unsupported boundary |
| generic class/method 与 decorator lowering 是否稳定 | compiler expected |
| override + decorator 是否影响 override checker | fail_compile/pass 对照 |
| overload/accessor/parameter decorator 是否属于支持范围 | unsupported boundary |
| static initializer / field initializer 与 decorator 的相对顺序 | execution order 测试 |
