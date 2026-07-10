# Operator First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 52 |
| P0 候选数量 | 37 |
| P1 候选数量 | 15 |
| P2 候选数量 | 0 |
| Stage 1 已生成数量 | 33 |
| 仍为 planned 数量 | 19 |

## Candidate List

| Candidate ID | 运算符方向 | 测试点 | 用例类型 | 优先级 | 建议文件路径 | 是否适合 ohosTest | 是否需要 test262 对照 | 关联章节 | 当前状态 | 阶段 | 实际路径 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| OP-CAND-001 | arithmetic | number addition | pass | P0 | operators/xts/pass/operator_arithmetic_number_addition.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_arithmetic_number_add_pass.ets | number addition |
| OP-CAND-002 | arithmetic | string concatenation | pass | P0 | operators/xts/pass/operator_arithmetic_string_concatenation.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_arithmetic_string_concat_pass.ets | plus operator branch |
| OP-CAND-003 | arithmetic | boolean numeric conversion | pass | P0 | operators/xts/pass/operator_arithmetic_boolean_conversion.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_arithmetic_boolean_conversion_pass.ets | ToNumber |
| OP-CAND-004 | arithmetic | null numeric conversion | pass | P0 | operators/xts/pass/operator_arithmetic_null_conversion.ets | yes | yes | operators / types | planned | — | — | ToNumber(null) |
| OP-CAND-005 | arithmetic | undefined numeric conversion NaN | pass | P0 | operators/xts/pass/operator_arithmetic_undefined_nan.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_arithmetic_undefined_nan_pass.ets | NaN |
| OP-CAND-006 | arithmetic | number bigint addition TypeError | fail_runtime | P0 | operators/xts/fail_runtime/operator_arithmetic_number_bigint_add_fail_runtime.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/fail_runtime/operator_arithmetic_number_bigint_add_fail_runtime.ets | mixed numeric runtime error |
| OP-CAND-007 | arithmetic | Infinity arithmetic | pass | P1 | operators/xts/pass/operator_arithmetic_infinity.ets | yes | yes | operators / types | planned | — | — | Infinity boundary |
| OP-CAND-008 | equality | NaN equality | pass | P0 | operators/xts/pass/operator_equality_nan.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_equality_nan_pass.ets | NaN != NaN |
| OP-CAND-009 | equality | strict equality primitives | pass | P0 | operators/xts/pass/operator_equality_strict_primitives.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_equality_strict_primitives_pass.ets | === |
| OP-CAND-010 | equality | loose equality null undefined | pass | P0 | operators/xts/pass/operator_equality_null_undefined.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_equality_loose_null_undefined_pass.ets | == |
| OP-CAND-011 | equality | loose equality number string | pass | P0 | operators/xts/pass/operator_equality_number_string.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_equality_loose_number_string_pass.ets | ToNumber |
| OP-CAND-012 | equality | object equality identity | pass | P1 | operators/xts/pass/operator_equality_object_identity.ets | yes | yes | operators | planned | — | — | reference identity |
| OP-CAND-013 | relational | NaN relational comparison | pass | P0 | operators/xts/pass/operator_relational_nan.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_relational_nan_pass.ets | false comparisons |
| OP-CAND-014 | relational | number bigint comparison | pass | P0 | operators/xts/pass/operator_relational_number_bigint.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_relational_number_bigint_pass.ets | comparison allowed boundary |
| OP-CAND-015 | relational | string relational comparison | pass | P1 | operators/xts/pass/operator_relational_string.ets | yes | yes | operators / types | planned | — | — | lexicographic |
| OP-CAND-016 | logical | logical and short-circuit | pass | P0 | operators/xts/pass/operator_logical_and_short_circuit.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/pass/operator_logical_and_short_circuit_pass.ets | short circuit |
| OP-CAND-017 | logical | logical or short-circuit | pass | P0 | operators/xts/pass/operator_logical_or_short_circuit.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/pass/operator_logical_or_short_circuit_pass.ets | short circuit |
| OP-CAND-018 | logical | logical not truthy falsy | pass | P0 | operators/xts/pass/operator_logical_not_truthy_falsy.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_logical_not_truthy_falsy_pass.ets | ToBoolean |
| OP-CAND-019 | nullish_coalescing | nullish coalescing null undefined | pass | P0 | operators/xts/pass/operator_nullish_null_undefined.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_nullish_null_undefined_pass.ets | ?? |
| OP-CAND-020 | nullish_coalescing | nullish coalescing false zero empty string | pass | P0 | operators/xts/pass/operator_nullish_preserve_falsy.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_nullish_preserve_falsy_pass.ets | ?? vs || |
| OP-CAND-021 | optional_chaining | optional chaining property access | pass | P0 | operators/xts/pass/operator_optional_property_access.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_optional_property_access_pass.ets | ?. |
| OP-CAND-022 | optional_chaining | optional chaining method call | pass | P0 | operators/xts/pass/operator_optional_method_call.ets | yes | yes | operators / function | planned | — | — | ?.() |
| OP-CAND-023 | optional_chaining | optional chaining short-circuit | pass | P0 | operators/xts/pass/operator_optional_short_circuit.ets | yes | yes | operators | planned | — | — | no side effect |
| OP-CAND-024 | optional_chaining | optional chaining assignment fail_compile | fail_compile | P0 | operators/xts/fail_compile/operator_optional_assignment_fail_compile.ets | no | yes | operators | created | Operators Stage 1 | operators/xts/fail_compile/operator_optional_assignment_fail_compile.ets | invalid assignment target |
| OP-CAND-025 | typeof_operator | typeof undeclared | pass | P0 | operators/xts/pass/operator_typeof_undeclared.ets | yes | yes | operators / types | created | Operators Stage 1 | operators/xts/pass/operator_typeof_undeclared_pass.ets | no ReferenceError |
| OP-CAND-026 | typeof_operator | typeof function | pass | P0 | operators/xts/pass/operator_typeof_function.ets | yes | yes | operators / types / function | created | Operators Stage 1 | operators/xts/pass/operator_typeof_function_pass.ets | function tag |
| OP-CAND-027 | typeof_operator | typeof TDZ variable | fail_runtime | P0 | operators/xts/fail_runtime/operator_typeof_tdz_fail_runtime.ets | yes | yes | operators / declarations | created | Operators Stage 1 | operators/xts/fail_runtime/operator_typeof_tdz_fail_runtime.ets | TDZ not bypassed |
| OP-CAND-028 | delete_operator | delete object property | pass | P0 | operators/xts/pass/operator_delete_object_property.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/pass/operator_delete_object_property_pass.ets | delete result |
| OP-CAND-029 | delete_operator | delete non-configurable boundary | boundary | P1 | operators/xts/boundary/operator_delete_non_configurable_boundary.ets | no | yes | operators / builtin | created | Operators Stage 1 | operators/xts/boundary/operator_delete_non_configurable_boundary.ets | descriptor support boundary |
| OP-CAND-030 | in_operator | in operator property exists | pass | P0 | operators/xts/pass/operator_in_property_exists.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/pass/operator_in_property_exists_pass.ets | property existence |
| OP-CAND-031 | in_operator | in operator non-object right TypeError | fail_runtime | P0 | operators/xts/fail_runtime/operator_in_non_object_rhs_fail_runtime.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/fail_runtime/operator_in_non_object_rhs_fail_runtime.ets | RHS TypeError |
| OP-CAND-032 | instanceof | instanceof class | pass | P0 | operators/xts/pass/operator_instanceof_class.ets | yes | yes | operators / class / types | created | Operators Stage 1 | operators/xts/pass/operator_instanceof_class_pass.ets | prototype chain |
| OP-CAND-033 | instanceof | instanceof non-callable boundary | fail_runtime | P0 | operators/xts/fail_runtime/operator_instanceof_non_callable_fail_runtime.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/fail_runtime/operator_instanceof_non_callable_fail_runtime.ets | RHS TypeError |
| OP-CAND-034 | bitwise | bitwise and or xor | pass | P1 | operators/xts/pass/operator_bitwise_and_or_xor.ets | yes | yes | operators | planned | — | — | ToInt32 |
| OP-CAND-035 | bitwise | bitwise not | pass | P1 | operators/xts/pass/operator_bitwise_not.ets | yes | yes | operators | planned | — | — | ~ |
| OP-CAND-036 | bitwise | left shift | pass | P1 | operators/xts/pass/operator_bitwise_left_shift.ets | yes | yes | operators | planned | — | — | << |
| OP-CAND-037 | bitwise | signed right shift | pass | P1 | operators/xts/pass/operator_bitwise_signed_right_shift.ets | yes | yes | operators | planned | — | — | >> |
| OP-CAND-038 | bitwise | unsigned right shift | pass | P1 | operators/xts/pass/operator_bitwise_unsigned_right_shift.ets | yes | yes | operators | planned | — | — | >>> |
| OP-CAND-039 | compound_assignment | compound assignment plus | pass | P0 | operators/xts/pass/operator_compound_plus_assignment.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/pass/operator_compound_plus_assignment_pass.ets | left evaluated once |
| OP-CAND-040 | compound_assignment | compound assignment left evaluation once | regression | P0 | operators/xts/regression/operator_compound_left_once_regression.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/regression/operator_compound_left_once_regression.ets | regression |
| OP-CAND-041 | update | prefix increment | pass | P0 | operators/xts/pass/operator_update_prefix_increment.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/pass/operator_update_prefix_increment_pass.ets | ++x |
| OP-CAND-042 | update | postfix increment | pass | P0 | operators/xts/pass/operator_update_postfix_increment.ets | yes | yes | operators | created | Operators Stage 1 | operators/xts/pass/operator_update_postfix_increment_pass.ets | x++ |
| OP-CAND-043 | update | update invalid target | fail_compile | P0 | operators/xts/fail_compile/operator_update_invalid_target_fail_compile.ets | no | yes | operators | planned | — | — | invalid target |
| OP-CAND-044 | conditional | conditional true branch only | pass | P0 | operators/xts/pass/operator_conditional_true_branch.ets | yes | yes | operators / statements | created | Operators Stage 1 | operators/xts/pass/operator_conditional_true_branch_pass.ets | branch eval |
| OP-CAND-045 | conditional | conditional false branch only | pass | P0 | operators/xts/pass/operator_conditional_false_branch.ets | yes | yes | operators / statements | created | Operators Stage 1 | operators/xts/pass/operator_conditional_false_branch_pass.ets | branch eval |
| OP-CAND-046 | comma | comma expression evaluation order | pass | P1 | operators/xts/pass/operator_comma_evaluation_order.ets | yes | yes | operators | planned | — | — | order |
| OP-CAND-047 | assignment | assignment invalid target | fail_compile | P0 | operators/xts/fail_compile/operator_assignment_invalid_target_fail_compile.ets | no | yes | operators | planned | — | — | invalid target |
| OP-CAND-048 | assignment | assignment evaluation order | pass | P1 | operators/xts/pass/operator_assignment_evaluation_order.ets | yes | yes | operators | planned | — | — | order |
| OP-CAND-049 | new_operator | new non-constructor TypeError | fail_runtime | P1 | operators/xts/fail_runtime/operator_new_non_constructor_fail_runtime.ets | yes | yes | operators / class / function | planned | — | — | constructor boundary |
| OP-CAND-050 | new_operator | new class instance | pass | P1 | operators/xts/pass/operator_new_class_instance.ets | yes | yes | operators / class | planned | — | — | new expression |
| OP-CAND-051 | await_yield_boundary | await expression boundary | boundary | P1 | operators/xts/boundary/operator_await_expression_boundary.ets | no | no | operators / async | planned | — | — | pending support |
| OP-CAND-052 | await_yield_boundary | yield expression boundary | boundary | P1 | operators/xts/boundary/operator_yield_expression_boundary.ets | no | no | operators / generator | planned | — | — | pending support |
