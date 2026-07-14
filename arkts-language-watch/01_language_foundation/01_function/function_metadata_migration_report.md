# Function Metadata Migration Report

## Summary

| 项目 | 精确数量 |
|---|---:|
| 扫描 .ets 总数 | 65 |
| 主用例数量 | 65 |
| helper 数量 | 0 |
| 修改文件头数量 | 65 |
| 分配 Case ID 数量 | 65 |
| 未分配 Case ID 数量 | 0 |
| 关联 Coverage ID 数量 | 62 |
| 未关联 Coverage ID 数量 | 3 (unresolved) |
| 新增 Coverage ID 数量 | 0 |
| unresolved 数量 | 3 |
| 错误 Coverage 关联数量 | 0 |
| 更新 Matrix 行数量 | 97 (existing, needs format convergence) |
| 更新 Candidate 行数量 | 39 (existing, needs format convergence) |
| 更新 Registry 记录数量 | 65 |
| 代码语义修改数量 | 0 |

## Exact Asset Statistics

| 统计项 | 精确数量 |
|---|---:|
| .ets 总数 | 65 |
| pass | 42 |
| fail_compile | 4 |
| fail_runtime | 3 |
| boundary | 9 |
| regression | 7 |
| integration | 0 |
| helper | 0 |
| validation_pending | 56 |
| spec_pending | 9 |
| verified_* | 0 |

## Assigned Case IDs

| Case ID Range | Test Type | Count |
|---|---|---:|
| FUNC-PASS-001 ~ FUNC-PASS-042 | pass | 42 |
| FUNC-BOUND-001 ~ FUNC-BOUND-009 | boundary | 9 |
| FUNC-REGR-001 ~ FUNC-REGR-007 | regression | 7 |
| FUNC-FAILC-001 ~ FUNC-FAILC-004 | fail_compile | 4 |
| FUNC-FAILR-001 ~ FUNC-FAILR-003 | fail_runtime | 3 |
| **Total** | | **65** |

## Function Direction Statistics

| 子目录 | 用例数量 |
|---|---:|
| arrow_function_lambda | 8 |
| closure | 8 |
| function_call | 7 |
| function_overload_signature | 7 |
| function_scope | 8 |
| function_type | 10 |
| optional_parameter | 6 |
| rest_parameter | 6 |
| return_type | 5 |
| **Total** | **65** |

## Coverage Mapping Review

| Case ID | 代码实际语义 | Coverage ID | 是否确认 | 备注 |
|---|---|---|---|---|
| FUNC-PASS-003 | arrow function expression body | ARROW-FUNCTION-LAMBDA-0001, FUNCTION-TOTAL-0057 | ✅ | 2 Coverage IDs 紧密相关 |
| FUNC-PASS-004 | arrow function lexical this | ARROW-FUNCTION-LAMBDA-0006, FUNCTION-TOTAL-0059 | ✅ | this_keyword 交叉 |
| FUNC-PASS-013 | call/apply/bind | FUNCTION-CALL-0005/0006, FUNCTION-TOTAL-0045/0046 | ✅ | 4 Coverage IDs, apply+bind 紧密相关 |
| FUNC-PASS-016 | basic function call | FUNCTION-CALL-0001, FUNCTION-TOTAL-0041 | ✅ | 基础调用 |
| FUNC-PASS-028 | function as value | FUNCTION-TOTAL-0049, FUNCTION-TYPE-0001 | ✅ | first-class function |
| FUNC-BOUND-001 | arrow no arguments | ARROW-FUNCTION-LAMBDA-0007, FUNCTION-TOTAL-0060 | ✅ | boundary, spec_pending |
| FUNC-PASS-009 | closure multiple instances | unresolved | ⚠️ | Coverage ID not found in registry/matrix |
| FUNC-PASS-011 | closure return inner function | unresolved | ⚠️ | Coverage ID not found in registry/matrix |
| FUNC-BOUND-002 | closure loop capture var | unresolved | ⚠️ | Coverage ID not found in registry/matrix |
| FUNC-FAILC-004 | return outside function | FUNCTION-TOTAL-0030, RETURN-TYPE-0006 | ✅ | fail_compile, diagnostic |

(全部 65 个 Case 已审查，62 个已确认，3 个 unresolved)

## Coverage Matrix Changes

- function_coverage_matrix.md: 97 Coverage IDs, existing format, needs convergence to unified format
- Coverage Status: 62 generated (have Cases), 35 planned (no Cases)
- 3 files have unresolved Coverage IDs (closure subdirectory)

## Candidate Index Status

- function_first_batch_candidate_index.md: 39 candidates, existing format
- Needs convergence to unified format but data is intact
- 27 candidates marked "created" (have files), 12 marked "planned"

## Registry Changes

| Registry | Change | Count |
|---|---|---:|
| Case Registry | proposed_id → registered | 65 |
| Case Registry Summary | 已有明确 Case ID | 1252 → 1317 |
| Case Registry Summary | 建议分配 Case ID | 363 → 298 |
| Coverage Registry | Status normalized | 145 values |
| Unlinked Case List | FUNC- entries removed | 65 |
| Unlinked Case List Summary | 无 Case ID | 298 → 233 |

## Cross-Chapter Ownership

| 子目录 | Owner Chapter | Related Chapters | 原因 |
|---|---|---|---|
| arrow_function_lambda | 01_function | this_keyword | arrow function 归 function，lexical this 归 07 交叉 |
| function_call | 01_function | this_keyword | call/apply/bind 归 function，this 绑定归 07 交叉 |
| function_scope | 01_function | declarations | scope 归 function，声明规则归 declarations 交叉 |
| function_type | 01_function | types | function type 归 function，类型系统归 types 交叉 |
| function_overload_signature | 01_function | types | overload 归 function，TS 兼容归 types 交叉 |

## Full Code Integrity Check

| 项目 | 精确数量 |
|---|---:|
| 应检查文件 | 65 |
| 已完成全量检查 | 65 |
| 仅顶部注释变化 | 65 |
| 非头部变化 | 0 |
| 无法取得基线 | 0 |
| 代码语义修改 | 0 |

**方法**: 对全部 65 个 .ets 文件执行 `git diff --unified=0`，逐行检查变更内容。所有 `+`/`-` 行均属于 `/* ... */` 注释块。0 代码语义变更。

## Semantic Sampling

| 子目录 | 抽查数 | PASS | Warning | FAIL |
|---|---:|---:|---:|---:|
| arrow_function_lambda | 5 | 5 | 0 | 0 |
| closure | 5 | 4 | 1 | 0 |
| function_call | 5 | 5 | 0 | 0 |
| function_overload_signature | 5 | 5 | 0 | 0 |
| function_scope | 5 | 5 | 0 | 0 |
| function_type | 5 | 5 | 0 | 0 |
| optional_parameter | 5 | 5 | 0 | 0 |
| rest_parameter | 5 | 5 | 0 | 0 |
| return_type | 5 | 5 | 0 | 0 |
| **Total** | **45** | **44** | **1** | **0** |

Warning: 3 closure files have unresolved Coverage IDs.

## Statistics Verification

| 统计项 | 文件系统 | 文件头 | Inventory | Traceability | Migration | Registry | 是否一致 |
|---|---:|---:|---:|---:|---:|---:|---|
| .ets 总数 | 65 | 65 | 65 | 65 | 65 | 65 | ✅ |
| pass | 42 | 42 | 42 | 42 | 42 | 42 | ✅ |
| fail_compile | 4 | 4 | 4 | 4 | 4 | 4 | ✅ |
| fail_runtime | 3 | 3 | 3 | 3 | 3 | 3 | ✅ |
| boundary | 9 | 9 | 9 | 9 | 9 | 9 | ✅ |
| regression | 7 | 7 | 7 | 7 | 7 | 7 | ✅ |
| validation_pending | 56 | 56 | 56 | 56 | 56 | 56 | ✅ |
| spec_pending | 9 | 9 | 9 | 9 | 9 | 9 | ✅ |
| verified_* | 0 | 0 | 0 | 0 | 0 | 0 | ✅ |

## Constraints

- 未修改函数代码主体
- 未修改参数列表、返回类型、函数体、overload 声明
- 未修改 async/generator 标记、默认参数、rest 参数
- 未新增、删除或重命名 .ets
- 未修改其他章节
- 未执行编译运行
- 未执行 commit
- 未执行 push

## Recommended Next Step

任务 3G-Review：审查 01_function 元数据迁移结果。重点关注 3 个 unresolved Coverage IDs 和 coverage_matrix.md 格式收敛。
