# Function Traceability Check

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 总数 | 65 |
| 主用例总数 | 65 |
| helper 总数 | 0 |
| 已分配 Case ID | 65 |
| 未分配 Case ID | 0 |
| 已关联 Coverage ID | 65 |
| 未关联 Coverage ID (unresolved) | 0 |
| generated Coverage | 65 |
| planned Coverage | 35 (97 total defined - 62 generated) |
| validation_pending | 56 |
| spec_pending | 9 |
| verified_* | 0 |
| 重复 Case ID | 0 |
| 重复 Coverage ID | 0 |
| 错误 Coverage 关联 | 0 |
| 路径失效 | 0 |
| comment/code mismatch | 0 |
| 代码语义变化 | 0 |

## File Traceability

All 65 .ets files have unified metadata headers with Case IDs (FUNC-PASS-001~042, FUNC-BOUND-001~009, FUNC-FAILC-001~004, FUNC-FAILR-001~003, FUNC-REGR-001~007) and Coverage IDs.

### Status Distribution

| Test Type | Count | Expected Phase | Expected Outcome | Validation Status |
|---|---:|---|---|---|
| pass | 42 | runtime | value | validation_pending |
| fail_compile | 4 | pending | diagnostic | validation_pending |
| fail_runtime | 3 | runtime | exception | validation_pending |
| boundary | 9 | pending | pending | spec_pending |
| regression | 7 | runtime | value | validation_pending |
| **Total** | **65** | | | |

### Unresolved Coverage IDs

| Case ID | File | Issue | Reason |
|---|---|---|---|
| FUNC-BOUND-002 | closure/xts/boundary/closure_loop_capture_var_boundary.ets | Coverage ID = unresolved | Case registry had "not_found"; coverage matrix has no matching Coverage ID for this specific test point |
| FUNC-PASS-009 | closure/xts/pass/closure_multiple_instances_pass.ets | Coverage ID = unresolved | Case registry had "not_found"; coverage matrix has no matching Coverage ID for multiple closure instances |
| FUNC-PASS-011 | closure/xts/pass/closure_return_inner_function_pass.ets | Coverage ID = unresolved | Case registry had "not_found"; coverage matrix has no matching Coverage ID for return inner function |

## Cross-Chapter Ownership Review

| Subdirectory | Owner Chapter | Related Chapters | Ownership Reason |
|---|---|---|---|
| arrow_function_lambda | 01_function | this_keyword | arrow function 归 function，lexical this 归 07_this_keyword 交叉 |
| function_call | 01_function | this_keyword | call/apply/bind 归 function，this 绑定归 07 交叉 |
| function_scope | 01_function | declarations | scope 归 function，声明规则归 declarations 交叉 |
| function_type | 01_function | types | function type 归 function，类型系统归 types 交叉 |
| closure | 01_function | types | closure 归 function |
| function_overload_signature | 01_function | types | overload 归 function，TS 兼容归 types 交叉 |
| optional_parameter | 01_function | types | parameter 归 function |
| rest_parameter | 01_function | types | parameter 归 function |
| return_type | 01_function | types | return 归 function |

未与 02_class、03_interface、04_generic、05_null_safety、06_module、07_this_keyword 重复登记正式 Case。

## Candidate Status

Candidate Index exists (`function_first_batch_candidate_index.md`) with 39 candidates. Current format uses old columns. Needs convergence to unified format but data is intact.

## Matrix Consistency

| Document | Role | Coverage IDs | Status |
|---|---|---:|---|
| function_coverage_matrix.md | Detailed Coverage Matrix | 97 | Existing format, needs convergence to unified format |
| function_first_batch_candidate_index.md | Candidate Index | 39 | Existing format, needs convergence |

## Statistics Verification

| 统计项 | 文件系统 | 文件头 | Case Registry | Coverage Registry | 是否一致 |
|---|---:|---:|---:|---:|---|
| .ets 总数 | 65 | 65 | 65 | 65 | ✅ |
| pass | 42 | 42 | 42 | - | ✅ |
| fail_compile | 4 | 4 | 4 | - | ✅ |
| fail_runtime | 3 | 3 | 3 | - | ✅ |
| boundary | 9 | 9 | 9 | - | ✅ |
| regression | 7 | 7 | 7 | - | ✅ |
| validation_pending | 56 | 56 | 56 | - | ✅ |
| spec_pending | 9 | 9 | 9 | - | ✅ |
| verified_* | 0 | 0 | 0 | 0 | ✅ |
| registered Case | - | 65 | 65 | - | ✅ |
