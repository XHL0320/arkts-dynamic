# Function Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 叶子目录数量 | 11 |
| 新增/补齐 README 数量 | 11 |
| 新增/补齐 spec_summary.md 数量 | 10 |
| 新增/补齐 test_design.md 数量 | 10 |
| 新增/补齐 coverage_matrix.md 数量 | 11 |
| 总覆盖测试点数量 | 90 |
| 首批候选用例数量 | 39 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 更新 | Function 章节动态 ArkTS 定位 |
| `function_spec_points.md` | 新增 | Function 总规范点摘要 |
| `function_test_design.md` | 新增 | Function 总测试设计 |
| `function_coverage_matrix.md` | 新增 | 90 个总覆盖点 |
| `function_first_batch_candidate_index.md` | 新增/更新 | 39 个首批候选，补入 function_expression |
| `*/README.md` | 更新 | 叶子目录职责说明 |
| `*/spec_summary.md` | 更新 | 叶子目录规范摘要 |
| `*/test_design.md` | 更新 | 叶子目录测试设计骨架 |
| `*/coverage_matrix.md` | 更新 | 叶子目录覆盖矩阵 |
| `*/issues/*.md` | 更新 | issue 占位说明 |
| `*/xts/*/.gitkeep` | 新增 | 保留 XTS 目录，不生成 `.ets` |

## Leaf Directory Summary

| 叶子目录 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| `function_declaration/` | 8 | 4 | hoisting、块级声明、重复声明 |
| `optional_parameter/` | 8 | 5 | 默认参数求值顺序、TS 可选参数兼容 |
| `rest_parameter/` | 8 | 3 | rest 与 arguments 差异、非法参数列表 |
| `return_type/` | 8 | 3 | finally return、异常传播 |
| `function_scope/` | 8 | 3 | 词法环境、参数环境、ReferenceError |
| `function_call/` | 8 | 4 | this 绑定、call/apply/bind、TypeError |
| `function_type/` | 8 | 5 | 函数一等值、name/length、TS 类型标注边界 |
| `arrow_function_lambda/` | 8 | 3 | 词法 this、arguments 边界 |
| `closure/` | 8 | 4 | 捕获生命周期、循环变量、异常传播 |
| `function_overload_signature/` | 8 | 2 | TS overload signature 兼容/限制 |

## Notes

- 本阶段只做 Function 章节看护设计，不批量生成 XTS。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS overload / generic checker 展开。
- 后续 Stage 1 可从 `function_declaration/` 与 `optional_parameter/` / `rest_parameter/` 开始生成第一批 XTS。
