# Type Stage 2 Quality Convergence Report

## Summary

| 项目 | 数量 |
|---|---:|
| 扫描 .ets 文件数量 | 28 |
| pass 用例数量 | 18 |
| fail_compile 用例数量 | 0 |
| fail_runtime 用例数量 | 3 |
| boundary 用例数量 | 7 |
| regression 用例数量 | 0 |
| helper module 文件数量 | 0 |
| 更新文档数量 | 5 |
| 疑似 ownership 误放数量 | 0 |
| P0 缺口数量 | 9 |
| P1 缺口数量 | 23 |

## Directory Health Check

| 项目 | 是否存在 | 备注 |
|---|---|---|
| README.md | 是 | Stage 0 文档存在 |
| spec_summary.md | 是 | Stage 0 文档存在 |
| test_design.md | 是 | Stage 0 文档存在 |
| coverage_matrix.md | 是 | Stage 0/1 已使用 |
| type_first_batch_candidate_index.md | 是 | Stage 1 已追加状态表 |
| type_to_feature_mapping.md | 是 | 跨特性 ownership 映射存在 |
| issues/known_issues.md | 是 | 当前暂无确认问题 |
| issues/fixed_issues.md | 是 | 当前暂无修复问题 |
| xts/pass | 是 | 18 个 pass 用例 |
| xts/fail_compile | 是 | 当前无 fail_compile 用例，仅保留目录 |
| xts/fail_runtime | 是 | 3 个 fail_runtime 用例 |
| xts/regression | 是 | 当前无 regression 用例，仅保留目录 |
| xts/boundary | 是 | 7 个 boundary 用例 |

## Stage Reports Check

| 阶段 | 报告文件 | 是否存在 | 备注 |
|---|---|---|---|
| Stage 0 | type_stage0_generation_report.md | 是 | 已存在 |
| Stage 1 | type_stage1_generation_report.md | 是 | 已存在 |
| Stage 2 | type_stage2_quality_convergence_report.md | 是 | current |

## Coverage Matrix Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| coverage_matrix 是否存在 | 是 | 根 coverage matrix 存在 |
| 实际 .ets 是否已回填矩阵 | 是 | Stage 1 追加生成状态表记录 28 个实际路径 |
| 是否存在 planned 但未生成用例 | 是 | 见 `type_gap_list.md` |
| 是否存在 created 但实际文件缺失 | 未发现 | Stage 1 状态表路径均存在 |
| 是否存在路径失效 | 未发现 | 后续可脚本化复核 |

## Candidate Index Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| candidate index 是否存在 | 是 | `type_first_batch_candidate_index.md` 存在 |
| Stage 1 candidate 是否回填 | 是 | 已追加 Stage 1 Candidate Status |
| 是否存在实际文件但 candidate 缺失 | 未发现明显缺失 | 3 个新增 fail_runtime/bigint boundary 以追加 candidate 记录 |
| 是否存在 created 但实际文件缺失 | 未发现 | Stage 1 created 路径均存在 |

## Mapping Document Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| type_to_feature_mapping 是否存在 | 是 | 映射文档存在 |
| 是否说明 operators ownership | 是 | types 只保留类型边界，operators 承接全量运算 |
| 是否说明 function ownership | 是 | function call / return / closure 不归 types |
| 是否说明 class ownership | 是 | class 语义不归 types，instanceof 基础识别保留 |
| 是否说明 builtin API ownership | 是 | builtin 方法不归 types |
| 是否说明 TypeScript compatibility ownership | 是 | types 做边界索引，详细差异后续归 TS compatibility |

## Ownership Review Summary

| 类型 | 数量 | 说明 |
|---|---:|---|
| 明确归 types | 22 | typeof、基础 primitive/object、null/undefined、instanceof 基础识别等 |
| 疑似误放到 types | 0 | 未发现需移动的明确误放用例 |
| boundary 待确认 | 7 | Symbol、bigint literal、TS 类型语法边界 |

## Gap Summary

| 优先级 | 未覆盖数量 | 说明 |
|---|---:|---|
| P0 | 9 | 主要是 Symbol、ToBoolean、独立 null/undefined、Array.isArray dedicated 等 |
| P1 | 23 | 主要是 conversion、string/number 边界、function object、symbol 扩展等 |
| P2 | 8 | 主要是低优先级 conversion、custom instanceof、TS 泛型/接口边界等 |

## Notes

- 本阶段只做 Types 章节总质量收敛。
- 本阶段未进行 ECMA / test262 规范比对。
- 本阶段未进行 DevEco / hvigor / ohosTest 编译运行验证。
- 本阶段未修改 Declarations / Function 章节。
- 本阶段未提交 commit，未 push 远程仓库。
