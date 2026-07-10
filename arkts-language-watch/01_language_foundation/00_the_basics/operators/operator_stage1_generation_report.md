# Operator Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增 pass 用例数量 | 26 |
| 新增 fail_compile 用例数量 | 1 |
| 新增 fail_runtime 用例数量 | 4 |
| 新增 boundary 用例数量 | 1 |
| 新增 regression 用例数量 | 1 |
| 新增 .ets 文件总数 | 33 |
| 更新 coverage_matrix 文件数量 | 1 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | 运算符方向 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `xts/pass/operator_arithmetic_number_add_pass.ets` | arithmetic | pass | number addition | yes | yes |
| `xts/pass/operator_arithmetic_string_concat_pass.ets` | arithmetic | pass | string concatenation by plus | yes | yes |
| `xts/pass/operator_arithmetic_boolean_conversion_pass.ets` | arithmetic | pass | boolean numeric conversion | yes | yes |
| `xts/pass/operator_arithmetic_undefined_nan_pass.ets` | arithmetic | pass | undefined arithmetic produces NaN | yes | yes |
| `xts/pass/operator_equality_strict_primitives_pass.ets` | equality | pass | strict equality primitives | yes | yes |
| `xts/pass/operator_equality_loose_null_undefined_pass.ets` | equality | pass | loose equality null undefined | yes | yes |
| `xts/pass/operator_equality_loose_number_string_pass.ets` | equality | pass | loose equality number string | yes | yes |
| `xts/pass/operator_equality_nan_pass.ets` | equality | pass | NaN equality false | yes | yes |
| `xts/pass/operator_relational_number_bigint_pass.ets` | relational | pass | number bigint relational comparison | yes | yes |
| `xts/pass/operator_relational_nan_pass.ets` | relational | pass | NaN relational comparison false | yes | yes |
| `xts/pass/operator_logical_and_short_circuit_pass.ets` | logical | pass | logical and short-circuit | yes | yes |
| `xts/pass/operator_logical_or_short_circuit_pass.ets` | logical | pass | logical or short-circuit | yes | yes |
| `xts/pass/operator_logical_not_truthy_falsy_pass.ets` | logical | pass | logical not truthy falsy | yes | yes |
| `xts/pass/operator_nullish_null_undefined_pass.ets` | nullish_coalescing | pass | nullish coalescing null undefined | yes | yes |
| `xts/pass/operator_nullish_preserve_falsy_pass.ets` | nullish_coalescing | pass | nullish coalescing false zero empty string | yes | yes |
| `xts/pass/operator_optional_property_access_pass.ets` | optional_chaining | pass | optional chaining property access | yes | yes |
| `xts/pass/operator_typeof_undeclared_pass.ets` | typeof_operator | pass | typeof undeclared | yes | yes |
| `xts/pass/operator_typeof_function_pass.ets` | typeof_operator | pass | typeof function | yes | yes |
| `xts/pass/operator_delete_object_property_pass.ets` | delete_operator | pass | delete object property | yes | yes |
| `xts/pass/operator_in_property_exists_pass.ets` | in_operator | pass | in operator property exists | yes | yes |
| `xts/pass/operator_instanceof_class_pass.ets` | instanceof | pass | instanceof class | yes | yes |
| `xts/pass/operator_compound_plus_assignment_pass.ets` | compound_assignment | pass | compound assignment plus | yes | yes |
| `xts/pass/operator_update_prefix_increment_pass.ets` | update | pass | prefix increment | yes | yes |
| `xts/pass/operator_update_postfix_increment_pass.ets` | update | pass | postfix increment | yes | yes |
| `xts/pass/operator_conditional_true_branch_pass.ets` | conditional | pass | conditional true branch only | yes | yes |
| `xts/pass/operator_conditional_false_branch_pass.ets` | conditional | pass | conditional false branch only | yes | yes |
| `xts/fail_compile/operator_optional_assignment_fail_compile.ets` | optional_chaining | fail_compile | optional chaining assignment invalid target | no | yes |
| `xts/fail_runtime/operator_arithmetic_number_bigint_add_fail_runtime.ets` | arithmetic | fail_runtime | number bigint addition TypeError | yes | yes |
| `xts/fail_runtime/operator_typeof_tdz_fail_runtime.ets` | typeof_operator | fail_runtime | typeof TDZ variable ReferenceError | yes | yes |
| `xts/fail_runtime/operator_in_non_object_rhs_fail_runtime.ets` | in_operator | fail_runtime | in operator non-object RHS TypeError | yes | yes |
| `xts/fail_runtime/operator_instanceof_non_callable_fail_runtime.ets` | instanceof | fail_runtime | instanceof non-callable RHS TypeError | yes | yes |
| `xts/boundary/operator_delete_non_configurable_boundary.ets` | delete_operator | boundary | delete non-configurable property | no | yes |
| `xts/regression/operator_compound_left_once_regression.ets` | compound_assignment | regression | compound assignment left evaluated once | yes | yes |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `xts/boundary/operator_delete_non_configurable_boundary.ets` | delete non-configurable property | Object.defineProperty 支持状态和严格模式 delete 行为待确认 | runtime smoke + compiler 确认 |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `coverage_matrix.md` | 将 33 个已生成测试点的"是否已有用例"从 no 改为是，更新建议路径为实际路径，备注改为 Operators Stage 1 generated |
| `operator_first_batch_candidate_index.md` | 将 33 个已生成 candidate 的当前状态从 planned 改为 created，新增阶段和实际路径列，未生成 candidate 保持 planned |

## Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| number / bigint 混合运算 | 归 `00_the_basics/operators` |
| typeof 基础类型返回值 | 已在 `00_the_basics/types` 有基础覆盖，operators 只补表达式边界（TDZ、undeclared） |
| optional chaining / nullish coalescing | 归 `00_the_basics/operators` |
| function call / closure | 不归 operators |
| builtin API 方法行为 | 不归 operators |
| delete / in / instanceof 表达式行为 | 归 `00_the_basics/operators` |
| logical short-circuit / conditional branch | 归 `00_the_basics/operators` |
| compound assignment left evaluation once | 归 `00_the_basics/operators`（regression） |

## Notes

- 本阶段生成 Operators P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范对齐，待 `00_the_basics` 首轮完成后统一比对。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未修改 declarations / types / function。
- 本阶段未提交 commit，未 push 远程仓库。
