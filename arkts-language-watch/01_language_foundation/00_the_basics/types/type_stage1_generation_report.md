# Type Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增 pass 用例数量 | 18 |
| 新增 fail_compile 用例数量 | 0 |
| 新增 fail_runtime 用例数量 | 3 |
| 新增 boundary 用例数量 | 7 |
| 新增 regression 用例数量 | 0 |
| 新增 .ets 文件总数 | 28 |
| 更新 coverage_matrix 文件数量 | 1 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | 类型方向 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `xts/pass/type_typeof_undefined_pass.ets` | typeof | pass | typeof undefined | 是 | 是 |
| `xts/pass/type_typeof_null_pass.ets` | typeof | pass | typeof null | 是 | 是 |
| `xts/pass/type_typeof_function_pass.ets` | typeof | pass | typeof function | 是 | 是 |
| `xts/pass/type_typeof_object_array_pass.ets` | typeof | pass | typeof object / array | 是 | 是 |
| `xts/pass/type_typeof_bigint_pass.ets` | typeof | pass | typeof bigint | 是 | 是 |
| `xts/boundary/type_typeof_symbol_boundary.ets` | typeof | boundary | typeof symbol | 否 | 是 |
| `xts/pass/type_null_undefined_loose_equal_pass.ets` | null_undefined | pass | null == undefined | 是 | 是 |
| `xts/pass/type_null_undefined_strict_not_equal_pass.ets` | null_undefined | pass | null !== undefined | 是 | 是 |
| `xts/fail_runtime/type_undefined_property_access_fail_runtime.ets` | null_undefined | fail_runtime | undefined property access | 是 | 是 |
| `xts/fail_runtime/type_null_property_access_fail_runtime.ets` | null_undefined | fail_runtime | null property access | 是 | 是 |
| `xts/pass/type_number_basic_pass.ets` | number | pass | number basic value | 是 | 是 |
| `xts/pass/type_number_nan_pass.ets` | number | pass | NaN not equal itself | 是 | 是 |
| `xts/pass/type_number_infinity_pass.ets` | number | pass | Infinity / -Infinity | 是 | 是 |
| `xts/pass/type_bigint_basic_pass.ets` | bigint | pass | bigint basic value | 是 | 是 |
| `xts/pass/type_number_bigint_compare_pass.ets` | bigint | pass | number / bigint comparison | 是 | 是 |
| `xts/fail_runtime/type_number_bigint_add_fail_runtime.ets` | bigint | fail_runtime | number + bigint runtime error | 是 | 是 |
| `xts/boundary/type_bigint_literal_boundary.ets` | bigint | boundary | bigint literal support | 否 | 是 |
| `xts/pass/type_string_basic_pass.ets` | string | pass | string basic value | 是 | 是 |
| `xts/pass/type_boolean_basic_pass.ets` | boolean | pass | boolean basic value | 是 | 是 |
| `xts/pass/type_object_basic_pass.ets` | object | pass | object basic property access | 是 | 是 |
| `xts/pass/type_array_runtime_type_pass.ets` | array | pass | array runtime type | 是 | 是 |
| `xts/pass/type_instanceof_array_pass.ets` | instanceof | pass | array instanceof Array | 是 | 是 |
| `xts/pass/type_instanceof_class_pass.ets` | instanceof | pass | class instance instanceof class | 是 | 是 |
| `xts/boundary/type_ts_annotation_boundary.ets` | typescript_type_syntax | boundary | TS type annotation syntax | 否 | 否 |
| `xts/boundary/type_union_syntax_boundary.ets` | typescript_type_syntax | boundary | union type syntax | 否 | 否 |
| `xts/boundary/type_literal_syntax_boundary.ets` | typescript_type_syntax | boundary | literal type syntax | 否 | 否 |
| `xts/boundary/type_alias_syntax_boundary.ets` | typescript_type_syntax | boundary | type alias syntax | 否 | 否 |
| `xts/boundary/type_any_unknown_boundary.ets` | typescript_type_syntax | boundary | any / unknown syntax | 否 | 否 |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `xts/boundary/type_typeof_symbol_boundary.ets` | typeof symbol | Symbol 支持状态需要工具链确认 | 官方工具链编译运行 + test262 对照 |
| `xts/boundary/type_bigint_literal_boundary.ets` | bigint literal | bigint literal 支持状态需要确认 | 官方工具链编译运行 |
| `xts/boundary/type_ts_annotation_boundary.ets` | TS type annotation | 动态 ArkTS 对 TS 类型标注的兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_union_syntax_boundary.ets` | union type syntax | union type 语法兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_literal_syntax_boundary.ets` | literal type syntax | literal type 语法兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_alias_syntax_boundary.ets` | type alias syntax | type alias 语法兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_any_unknown_boundary.ets` | any / unknown syntax | any / unknown 支持状态未确认 | 官方工具链编译验证 |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `coverage_matrix.md` | 追加 Types Stage 1 生成状态表，记录 28 个实际路径 |
| `type_first_batch_candidate_index.md` | 追加 Types Stage 1 candidate 状态表，标记 created / boundary created |
| `type_stage1_generation_report.md` | 新增 Stage 1 生成报告 |

## Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| typeof 基础行为 | 归 `00_the_basics/types` |
| instanceof 基础行为 | 归 `00_the_basics/types`，后续与 `class` / `operators` 联动 |
| number / bigint 类型边界 | 归 `00_the_basics/types`，具体运算符全量行为后续归 `operators` |
| TypeScript type annotation | 归 `types` 做边界索引，详细兼容差异后续映射到 `02_typescript_compatibility` |
| builtin 方法行为 | 不归 types，本阶段不生成 |

## Notes

- 本阶段生成 Types 基础类型 P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范对齐，待首轮用例生成完成后统一比对。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未修改 declarations / function。
- 本阶段未提交 commit，未 push 远程仓库。
