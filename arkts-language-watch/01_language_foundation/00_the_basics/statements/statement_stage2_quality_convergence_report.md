# Statement Stage 2 Quality Convergence Report

## Summary

| 项目 | 数量 |
|---|---:|
| 扫描 .ets 文件数量 | 33 |
| pass 用例数量 | 25 |
| fail_compile 用例数量 | 3 |
| fail_runtime 用例数量 | 1 |
| boundary 用例数量 | 3 |
| regression 用例数量 | 1 |
| helper module 文件数量 | 0 |
| 更新文档数量 | 5 |
| 疑似 ownership 误放数量 | 0 |
| P0 缺口数量 | 6 |
| P1 缺口数量 | 6 |

## Directory Health Check

| 项目 | 是否存在 | 备注 |
|---|---|---|
| README.md | 是 | Stage 0 完成，包含看护范围表格和章节关系 |
| spec_summary.md | 是 | Stage 0 完成，19 章节规范摘要 |
| test_design.md | 是 | Stage 0 完成，9 章节测试设计 |
| coverage_matrix.md | 是 | Stage 0 完成 96 个测试点，Stage 1 追加 Update Summary |
| statement_first_batch_candidate_index.md | 是 | Stage 0 完成 50 个候选，Stage 1 更新 33 个为 created |
| statement_to_feature_mapping.md | 是 | Stage 0 完成，包含 ownership 规则和重复避免规则 |
| issues/known_issues.md | 是 | Stage 0 完成，当前无已确认问题 |
| issues/fixed_issues.md | 是 | Stage 0 完成，当前无已修复问题 |
| xts/pass | 是 | 25 个 .ets 文件 + .gitkeep |
| xts/fail_compile | 是 | 3 个 .ets 文件 + .gitkeep |
| xts/fail_runtime | 是 | 1 个 .ets 文件 + .gitkeep |
| xts/regression | 是 | 1 个 .ets 文件 + .gitkeep |
| xts/boundary | 是 | 3 个 .ets 文件 + .gitkeep |

## Stage Reports Check

| 阶段 | 报告文件 | 是否存在 | 备注 |
|---|---|---|---|
| Stage 0 | statement_stage0_generation_report.md | 是 | 96 覆盖点 / 50 候选 |
| Stage 1 | statement_stage1_generation_report.md | 是 | 33 个 .ets 文件 |
| Stage 2 | statement_stage2_quality_convergence_report.md | 是 | current |

## Coverage Matrix Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| coverage_matrix 是否存在 | 是 | 96 个测试点 |
| 实际 .ets 是否已回填矩阵 | 是 | Stage 1 Update Summary 记录 33 个文件映射 |
| 是否存在 planned 但未生成用例 | 是 | 17 个 candidate 仍为 planned（6 P0 + 6 P1 + 5 其他） |
| 是否存在 created 但实际文件缺失 | 否 | 所有 created candidate 都有对应 .ets 文件 |
| 是否存在路径失效 | 否 | 所有路径均指向实际存在的文件 |

## Candidate Index Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| candidate index 是否存在 | 是 | 50 个候选 |
| Stage 1 candidate 是否回填 | 是 | 33 个改为 created，17 个保持 planned |
| 是否存在实际文件但 candidate 缺失 | 否 | 所有 .ets 文件都有对应 candidate |
| 是否存在 created 但实际文件缺失 | 否 | 所有 created candidate 都有对应 .ets 文件 |

## Mapping Document Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| statement_to_feature_mapping 是否存在 | 是 | 10 章节完整映射 |
| 是否说明 declarations ownership | 是 | for init 声明、catch binding、block 内声明归 declarations |
| 是否说明 types ownership | 是 | for-of iterable 判断归 types |
| 是否说明 operators ownership | 是 | if/switch/while 条件求值归 operators |
| 是否说明 function ownership | 是 | return 函数内归 function，函数外归 statements |
| 是否说明 module ownership | 是 | 顶层语句位置归 statements，模块解析归 module |

## Ownership Review Summary

| 类型 | 数量 | 说明 |
|---|---:|---|
| 明确归 statements | 33 | 所有 .ets 文件均正确归属于语句体系 |
| 疑似误放到 statements | 0 | 未发现误放文件 |
| boundary 待确认 | 3 | label 支持、finally 控制流覆盖、debugger 运行时行为 |

## Gap Summary

| 优先级 | 未覆盖数量 | 说明 |
|---|---:|---|
| P0 | 6 | while 零次执行、for-in 顺序、for-of iterator、finally throw、顶层 return/break |
| P1 | 6 | 嵌套 block 遮蔽、if ToBoolean、switch 无匹配、while continue、for let init、for-in 数组索引 |
| P2 | 0 | — |

## Notes

- 本阶段只做 Statements 章节总质量收敛。
- 本阶段未进行 ECMA / test262 规范比对。
- 本阶段未进行 DevEco / hvigor / ohosTest 编译运行验证。
- 本阶段未修改 Declarations / Types / Operators / Function 章节。
- 本阶段未提交 commit，未 push 远程仓库。
- 当前 33 个 .ets 文件全部为 Stage 1 生成，无 helper module。
- 17 个 planned candidate 可在后续 Stage 3 或其他阶段补齐。
- 3 个 boundary 文件需要在编译验证阶段确认支持状态。
