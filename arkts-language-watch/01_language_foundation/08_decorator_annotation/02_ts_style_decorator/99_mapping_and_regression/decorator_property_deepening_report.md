# Decorator Property Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 99 |
| 新增 test design points | 127 |
| 新增 coverage points | 127 |
| 新增 P0 coverage points | 25 |
| 新增 P1 coverage points | 84 |
| 新增 property core points | 38 |
| 新增 target/key points | 23 |
| 新增 factory points | 26 |
| 新增 transform/lowering points | 21 |
| PR 10632 reference points | 7 |
| sendable-specific points | 2 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| 02_property_decorator/README.md | append | 明确普通 property decorator 主线 |
| 02_property_decorator/spec_points.md | append | 新增 property watch points |
| 02_property_decorator/test_design.md | append | 新增 property test matrix |
| 02_property_decorator/coverage_matrix.md | append | 新增 DECORATOR-PROPERTY coverage |
| 02_property_decorator/test262_mapping.md | append | 明确 Not from test262 |
| 02_property_decorator/issues/fixed_issues.md | append | 登记 PR 10632 property 关联 |
| 02_property_decorator/issues/known_issues.md | append | 登记 Pending 风险 |
| decorator_total_coverage_matrix.md | append | 汇总 property coverage |
| decorator_xts_generation_plan.md | append | 更新 Stage 3 |
| decorator_priority_index.md | append | 标记 02_property_decorator 为 P0/P1 |
| decorator_open_questions.md | append | 补充 property 待确认问题 |
| decorator_regression_index.md | append | 补充 PR 10632 property 边界 |
| decorator_test262_total_mapping.md | append | 补充 property mapping |

## Property Decorator Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| Basic property decorator | 18 | P0/P1 | 02_property_decorator | 普通 class 主线 |
| Field type matrix | 20 | P1 | 02_property_decorator | 字段类型交叉 |
| Target/key matrix | 18 | P0/P1 | 05_decorator_transform | target/key |
| Decorator factory matrix | 20 | P1 | 04_decorator_factory | factory 参数和返回值 |
| Transform/lowering matrix | 18 | P0/P1 | 05_decorator_transform | lowering 关联 |
| Module/export matrix | 12 | P1/P2 | 09_decorator_module_scope | module scope |
| Boundary/unsupported matrix | 15 | P2 | 02_property_decorator | pending support |
| Regression reference matrix | 6 | P0/P1 | 07_decorator_with_sendable | PR 10632 有限引用 |

## PR 10632 Boundary

PR 10632 在本目录作为 property decorator 关联回归记录，不作为 sendable class 全量组合的主线。sendable-specific 扩展归入：

`07_decorator_with_sendable/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | instance field property decorator | XTS smoke | P0 |  |
| 2 | static field property decorator | XTS smoke | P0 |  |
| 3 | property decorator 为普通标识符 | XTS smoke | P1 |  |
| 4 | property decorator 为 factory call | XTS smoke | P1 |  |
| 5 | property decorator 无参数 | XTS smoke | P1 |  |
| 6 | property decorator 单参数 | XTS smoke | P1 |  |
| 7 | property decorator 多参数 | XTS smoke | P1 |  |
| 8 | property decorator 参数为 literal | XTS smoke | P1 |  |
| 9 | property decorator 参数为表达式 | XTS smoke | P1 |  |
| 10 | property decorator 参数为函数 | XTS smoke | P1 |  |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| static property decorator target 是否与 ArkTS lowering 规则完全一致 | compiler expected |
| private/protected field 是否支持 property decorator | boundary / parser-checker |
| computed property key 与 property decorator 是否支持 | parser/checker boundary |
| property decorator factory 返回非函数时行为 | fail_runtime 或 boundary |
| property decorator transform 是否还存在非 sendable AST state pollution 风险 | transform regression |
