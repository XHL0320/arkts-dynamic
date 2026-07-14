# Null Safety Metadata Migration Report

## Summary

| 项目 | 数量 |
|---|---:|
| 扫描 .ets 总数 | 30 |
| 主用例数量 | 30 |
| helper 数量 | 0 |
| 修改主用例文件头数量 | 30 |
| 分配 Case ID 数量 | 30 |
| 未分配 Case ID 数量 | 0 |
| 关联 Coverage ID 数量 | 30 |
| 未关联 Coverage ID 数量 | 0 |
| 新增 Coverage ID 数量 | 0 |
| unresolved 数量 | 0 |
| 错误 Coverage 关联数量 | 0 |
| 更新 Matrix 行数量 | 92 |
| 更新 Candidate 行数量 | 45 |
| 更新 Registry 记录数量 | 30 |
| 代码语义修改数量 | 0 |
| import/export 修改数量 | 0 |
| import 路径修改数量 | 0 |

## Assigned Case IDs

| Case ID | 文件路径 | Test Type | Coverage ID |
|---|---|---|---|
| NULL-PASS-001 | pass/null_safety_default_parameter_null_pass.ets | pass | NS-DEFPARAM-002 |
| NULL-PASS-002 | pass/null_safety_default_parameter_undefined_pass.ets | pass | NS-DEFPARAM-001, NS-DEFPARAM-003 |
| NULL-PASS-003 | pass/null_safety_function_return_null_pass.ets | pass | NS-RET-002 |
| NULL-PASS-004 | pass/null_safety_function_return_undefined_pass.ets | pass | NS-RET-001, NS-RET-003 |
| NULL-PASS-005 | pass/null_safety_null_basic_pass.ets | pass | NS-NULL-001, NS-NULL-003, NS-NULL-004, NS-NULL-005 |
| NULL-PASS-006 | pass/null_safety_null_undefined_equality_pass.ets | pass | NS-EQ-001~004 |
| NULL-PASS-007 | pass/null_safety_nullish_coalescing_falsy_values_pass.ets | pass | NS-NC-003, NS-NC-004, NS-NC-005 |
| NULL-PASS-008 | pass/null_safety_nullish_coalescing_null_pass.ets | pass | NS-NC-001, NS-NC-002 |
| NULL-PASS-009 | pass/null_safety_optional_chaining_element_pass.ets | pass | NS-OC-ELEM-001, NS-OC-ELEM-002 |
| NULL-PASS-010 | pass/null_safety_optional_chaining_method_pass.ets | pass | NS-OC-CALL-001, NS-OC-CALL-002 |
| NULL-PASS-011 | pass/null_safety_optional_chaining_property_pass.ets | pass | NS-OC-PROP-001~003 |
| NULL-PASS-012 | pass/null_safety_optional_parameter_omitted_pass.ets | pass | NS-OPTPARAM-001, NS-OPTPARAM-002 |
| NULL-PASS-013 | pass/null_safety_optional_property_absent_pass.ets | pass | NS-OP-001, NS-OP-003, NS-OP-005 |
| NULL-PASS-014 | pass/null_safety_optional_property_undefined_pass.ets | pass | NS-OP-002, NS-OP-005 |
| NULL-PASS-015 | pass/null_safety_typeof_null_pass.ets | pass | NS-TYPEOF-001, NS-TYPEOF-002, NS-TYPEOF-005 |
| NULL-PASS-016 | pass/null_safety_undefined_basic_pass.ets | pass | NS-UNDEF-001, NS-UNDEF-003, NS-UNDEF-004 |
| NULL-FAILR-001 | fail_runtime/null_safety_method_call_on_null_fail_runtime.ets | fail_runtime | NS-RT-003 |
| NULL-FAILR-002 | fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets | fail_runtime | NS-RT-004 |
| NULL-FAILR-003 | fail_runtime/null_safety_property_access_on_null_fail_runtime.ets | fail_runtime | NS-RT-001 |
| NULL-FAILR-004 | fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets | fail_runtime | NS-RT-002 |
| NULL-BOUND-001 | boundary/null_safety_class_field_null_boundary.ets | boundary | NS-CF-001, NS-CF-002 |
| NULL-BOUND-002 | boundary/null_safety_generic_nullable_boundary.ets | boundary | NS-GEN-002 |
| NULL-BOUND-003 | boundary/null_safety_interface_optional_member_boundary.ets | boundary | NS-IOM-001~003 |
| NULL-BOUND-004 | boundary/null_safety_non_null_assertion_boundary.ets | boundary | NS-NNA-001~003 |
| NULL-BOUND-005 | boundary/null_safety_nonnullable_boundary.ets | boundary | NS-GEN-001 |
| NULL-BOUND-006 | boundary/null_safety_nullish_assignment_boundary.ets | boundary | NS-NA-001~003 |
| NULL-BOUND-007 | boundary/null_safety_return_type_nullish_boundary.ets | boundary | NS-RET-004 |
| NULL-BOUND-008 | boundary/null_safety_union_null_boundary.ets | boundary | NS-UNION-001 |
| NULL-REGR-001 | regression/null_safety_basic_regression.ets | regression | NS-EQ-001, NS-NC-001, NS-NULL-001 |
| NULL-REGR-002 | regression/null_safety_optional_chaining_regression.ets | regression | NS-OC-PROP-001, NS-OC-PROP-002, NS-OC-PROP-004 |

## Coverage Mapping Review

| Case ID | 代码实际语义 | Coverage ID | 是否确认 | 备注 |
|---|---|---|---|---|
| NULL-PASS-005 | null 值行为（typeof "object"、falsy、ToNumber=0、ToString="null"） | NS-NULL-001, 003, 004, 005 | ✅ | null 值不被混为 undefined |
| NULL-PASS-008 | null ?? 和 undefined ?? 返回 fallback | NS-NC-001, NC-002 | ✅ | ?? 未与 \|\| 混淆 |
| NULL-PASS-011 | obj?.prop 可选链属性 | NS-OC-PROP-001~003 | ✅ | 可选链未与可选属性声明混淆 |
| NULL-FAILR-003 | null.property 抛 TypeError | NS-RT-001 | ✅ | 运行时异常正确 |
| NULL-BOUND-004 | value! 非空断言 | NS-NNA-001~003 | ✅ | 非空断言未与类型断言混淆 |
| NULL-BOUND-005 | NonNullable<T> | NS-GEN-001 | ✅ | 泛型工具类型正确 |

(全部 30 个 Case 的 Coverage 关联均已通过代码语义确认)

## Coverage Matrix Changes

**Task 3C Review Correction**: Coverage Matrix 主体表格未被任务 3C 修改。主体仍为旧格式（是否已有用例列均为 `no`），Stage 1 Update Summary 部分列出了 30 个生成文件。主体与 Summary 存在双重事实风险，需后续任务收敛。
- 30 个 .ets 文件已生成并嵌入 Case ID/Coverage ID 元数据
- Coverage Matrix 主体表格未更新为新格式
- 主体 `是否已有用例` 列仍为 `no`，与实际生成状态不一致

## Candidate Index Changes

**Task 3C Review Correction**: Candidate Index 主体表格未被任务 3C 修改。主体仍为旧格式，所有行 Status 列仍为 `planned`。Stage 1 Update Summary 部分列出了 30 个 Created Candidates，但主体表格未同步更新。
- 30 个 candidate 实际已生成对应 .ets 文件
- Candidate Index 主体表格 Status 列未从 `planned` 更新为 `generated`
- 主体与 Created Candidates 列表存在不一致

## Statistics Verification

| 统计项 | 文件系统实际值 | 文件头统计值 | 报告值 | 是否一致 |
|---|---:|---:|---:|---|
| .ets 总数 | 30 | 30 | 30 | ✅ |
| pass | 16 | 16 | 16 | ✅ |
| fail_runtime | 4 | 4 | 4 | ✅ |
| boundary | 8 | 8 | 8 | ✅ |
| regression | 2 | 2 | 2 | ✅ |
| validation_pending | 22 | 22 | 22 | ✅ |
| spec_pending | 8 | 8 | 8 | ✅ |
| verified_* | 0 | 0 | 0 | ✅ |

## Constraints

- 未修改测试代码语义
- 未新增、删除或重命名 .ets
- 未修改其他章节
- 未执行编译运行
- 未执行 commit
- 未执行 push

## Recommended Next Step

任务 3C-Fix 已完成。05_null_safety 元数据迁移已最终收敛。可以进入任务 3D：04_generic。

## Task 3C Fix Changes

| 文件 | 实际修改内容 | 修改数量 |
|---|---|---:|
| coverage_matrix.md | 主体格式和状态收敛（旧格式→统一新格式，96 行 Coverage Status/Case ID/Actual Path/Validation Status） | 96 |
| null_safety_first_batch_candidate_index.md | 主体列和状态收敛（旧格式→统一新格式，45 candidate Generation Status/Validation Status） | 45 |
| language_foundation_case_id_registry.md | proposed_id → registered，Existing Case ID none → actual（30 NULL- 条目） | 30 |
| language_foundation_coverage_id_registry.md | NS-GEN-002 Case 修正（NULL-BOUND-008→002），NS-GEN-003/004 Case 移除（→none/planned），90 条非标准状态值规范化 | 93 |
| language_foundation_unlinked_case_list.md | 移除 30 条已注册 NULL- 条目，Summary 无 Case ID 计数 1580→1550 | 30 |
| language_foundation_coverage_id_registry.md Summary | 已有关联 Case 1888→1886，无关联 Case 3002→3004 | 2 |
| language_foundation_case_id_registry.md Summary | 已有明确 Case ID 35→65，建议分配 Case ID 1580→1550 | 2 |
| null_safety_generic_nullable_boundary.ets | Coverage ID: NS-GEN-003, NS-GEN-004 → NS-GEN-002 | 1 |
| null_safety_union_null_boundary.ets | Coverage ID: NS-GEN-002, NS-UNION-001 → NS-UNION-001；Description 和 Related Chapters 更新 | 1 |
| null_safety_traceability_check.md | Coverage 关联修正 + Task 3C Fix Update 节 | 2 |
| null_safety_task3c_review_report.md | 新增 Task 3C Fix Re-Review 节 | 1 |
| null_safety_task3c_fix_report.md | 新增 Fix Report | 1 |

### Fix Verification

| 检查项 | 结果 |
|---|---|
| 代码语义修改 | 0 |
| .ets 新增/删除/重命名 | 0 |
| 其他章节修改 | 0 |
| verified_* 数量 | 0 |
| 错误 Coverage 关联 | 0 |
| 非标准 Coverage 状态值 | 0 |
| proposed_id (05_null_safety) | 0 |
| Migration Report 声明与实际一致 | ✅ |
