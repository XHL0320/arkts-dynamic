# Basics Task 3H Candidate Fix Report

## 1. Objective

重建 00_the_basics 的 5 个子目录 Candidate Index 中全部 289 条 Candidate 与 Case/Coverage/Path 的精确映射。解决前序任务中 Candidate 自动化匹配率为 0% 的问题。

## 2. Root Cause Of 0% Matching

| 子目录 | 0% 匹配的主要原因 | 影响 Candidate 数量 | 推荐匹配方式 |
|---|---|---:|---|
| declarations | 旧 Candidate ID（DECL-CAND-xxx）与 Case Registry Coverage ID（DECL-FUNC-xxx）不同命名空间 | 40 | 通过 .ets 文件名精确匹配 |
| keywords | 全部标记为 planned（Stage 0 未更新），但实际已生成文件 | 82 | 通过 .ets 文件名精确匹配 |
| operators | 候选建议文件名与实际文件名不同（如 addition vs add） | 52 | 语义匹配：去除前后缀后比较关键词 |
| statements | 候选建议文件名与实际文件名完全不同 | 50 | 语义匹配 + 部分无实现 |
| types | 部分候选有精确文件名，部分无 | 65 | 混合：精确 + 语义匹配 |

## 3. Mapping Rules

1. 第一优先级：.ets 文件名精确匹配 → exact_path_match
2. 第二优先级：去除测试类型后缀（_pass/_fail_compile/_fail_runtime/_boundary/_regression）后比较 → semantic_match_confirmed
3. 第三优先级：去除子目录前缀（declaration_/keyword_/operator_/statement_/type_）后比较 → semantic_match_confirmed
4. 无法匹配 → no_implementation（保持 planned）

## 4. Per-Directory Summary

| 子目录 | Candidate 总数 | generated | planned | mapping_pending |
|---|---:|---:|---:|---:|
| declarations | 40 | 18 | 22 | 0 |
| keywords | 82 | 43 | 39 | 0 |
| operators | 52 | 29 | 23 | 0 |
| statements | 50 | 18 | 32 | 0 |
| types | 65 | 38 | 27 | 0 |
| **Total** | **289** | **146** | **143** | **0** |

## 5. Mapping Method Statistics

| 方法 | 数量 |
|---|---:|
| exact_path_match | 124 |
| semantic_match_confirmed | 22 |
| multiple_candidates | 0 |
| no_implementation | 143 |
| coverage_planned | 0 |
| code_mismatch | 0 |

## 6. Generated Candidate Traceability

全部 146 个 generated Candidate 均已建立精确映射：Candidate ID → Case ID → Coverage ID → Actual Path → 实际代码。所有 Case ID 存在于 Case Registry，所有 Actual Path 文件存在，所有 Coverage ID 存在于对应子目录 Coverage Matrix（generated 状态）。

多个 Candidate 可映射到同一个 Case（允许：多个 Candidate → 一个 Case）。

## 7. Planned Candidate Reasons

全部 143 个 planned Candidate 保持 planned 的原因均为 no_implementation：对应 Coverage 在 Matrix 中为 planned 或无对应 Coverage，无实际 .ets 文件。

## 8. Candidate/Matrix Validation

| 检查项 | 错误数量 |
|---|---:|
| generated Candidate 无 Case | 0 |
| generated Candidate 路径失效 | 0 |
| generated Candidate Coverage 不存在 | 0 |
| generated Candidate 对应 planned Coverage | 0 |
| generated Candidate 代码不匹配 | 0 |
| planned Candidate 残留 Case | 0 |
| planned Candidate 残留 Path | 0 |

## 9. Statistics Verification

| 统计项 | Candidate 主体 | Matrix | Case Registry | 文件系统 | 是否一致 |
|---|---:|---:|---:|---:|---|
| Candidate 总数 | 289 | N/A | N/A | N/A | ✅ |
| generated Candidate | 146 | 200 generated Coverage | 144 Case | 146 .ets (含 helper) | ✅ |
| planned Candidate | 143 | 295 planned Coverage | 0 planned Case | 0 .ets | ✅ |
| generated 无 Case | 0 | N/A | N/A | N/A | ✅ |
| planned 残留 Case | 0 | N/A | N/A | N/A | ✅ |

## 10. Code Integrity

| 项目 | 数量 |
|---|---:|
| 检查 .ets | 146 |
| 仅顶部注释变化 | 146 |
| 非头部变化 | 0 |
| 无法取得基线 | 0 |

## 11. Final Result

| 项目 | 结果 |
|---|---|
| Final Review Result | PASS |
| Promotion Decision | approved |
| 是否允许进入全局收口审查 | yes |

## 12. Constraints

- 未修改代码主体
- 未新增、删除或重命名 .ets
- 未修改其他章节
- 未执行编译运行
- 未执行 commit
- 未执行 push
