# Null Safety Traceability Check

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 总数 | 30 |
| 主用例总数 | 30 |
| helper 总数 | 0 |
| 已分配 Case ID | 30 |
| 未分配 Case ID | 0 |
| 已关联 Coverage ID | 30 |
| 未关联 Coverage ID | 0 |
| generated Coverage | 30 |
| generated Candidate | 30 |
| validation_pending | 22 |
| spec_pending | 8 |
| verified_* | 0 |
| 重复 Case ID | 0 |
| 重复 Coverage ID | 0 |
| 错误 Coverage 关联 | 0 |
| 路径失效 | 0 |
| comment/code mismatch | 0 |

## File Traceability

| 文件路径 | Case ID | Coverage ID | Test Type | Expected Phase | Expected Outcome | Validation Status | 结果 |
|---|---|---|---|---|---|---|---|
| pass/null_safety_null_basic_pass.ets | NULL-PASS-005 | NS-NULL-001, NS-NULL-003, NS-NULL-004, NS-NULL-005 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_undefined_basic_pass.ets | NULL-PASS-016 | NS-UNDEF-001, NS-UNDEF-003, NS-UNDEF-004 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_typeof_null_pass.ets | NULL-PASS-015 | NS-TYPEOF-001, NS-TYPEOF-002, NS-TYPEOF-005 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_null_undefined_equality_pass.ets | NULL-PASS-006 | NS-EQ-001~004 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_nullish_coalescing_null_pass.ets | NULL-PASS-008 | NS-NC-001, NS-NC-002 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_nullish_coalescing_falsy_values_pass.ets | NULL-PASS-007 | NS-NC-003, NS-NC-004, NS-NC-005 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_optional_chaining_property_pass.ets | NULL-PASS-011 | NS-OC-PROP-001~003 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_optional_chaining_method_pass.ets | NULL-PASS-010 | NS-OC-CALL-001, NS-OC-CALL-002 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_optional_chaining_element_pass.ets | NULL-PASS-009 | NS-OC-ELEM-001, NS-OC-ELEM-002 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_optional_property_absent_pass.ets | NULL-PASS-013 | NS-OP-001, NS-OP-003, NS-OP-005 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_optional_property_undefined_pass.ets | NULL-PASS-014 | NS-OP-002, NS-OP-005 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_optional_parameter_omitted_pass.ets | NULL-PASS-012 | NS-OPTPARAM-001, NS-OPTPARAM-002 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_default_parameter_undefined_pass.ets | NULL-PASS-002 | NS-DEFPARAM-001, NS-DEFPARAM-003 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_default_parameter_null_pass.ets | NULL-PASS-001 | NS-DEFPARAM-002 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_function_return_undefined_pass.ets | NULL-PASS-004 | NS-RET-001, NS-RET-003 | pass | runtime | value | validation_pending | OK |
| pass/null_safety_function_return_null_pass.ets | NULL-PASS-003 | NS-RET-002 | pass | runtime | value | validation_pending | OK |
| fail_runtime/null_safety_property_access_on_null_fail_runtime.ets | NULL-FAILR-003 | NS-RT-001 | fail_runtime | runtime | exception | validation_pending | OK |
| fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets | NULL-FAILR-004 | NS-RT-002 | fail_runtime | runtime | exception | validation_pending | OK |
| fail_runtime/null_safety_method_call_on_null_fail_runtime.ets | NULL-FAILR-001 | NS-RT-003 | fail_runtime | runtime | exception | validation_pending | OK |
| fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets | NULL-FAILR-002 | NS-RT-004 | fail_runtime | runtime | exception | validation_pending | OK |
| boundary/null_safety_class_field_null_boundary.ets | NULL-BOUND-001 | NS-CF-001, NS-CF-002 | boundary | pending | pending | spec_pending | OK |
| boundary/null_safety_generic_nullable_boundary.ets | NULL-BOUND-002 | NS-GEN-002 | boundary | pending | pending | spec_pending | OK |
| boundary/null_safety_interface_optional_member_boundary.ets | NULL-BOUND-003 | NS-IOM-001~003 | boundary | pending | pending | spec_pending | OK |
| boundary/null_safety_non_null_assertion_boundary.ets | NULL-BOUND-004 | NS-NNA-001~003 | boundary | pending | pending | spec_pending | OK |
| boundary/null_safety_nonnullable_boundary.ets | NULL-BOUND-005 | NS-GEN-001 | boundary | pending | pending | spec_pending | OK |
| boundary/null_safety_nullish_assignment_boundary.ets | NULL-BOUND-006 | NS-NA-001~003 | boundary | pending | pending | spec_pending | OK |
| boundary/null_safety_return_type_nullish_boundary.ets | NULL-BOUND-007 | NS-RET-004 | boundary | pending | pending | spec_pending | OK |
| boundary/null_safety_union_null_boundary.ets | NULL-BOUND-008 | NS-UNION-001 | boundary | pending | pending | spec_pending | OK |
| regression/null_safety_basic_regression.ets | NULL-REGR-001 | NS-EQ-001, NS-NC-001, NS-NULL-001 | regression | runtime | value | validation_pending | OK |
| regression/null_safety_optional_chaining_regression.ets | NULL-REGR-002 | NS-OC-PROP-001, NS-OC-PROP-002, NS-OC-PROP-004 | regression | runtime | value | validation_pending | OK |

## Coverage Semantic Review

| Case ID | 代码实际语义 | Coverage ID | 结果 | 说明 |
|---|---|---|---|---|
| NULL-PASS-005 | null 基础值、typeof、Boolean、Number、String | NS-NULL-001 (null 基础), NS-NULL-003 (falsy), NS-NULL-004 (ToNumber), NS-NULL-005 (ToString) | ✅ | null 值行为正确关联 |
| NULL-PASS-008 | null ?? fallback 和 undefined ?? fallback | NS-NC-001 (null ??), NS-NC-002 (undefined ??) | ✅ | ?? 运算符正确关联，未与 \|\| 混淆 |
| NULL-PASS-011 | obj?.prop 非null返回值、null返回undefined | NS-OC-PROP-001 (非null), NS-OC-PROP-002 (null), NS-OC-PROP-003 (嵌套) | ✅ | 可选链正确关联，未与可选属性声明混淆 |
| NULL-FAILR-003 | null.property 抛 TypeError | NS-RT-001 (null property access) | ✅ | 运行时异常正确关联 |
| NULL-BOUND-004 | value! 非空断言 | NS-NNA-001 (assertion), NS-NNA-002 (erasure), NS-NNA-003 (null value) | ✅ | 非空断言正确关联，未与普通类型断言混淆 |
| NULL-BOUND-005 | NonNullable<T> | NS-GEN-001 (NonNullable) | ✅ | 泛型工具类型正确关联 |

(全部 30 个 Case 的 Coverage 关联均已通过代码语义确认)

## Unresolved Cases

无 unresolved 主用例。

## Statistics Verification

| 统计项 | 文件系统实际值 | 文件头统计值 | 是否一致 |
|---|---:|---:|---|
| .ets 总数 | 30 | 30 | ✅ |
| pass | 16 | 16 | ✅ |
| fail_runtime | 4 | 4 | ✅ |
| boundary | 8 | 8 | ✅ |
| regression | 2 | 2 | ✅ |
| validation_pending | 22 | 22 | ✅ |
| spec_pending | 8 | 8 | ✅ |
| verified_* | 0 | 0 | ✅ |
| Case ID 总数 | 30 | 30 | ✅ |
| 重复 Case ID | 0 | 0 | ✅ |

## Task 3C Fix Update

| 项目 | 修复前 | 修复后 |
|---|---|---|
| 错误 Coverage 关联 | 1 | 0 |
| Generic/NonNullable 语义问题 | 2 | 0 |
| Matrix 主体格式问题 | 1 | 0 (已收敛为新格式) |
| Candidate 主体列问题 | 1 | 0 (已收敛为新格式) |
| Registry Status 问题 | 30 (proposed_id) | 0 (全部 registered) |
| Coverage Registry 非标准状态 | 90 | 0 (全部规范化) |
| Unlinked Case List 05_null_safety 条目 | 30 | 0 (已移除) |

### Fix Details

| Case ID | 修复前 Coverage | 修复后 Coverage | 原因 |
|---|---|---|---|
| NULL-BOUND-002 | NS-GEN-003, NS-GEN-004 | NS-GEN-002 | 代码测试 T\|null（generic），NS-GEN-003 描述 T\|undefined 错绑 |
| NULL-BOUND-008 | NS-GEN-002, NS-UNION-001 | NS-UNION-001 | 代码为非泛型 string\|null，NS-GEN-002 为泛型方向 |

### Updated Coverage Counts

| 项目 | 数量 |
|---|---:|
| generated Coverage | 58 |
| planned Coverage | 38 |
| 总 Coverage | 96 |
| validation_pending | 50 |
| spec_pending | 8 |
| planned (validation) | 38 |
| verified_* | 0 |
