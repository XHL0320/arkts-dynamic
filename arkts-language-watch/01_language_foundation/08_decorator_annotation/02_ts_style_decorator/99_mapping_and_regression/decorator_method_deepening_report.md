# Decorator Method Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 114 |
| 新增 test design points | 159 |
| 新增 coverage points | 159 |
| 新增 P0 coverage points | 26 |
| 新增 P1 coverage points | 104 |
| 新增 method core points | 39 |
| 新增 target/key/descriptor points | 26 |
| 新增 method type system points | 31 |
| 新增 factory points | 24 |
| 新增 transform/lowering points | 22 |
| PR 10632 reference points | 4 |
| sendable-specific points | 2 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| 03_method_decorator/README.md | append | 明确普通 method decorator 主线 |
| 03_method_decorator/spec_points.md | append | 新增 method watch points |
| 03_method_decorator/test_design.md | append | 新增 method test matrix |
| 03_method_decorator/coverage_matrix.md | append | 新增 DECORATOR-METHOD coverage |
| 03_method_decorator/test262_mapping.md | append | 明确 Not from test262 |
| 03_method_decorator/issues/fixed_issues.md | append | 登记 PR 10632 reference only |
| 03_method_decorator/issues/known_issues.md | append | 登记 Pending 风险 |
| decorator_total_coverage_matrix.md | append | 汇总 method coverage |
| decorator_xts_generation_plan.md | append | 更新 Stage 5 |
| decorator_priority_index.md | append | 标记 03_method_decorator 为 P1 |
| decorator_open_questions.md | append | 补充 method 待确认问题 |
| decorator_regression_index.md | append | 补充 PR 10632 method 边界 |
| decorator_test262_total_mapping.md | append | 补充 method mapping |

## Method Decorator Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 关联目录 | 备注 |
|---|---|---|---|---|
| Basic method decorator | 18 | P0/P1 | 03_method_decorator | method 核心 |
| Target/key/descriptor matrix | 20 | P0/P1 | 05_decorator_transform | descriptor/target |
| Method type matrix | 20 | P1 | 03_method_decorator | 参数/返回类型 |
| Static/visibility/override matrix | 18 | P1/P2 | 03_method_decorator | override/super/visibility |
| Decorator factory matrix | 18 | P1 | 04_decorator_factory | factory 交叉 |
| Transform/lowering matrix | 18 | P0/P1 | 05_decorator_transform | lowering 交叉 |
| Method feature boundary matrix | 15 | P2 | 03_method_decorator | async/generic/accessor |
| Module/export matrix | 12 | P1/P2 | 09_decorator_module_scope | module scope |
| Boundary/unsupported matrix | 15 | P2 | 00_decorator_syntax | invalid targets |
| Regression reference matrix | 5 | P1 | 07_decorator_with_sendable | PR 10632 reference only |

## PR 10632 Boundary

PR 10632 不是 method decorator bug。本目录只将其作为 method decorator transform 是否存在类似 AST state pollution / binder context pollution 的风险提醒。

其核心归属：

- property decorator 主体：`02_property_decorator/`
- transform 根因：`05_decorator_transform/`
- sendable 交叉：`07_decorator_with_sendable/`

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | instance method decorator | XTS smoke | P0 |  |
| 2 | static method decorator | XTS smoke | P0 |  |
| 3 | method decorator 为普通标识符 | XTS smoke | P1 |  |
| 4 | method decorator 为 factory call | XTS smoke | P1 |  |
| 5 | method decorator 无参数 | XTS smoke | P1 |  |
| 6 | method decorator 单参数 | XTS smoke | P1 |  |
| 7 | method decorator 多参数 | XTS smoke | P1 |  |
| 8 | method decorator 参数为 literal | XTS smoke | P1 |  |
| 9 | method decorator 参数为表达式 | XTS smoke | P1 |  |
| 10 | method decorator 参数为函数 | XTS smoke | P1 |  |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| method target/key/descriptor 在 ArkTS 中的实际 lowering 规则 | compiler expected |
| static method decorator target 是否与 class constructor 绑定 | compiler expected |
| accessor/parameter decorator 是否属于 method decorator 支持范围 | unsupported target boundary |
| method decorator 是否存在 PR10632-like AST state pollution | transform regression |
| descriptor 或 ArkTS 等价结构是否可观察 | runtime smoke / compiler expected |
