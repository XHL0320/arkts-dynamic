# Null Safety Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增 pass 用例数量 | 16 |
| 新增 fail_compile 用例数量 | 0 |
| 新增 fail_runtime 用例数量 | 4 |
| 新增 boundary 用例数量 | 8 |
| 新增 regression 用例数量 | 2 |
| 新增 .ets 文件总数 | 30 |
| 更新 coverage_matrix 文件数量 | 1 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | Null Safety 方向 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `xts/pass/null_safety_null_basic_pass.ets` | null_basic | pass | null 基础值 | yes | yes |
| `xts/pass/null_safety_undefined_basic_pass.ets` | undefined_basic | pass | undefined 基础值 | yes | yes |
| `xts/pass/null_safety_typeof_null_pass.ets` | typeof_nullish | pass | typeof null/undefined | yes | yes |
| `xts/pass/null_safety_null_undefined_equality_pass.ets` | null_undefined_equality | pass | null/undefined 相等性 | yes | yes |
| `xts/pass/null_safety_optional_chaining_property_pass.ets` | optional_chaining_property | pass | 可选链属性 | yes | yes |
| `xts/pass/null_safety_optional_chaining_method_pass.ets` | optional_chaining_call | pass | 可选链方法 | yes | yes |
| `xts/pass/null_safety_optional_chaining_element_pass.ets` | optional_chaining_element | pass | 可选链元素 | yes | yes |
| `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | nullish_coalescing | pass | null/undefined ?? | yes | yes |
| `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | nullish_coalescing | pass | ?? vs || falsy | yes | yes |
| `xts/pass/null_safety_optional_property_absent_pass.ets` | optional_property | pass | 可选属性缺省 | yes | yes |
| `xts/pass/null_safety_optional_property_undefined_pass.ets` | optional_property | pass | 可选属性 undefined | yes | yes |
| `xts/pass/null_safety_optional_parameter_omitted_pass.ets` | optional_parameter | pass | 可选参数省略 | yes | yes |
| `xts/pass/null_safety_default_parameter_undefined_pass.ets` | default_parameter | pass | 默认参数 undefined | yes | yes |
| `xts/pass/null_safety_default_parameter_null_pass.ets` | default_parameter | pass | 默认参数 null | yes | yes |
| `xts/pass/null_safety_function_return_undefined_pass.ets` | function_return_nullish | pass | 函数返回 undefined | yes | yes |
| `xts/pass/null_safety_function_return_null_pass.ets` | function_return_nullish | pass | 函数返回 null | yes | yes |
| `xts/fail_runtime/null_safety_property_access_on_null_fail_runtime.ets` | runtime_exception_nullish | fail_runtime | null 属性访问 TypeError | yes | yes |
| `xts/fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets` | runtime_exception_nullish | fail_runtime | undefined 属性访问 TypeError | yes | yes |
| `xts/fail_runtime/null_safety_method_call_on_null_fail_runtime.ets` | runtime_exception_nullish | fail_runtime | null 方法调用 TypeError | yes | yes |
| `xts/fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets` | runtime_exception_nullish | fail_runtime | undefined 方法调用 TypeError | yes | yes |
| `xts/boundary/null_safety_nullish_assignment_boundary.ets` | nullish_assignment | boundary | ??= 支持 | yes | no |
| `xts/boundary/null_safety_non_null_assertion_boundary.ets` | non_null_assertion_boundary | boundary | ! 非空断言 | yes | no |
| `xts/boundary/null_safety_nonnullable_boundary.ets` | generic_nonnullable_boundary | boundary | NonNullable<T> | yes | no |
| `xts/boundary/null_safety_union_null_boundary.ets` | union_nullish_boundary | boundary | T | null union | yes | no |
| `xts/boundary/null_safety_return_type_nullish_boundary.ets` | function_return_nullish | boundary | 返回类型 nullish | yes | no |
| `xts/boundary/null_safety_class_field_null_boundary.ets` | class_field_nullish | boundary | class field null | yes | no |
| `xts/boundary/null_safety_interface_optional_member_boundary.ets` | interface_optional_member | boundary | interface 可选成员 | yes | no |
| `xts/boundary/null_safety_generic_nullable_boundary.ets` | generic_nonnullable_boundary | boundary | generic nullable | yes | no |
| `xts/regression/null_safety_optional_chaining_regression.ets` | optional_chaining_property | regression | 可选链回归 | yes | yes |
| `xts/regression/null_safety_basic_regression.ets` | null_basic | regression | null safety 基础回归 | yes | yes |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `xts/boundary/null_safety_nullish_assignment_boundary.ets` | ??= 空值赋值 | ??= 支持待确认 | compiler / runtime |
| `xts/boundary/null_safety_non_null_assertion_boundary.ets` | ! 非空断言 | ! 支持待确认 | compiler |
| `xts/boundary/null_safety_nonnullable_boundary.ets` | NonNullable<T> | NonNullable 支持待确认 | compiler |
| `xts/boundary/null_safety_union_null_boundary.ets` | T | null union | union with null 支持待确认 | compiler |
| `xts/boundary/null_safety_return_type_nullish_boundary.ets` | 返回类型 nullish | strict null return 检查待确认 | compiler |
| `xts/boundary/null_safety_class_field_null_boundary.ets` | class field null | field null 初始化检查待确认 | compiler |
| `xts/boundary/null_safety_interface_optional_member_boundary.ets` | interface 可选成员 | optional member 编译期检查待确认 | compiler |
| `xts/boundary/null_safety_generic_nullable_boundary.ets` | generic nullable | generic nullable 支持待确认 | compiler |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `coverage_matrix.md` | 追加 Stage 1 Update Summary，记录 30 个生成文件与 coverage ID 映射 |
| `null_safety_first_batch_candidate_index.md` | 追加 Stage 1 Update Summary，30 个 candidate 标记为 created，15 个保持 planned，8 个文件无直接 candidate |

## Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| null / undefined basic | null_safety/types 交叉，本阶段从 null safety 视角覆盖 |
| optional chaining | null_safety/operators 交叉，本阶段覆盖 nullish 场景 |
| nullish coalescing | null_safety/operators 交叉，本阶段覆盖 nullish 场景 |
| optional parameter | null_safety/function 交叉，本阶段覆盖 nullish 场景 |
| optional property | null_safety/interface 交叉，本阶段覆盖 nullish 场景 |
| class field nullish | null_safety/class 交叉，本阶段只做 boundary |
| NonNullable / union nullish | null_safety/generic/TS compatibility 交叉，本阶段只做 boundary |
| runtime exception | null_safety 负责空值访问异常场景 |
| function call/return/closure | 不归 null_safety，归 `01_function` |
| class constructor/member/inheritance | 不归 null_safety，归 `02_class` |

## Notes

- 本阶段生成 Null Safety P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范对齐。
- 本阶段未进行 TypeScript compatibility 完整映射。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未修改 `04_generic` / `03_interface` / `02_class` / `01_function` / `00_the_basics`。
- 本阶段未提交 commit，未 push 远程仓库。
- 30 个 .ets 文件中 8 个为 boundary 类型，反映 TS/ArkTS null safety 类型系统支持状态不确定。
- 4 个 fail_runtime 文件验证 null/undefined 属性访问和方法调用的 TypeError。
- 8 个文件无直接 candidate ID，已记录在 candidate index 的 Additional Files 部分。
