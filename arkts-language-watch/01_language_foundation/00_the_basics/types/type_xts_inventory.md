# Type XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 28 |
| pass 用例数量 | 18 |
| fail_compile 用例数量 | 0 |
| fail_runtime 用例数量 | 3 |
| boundary 用例数量 | 7 |
| regression 用例数量 | 0 |
| helper module 文件数量 | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 18 | `xts/pass/` |
| fail_compile | 0 | `xts/fail_compile/` |
| fail_runtime | 3 | `xts/fail_runtime/` |
| boundary | 7 | `xts/boundary/` |
| regression | 0 | `xts/regression/` |
| helper module | 0 | N/A |

## Type Direction Summary

| 类型方向 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| typeof | 5 | 0 | 0 | 1 | 0 | 6 |
| null_undefined | 2 | 0 | 2 | 0 | 0 | 4 |
| number | 3 | 0 | 0 | 0 | 0 | 3 |
| bigint | 2 | 0 | 1 | 1 | 0 | 4 |
| string | 1 | 0 | 0 | 0 | 0 | 1 |
| boolean | 1 | 0 | 0 | 0 | 0 | 1 |
| object | 1 | 0 | 0 | 0 | 0 | 1 |
| array | 1 | 0 | 0 | 0 | 0 | 1 |
| function_object | 1 | 0 | 0 | 0 | 0 | 1 |
| instanceof | 2 | 0 | 0 | 0 | 0 | 2 |
| typescript_type_syntax | 0 | 0 | 0 | 5 | 0 | 5 |
| conversion | 0 | 0 | 0 | 0 | 0 | 0 |
| unknown | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | 类型方向 | 推测测试点 | 所属阶段 | 备注 |
|---:|---|---|---|---|---|---|
| 1 | `xts/pass/type_typeof_undefined_pass.ets` | pass | typeof | typeof undefined | Stage 1 | stable candidate |
| 2 | `xts/pass/type_typeof_null_pass.ets` | pass | typeof | typeof null | Stage 1 | stable candidate |
| 3 | `xts/pass/type_typeof_function_pass.ets` | pass | function_object | typeof function | Stage 1 | type-level only |
| 4 | `xts/pass/type_typeof_object_array_pass.ets` | pass | typeof | typeof object / array | Stage 1 | merged smoke |
| 5 | `xts/pass/type_typeof_bigint_pass.ets` | pass | typeof | typeof bigint | Stage 1 | bigint support still needs validation |
| 6 | `xts/boundary/type_typeof_symbol_boundary.ets` | boundary | typeof | typeof symbol | Stage 1 | pending confirmation |
| 7 | `xts/pass/type_null_undefined_loose_equal_pass.ets` | pass | null_undefined | null == undefined | Stage 1 | operator boundary reference |
| 8 | `xts/pass/type_null_undefined_strict_not_equal_pass.ets` | pass | null_undefined | null !== undefined | Stage 1 | operator boundary reference |
| 9 | `xts/fail_runtime/type_undefined_property_access_fail_runtime.ets` | fail_runtime | null_undefined | undefined property access | Stage 1 | runtime negative |
| 10 | `xts/fail_runtime/type_null_property_access_fail_runtime.ets` | fail_runtime | null_undefined | null property access | Stage 1 | runtime negative |
| 11 | `xts/pass/type_number_basic_pass.ets` | pass | number | number basic value | Stage 1 | stable candidate |
| 12 | `xts/pass/type_number_nan_pass.ets` | pass | number | NaN not equal itself | Stage 1 | operator boundary reference |
| 13 | `xts/pass/type_number_infinity_pass.ets` | pass | number | Infinity / -Infinity | Stage 1 | stable candidate |
| 14 | `xts/pass/type_bigint_basic_pass.ets` | pass | bigint | bigint basic value | Stage 1 | support pending validation |
| 15 | `xts/pass/type_number_bigint_compare_pass.ets` | pass | bigint | number / bigint comparison | Stage 1 | operator boundary reference |
| 16 | `xts/fail_runtime/type_number_bigint_add_fail_runtime.ets` | fail_runtime | bigint | number + bigint runtime error | Stage 1 | type boundary only |
| 17 | `xts/boundary/type_bigint_literal_boundary.ets` | boundary | bigint | bigint literal support | Stage 1 | pending confirmation |
| 18 | `xts/pass/type_string_basic_pass.ets` | pass | string | string basic value | Stage 1 | stable candidate |
| 19 | `xts/pass/type_boolean_basic_pass.ets` | pass | boolean | boolean basic value | Stage 1 | stable candidate |
| 20 | `xts/pass/type_object_basic_pass.ets` | pass | object | object property access | Stage 1 | builtin methods not covered |
| 21 | `xts/pass/type_array_runtime_type_pass.ets` | pass | array | array runtime type | Stage 1 | no Array method coverage |
| 22 | `xts/pass/type_instanceof_array_pass.ets` | pass | instanceof | array instanceof Array | Stage 1 | class/operator linkage |
| 23 | `xts/pass/type_instanceof_class_pass.ets` | pass | instanceof | class instance instanceof class | Stage 1 | class linkage |
| 24 | `xts/boundary/type_ts_annotation_boundary.ets` | boundary | typescript_type_syntax | TS type annotation syntax | Stage 1 | pending confirmation |
| 25 | `xts/boundary/type_union_syntax_boundary.ets` | boundary | typescript_type_syntax | union type syntax | Stage 1 | pending confirmation |
| 26 | `xts/boundary/type_literal_syntax_boundary.ets` | boundary | typescript_type_syntax | literal type syntax | Stage 1 | pending confirmation |
| 27 | `xts/boundary/type_alias_syntax_boundary.ets` | boundary | typescript_type_syntax | type alias syntax | Stage 1 | pending confirmation |
| 28 | `xts/boundary/type_any_unknown_boundary.ets` | boundary | typescript_type_syntax | any / unknown syntax | Stage 1 | pending confirmation |
