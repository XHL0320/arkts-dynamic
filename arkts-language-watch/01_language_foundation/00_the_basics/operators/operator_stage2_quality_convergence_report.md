# Operator Stage 2 Quality Convergence Report

## Summary

| 项目 | 数量 |
|---|---:|
| 扫描 .ets 文件数量 | 33 |
| pass 用例数量 | 26 |
| fail_compile 用例数量 | 1 |
| fail_runtime 用例数量 | 4 |
| boundary 用例数量 | 1 |
| regression 用例数量 | 1 |
| helper module 文件数量 | 0 |
| 更新文档数量 | 5 |
| 疑似 ownership 误放数量 | 0 |
| P0 缺口数量 | 5 |
| P1 缺口数量 | 14 |

## Directory Health Check

| 项目 | 是否存在 | 备注 |
|---|---|---|
| README.md | 是 | Stage 0 文档存在 |
| spec_summary.md | 是 | Stage 0 文档存在 |
| test_design.md | 是 | Stage 0 文档存在 |
| coverage_matrix.md | 是 | Stage 0/1 已使用 |
| operator_first_batch_candidate_index.md | 是 | Stage 1 已回填候选状态 |
| operator_to_feature_mapping.md | 是 | ownership 映射存在 |
| issues/known_issues.md | 是 | 当前暂无确认问题 |
| issues/fixed_issues.md | 是 | 当前暂无修复问题 |
| xts/pass | 是 | 26 个 pass 用例 |
| xts/fail_compile | 是 | 1 个 fail_compile 用例 |
| xts/fail_runtime | 是 | 4 个 fail_runtime 用例 |
| xts/regression | 是 | 1 个 regression 用例 |
| xts/boundary | 是 | 1 个 boundary 用例 |

## Stage Reports Check

| 阶段 | 报告文件 | 是否存在 | 备注 |
|---|---|---|---|
| Stage 0 | operator_stage0_generation_report.md | 是 | 已存在 |
| Stage 1 | operator_stage1_generation_report.md | 是 | 已存在 |
| Stage 2 | operator_stage2_quality_convergence_report.md | 是 | current |

## Coverage Matrix Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| coverage_matrix 是否存在 | 是 | 总覆盖矩阵存在 |
| 实际 .ets 是否已回填矩阵 | 部分已回填 | Stage 1 已生成项已在报告中记录，仍需后续脚本化路径审计 |
| 是否存在 planned 但未生成用例 | 是 | 首批候选仍有 P0/P1 缺口，见 `operator_gap_list.md` |
| 是否存在 created 但实际文件缺失 | 未发现 | 当前 Stage 1 生成文件均存在 |
| 是否存在路径失效 | 未发现明显失效 | 后续编译验证前需再做路径审计 |

## Candidate Index Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| candidate index 是否存在 | 是 | `operator_first_batch_candidate_index.md` 存在 |
| Stage 1 candidate 是否回填 | 是 | Stage 1 report 记录已生成 33 个 |
| 是否存在实际文件但 candidate 缺失 | 未发现明显缺失 | 当前实际文件均可映射到 Stage 1 Generated Cases |
| 是否存在 created 但实际文件缺失 | 未发现 | 后续可脚本化复核 |

## Mapping Document Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| operator_to_feature_mapping 是否存在 | 是 | 映射文档存在 |
| 是否说明 types ownership | 是 | types 负责基础类型识别 |
| 是否说明 declarations ownership | 是 | declarations 负责 binding/TDZ/readonly |
| 是否说明 function ownership | 是 | function 负责调用语义 |
| 是否说明 class ownership | 是 | class 负责构造/继承/成员 |
| 是否说明 statements ownership | 是 | statements 负责语句控制流 |
| 是否说明 builtin API ownership | 是 | builtin API 负责方法行为 |

## Ownership Review Summary

| 类型 | 数量 | 说明 |
|---|---:|---|
| 明确归 operators | 29 | 表达式运算、短路、赋值、异常和求值顺序 |
| 疑似误放到 operators | 0 | 未发现必须迁移的专属行为 |
| boundary 待确认 | 1 | delete non-configurable property |

## Gap Summary

| 优先级 | 未覆盖数量 | 说明 |
|---|---:|---|
| P0 | 5 | null conversion、optional call/short-circuit、invalid update/assignment target |
| P1 | 14 | bitwise、comma、assignment order、new、await/yield boundary 等 |
| P2 | 0 | 首批候选无 P2，完整覆盖矩阵仍有 P2 planned 项 |

## Notes

- 本阶段只做 Operators 章节总质量收敛。
- 本阶段未进行 ECMA / test262 规范比对。
- 本阶段未进行 DevEco / hvigor / ohosTest 编译运行验证。
- 本阶段未修改 Declarations / Types / Function 章节。
- 本阶段未提交 commit，未 push 远程仓库。
