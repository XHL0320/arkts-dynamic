# Decorator Transform Deepening Report

## Summary

| 指标 | 数量 |
|---|---|
| 更新文件数量 | 13 |
| 新增 spec points | 56 |
| 新增 test design points | 105 |
| 新增 coverage points | 105 |
| 新增 P0 coverage points | 32 |
| 新增 bytecode regression points | 32 |
| 新增 AST state pollution points | 14 |
| PR 10632 transform 扩展点数量 | 10 |

## Updated Files

| 文件 | 修改类型 | 说明 |
|---|---|---|
| 05_decorator_transform/README.md | append | 补充 transform/lowering 定位 |
| 05_decorator_transform/spec_points.md | append | 新增 transform watch points |
| 05_decorator_transform/test_design.md | append | 新增系统性 transform matrix |
| 05_decorator_transform/coverage_matrix.md | append | 新增 DECORATOR-TRANSFORM coverage |
| 05_decorator_transform/test262_mapping.md | append | 明确 Not from test262 |
| 05_decorator_transform/issues/fixed_issues.md | append | 登记 PR 10632 transform 根因 |
| 05_decorator_transform/issues/known_issues.md | append | 登记 Pending transform 风险 |
| decorator_total_coverage_matrix.md | append | 汇总 transform coverage |
| decorator_xts_generation_plan.md | append | 更新 Stage 2 |
| decorator_priority_index.md | append | 标记 05_decorator_transform 为 P0 |
| decorator_open_questions.md | append | 补充 AST/binder/codegen 问题 |
| decorator_regression_index.md | append | 扩展 PR 10632 transform 子项 |
| decorator_test262_total_mapping.md | append | 补充 transform mapping |

## Transform Risk Matrix

| 风险方向 | 覆盖点数量 | 优先级 | 备注 |
|---|---|---|---|
| Property decorator transform | 20 | P0/P1 | PR 10632 入口 |
| Method decorator transform | 12 | P1/P2 | target/descriptor pending |
| Class decorator transform | 10 | P1/P2 | class call lowering |
| Decorator factory transform | 14 | P1 | 参数求值与返回函数 |
| AST state pollution | 14 | P0/P1 | shared pointer / context pollution |
| Bytecode regression | 18 | P0 | expected 测试优先 |
| Boundary / Pending | 12 | P2 | unsupported target |

## Top 10 Next Candidate Tests

| Rank | 测试点 | 建议测试方式 | 优先级 | 备注 |
|---|---|---|---|---|
| 1 | instance property decorator lowering | compiler expected | P1 |  |
| 2 | static property decorator lowering | bytecode expected | P0 |  |
| 3 | property decorator target 参数 | compiler expected | P1 |  |
| 4 | property decorator key 参数 | compiler expected | P1 |  |
| 5 | property decorator factory | compiler expected | P1 |  |
| 6 | property decorator 参数为 literal | compiler expected | P1 |  |
| 7 | property decorator 参数为 arrow function | bytecode expected | P0 |  |
| 8 | property decorator 参数为 normal function | compiler expected | P1 |  |
| 9 | property decorator 参数为 IIFE | bytecode expected | P0 |  |
| 10 | property decorator 参数引用 import | compiler expected | P1 |  |

## Remaining Open Questions

| 问题 | 建议确认方式 |
|---|---|
| AST shared pointer 是否还影响其他 flag | transform dump + bytecode expected |
| lowered decorator 节点是否总能覆盖 binder context | compiler expected |
| codegen 是否读取最新上下文 | bytecode expected |
| method decorator 是否有同类污染 | boundary + bytecode expected |
| class decorator 是否有同类污染 | boundary |
