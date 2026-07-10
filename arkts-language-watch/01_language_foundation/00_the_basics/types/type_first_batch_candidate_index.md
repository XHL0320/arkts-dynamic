# Type First Batch Candidate Index

## Summary

首批候选聚焦 P0 / P1 类型体系测试点，用于后续生成 XTS / ohosTest 用例。所有候选状态为 `planned`，本阶段不生成 `.ets` 用例。

| 项目 | 数量 |
|---|---:|
| P0 候选 | 22 |
| P1 候选 | 16 |
| P2 候选 | 2 |
| 总候选数量 | 40 |
| ohosTest 适用候选 | 35 |
| 需要 test262 对照候选 | 25 |

## Candidate List

| Candidate ID | 类型方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 Comparison | Related Chapter | Current Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TYPE-CAND-001 | typeof | typeof undefined 返回 "undefined" | pass | P0 | `types/xts/pass/type_typeof_undefined_pass.ets` | yes | yes | types | planned | ES 核心行为 |
| TYPE-CAND-002 | typeof | typeof null 返回 "object" | pass | P0 | `types/xts/pass/type_typeof_null_pass.ets` | yes | yes | types | planned | 历史遗留行为 |
| TYPE-CAND-003 | typeof | typeof function 返回 "function" | pass | P0 | `types/xts/pass/type_typeof_function_pass.ets` | yes | yes | types | planned | 可调用对象标识 |
| TYPE-CAND-004 | typeof | typeof array 返回 "object" | pass | P0 | `types/xts/pass/type_typeof_array_pass.ets` | yes | yes | types | planned | 数组是对象 |
| TYPE-CAND-005 | typeof | typeof bigint 返回 "bigint" | pass | P0 | `types/xts/pass/type_typeof_bigint_pass.ets` | yes | yes | types | planned | 类型识别 |
| TYPE-CAND-006 | typeof | typeof symbol 返回 "symbol" | pass | P0 | `types/xts/pass/type_typeof_symbol_pass.ets` | yes | yes | types | planned | 类型识别 |
| TYPE-CAND-007 | null_undefined | null 与 undefined 抽象相等 | pass | P0 | `types/xts/pass/type_null_undefined_equal_pass.ets` | yes | yes | types | planned | null == undefined true |
| TYPE-CAND-008 | null_undefined | null 与 undefined 严格不等 | pass | P0 | `types/xts/pass/type_null_undefined_strict_pass.ets` | yes | yes | types | planned | null === undefined false |
| TYPE-CAND-009 | number | number 基础值（整数/浮点） | pass | P0 | `types/xts/pass/type_number_basic_pass.ets` | yes | yes | types | planned | ES 核心行为 |
| TYPE-CAND-010 | number | number NaN 值 | pass | P0 | `types/xts/pass/type_number_nan_pass.ets` | yes | yes | types | planned | NaN !== NaN |
| TYPE-CAND-011 | number | number Infinity / -Infinity | pass | P1 | `types/xts/pass/type_number_infinity_pass.ets` | yes | yes | types | planned | 特殊值 |
| TYPE-CAND-012 | bigint | bigint 基础值 | pass | P0 | `types/xts/pass/type_bigint_basic_pass.ets` | yes | yes | types | planned | 字面量后缀 n |
| TYPE-CAND-013 | bigint | number 与 bigint 比较（1 == 1n） | pass | P1 | `types/xts/pass/type_bigint_equal_pass.ets` | yes | yes | types | planned | 抽象相等 true |
| TYPE-CAND-014 | bigint | number + bigint 混合运算 TypeError | fail_runtime | P0 | `types/xts/fail_runtime/type_bigint_mixed_type_error_fail_runtime.ets` | yes | yes | types | planned | 不能混合运算 |
| TYPE-CAND-015 | string | string 基础值 | pass | P0 | `types/xts/pass/type_string_basic_pass.ets` | yes | yes | types | planned | ES 核心行为 |
| TYPE-CAND-016 | boolean | boolean true/false 基础值 | pass | P0 | `types/xts/pass/type_boolean_basic_pass.ets` | yes | yes | types | planned | ES 核心行为 |
| TYPE-CAND-017 | boolean | ToBoolean falsy 值列表 | pass | P0 | `types/xts/pass/type_boolean_falsy_pass.ets` | yes | yes | types | planned | 6 个 falsy 值 |
| TYPE-CAND-018 | boolean | ToBoolean truthy 值（[]/{}） | pass | P0 | `types/xts/pass/type_boolean_truthy_pass.ets` | yes | yes | types | planned | 常见误判 |
| TYPE-CAND-019 | object | object 基础属性访问 | pass | P0 | `types/xts/pass/type_object_property_pass.ets` | yes | yes | types | planned | 基础行为 |
| TYPE-CAND-020 | array | array 运行时类型（typeof + isArray） | pass | P0 | `types/xts/pass/type_array_typeof_pass.ets` | yes | yes | types | planned | typeof + isArray |
| TYPE-CAND-021 | function_object | function object 运行时类型 | pass | P0 | `types/xts/pass/type_function_typeof_pass.ets` | yes | yes | types | planned | typeof "function" |
| TYPE-CAND-022 | instanceof | instanceof class instance | pass | P0 | `types/xts/pass/type_instanceof_class_pass.ets` | yes | yes | types / class | planned | 原型链判断 |
| TYPE-CAND-023 | instanceof | instanceof array | pass | P0 | `types/xts/pass/type_instanceof_array_pass.ets` | yes | yes | types / class | planned | Array 判断 |
| TYPE-CAND-024 | instanceof | instanceof 右侧非函数 TypeError | fail_runtime | P1 | `types/xts/fail_runtime/type_instanceof_non_function_fail_runtime.ets` | yes | yes | types | planned | 运行时异常 |
| TYPE-CAND-025 | conversion | ToBoolean false values | pass | P0 | `types/xts/pass/type_conv_toboolean_falsy_pass.ets` | yes | yes | types / conversion | planned | 6 个 falsy 值 |
| TYPE-CAND-026 | conversion | ToBoolean true values | pass | P0 | `types/xts/pass/type_conv_toboolean_truthy_pass.ets` | yes | yes | types / conversion | planned | []/{} truthy |
| TYPE-CAND-027 | conversion | ToNumber string | pass | P0 | `types/xts/pass/type_conv_tonumber_string_pass.ets` | yes | yes | types / conversion | planned | "123" → 123 |
| TYPE-CAND-028 | conversion | ToString number | pass | P0 | `types/xts/pass/type_conv_tostring_number_pass.ets` | yes | yes | types / conversion | planned | 123 → "123" |
| TYPE-CAND-029 | typescript_type_syntax | TypeScript 类型标注兼容边界 | boundary | P0 | `types/xts/boundary/type_ts_annotation_boundary.ets` | yes | no | types | planned | 运行时是否擦除 |
| TYPE-CAND-030 | typescript_type_syntax | union type 语法边界 | boundary | P0 | `types/xts/boundary/type_ts_union_boundary.ets` | yes | no | types | planned | 是否允许 |
| TYPE-CAND-031 | typescript_type_syntax | literal type 语法边界 | boundary | P0 | `types/xts/boundary/type_ts_literal_boundary.ets` | yes | no | types | planned | 是否允许 |
| TYPE-CAND-032 | typescript_type_syntax | type alias 语法边界 | boundary | P0 | `types/xts/boundary/type_ts_alias_boundary.ets` | yes | no | types | planned | 是否允许 |
| TYPE-CAND-033 | typescript_type_syntax | any / unknown 边界 | boundary | P0 | `types/xts/boundary/type_ts_any_unknown_boundary.ets` | yes | no | types | planned | 是否允许 |
| TYPE-CAND-034 | symbol | symbol 创建和唯一性 | pass | P0 | `types/xts/pass/type_symbol_unique_pass.ets` | yes | yes | types | planned | Symbol() |
| TYPE-CAND-035 | symbol | new Symbol() TypeError | fail_runtime | P1 | `types/xts/fail_runtime/type_symbol_new_fail_runtime.ets` | yes | yes | types | planned | Symbol 不是构造器 |
| TYPE-CAND-036 | number | NaN !== NaN 行为 | regression | P0 | `types/xts/regression/type_number_nan_not_equal_regression.ets` | yes | yes | types | planned | 规范核心验证 |
| TYPE-CAND-037 | number | number +0 / -0 区分 | boundary | P1 | `types/xts/boundary/type_number_zero_boundary.ets` | yes | yes | types | planned | 0 === -0 |
| TYPE-CAND-038 | boolean | Boolean([]) 为 true | boundary | P1 | `types/xts/boundary/type_boolean_empty_array_boundary.ets` | yes | yes | types | planned | 空数组 truthy |
| TYPE-CAND-039 | boolean | Boolean({}) 为 true | boundary | P1 | `types/xts/boundary/type_boolean_empty_object_boundary.ets` | yes | yes | types | planned | 空对象 truthy |
| TYPE-CAND-040 | instanceof | Symbol.hasInstance 自定义 instanceof | boundary | P2 | `types/xts/boundary/type_instanceof_custom_boundary.ets` | yes | no | types | planned | 是否支持 |

## Types Stage 1 Candidate Status

| Candidate ID | 类型方向 | Test Point | Case Type | Priority | 当前状态 | 阶段 | 实际路径 | Notes |
|---|---|---|---|---|---|---|---|---|
| TYPE-CAND-001 | typeof | typeof undefined 返回 "undefined" | pass | P0 | created | Types Stage 1 | `xts/pass/type_typeof_undefined_pass.ets` | generated |
| TYPE-CAND-002 | typeof | typeof null 返回 "object" | pass | P0 | created | Types Stage 1 | `xts/pass/type_typeof_null_pass.ets` | generated |
| TYPE-CAND-003 | typeof | typeof function 返回 "function" | pass | P0 | created | Types Stage 1 | `xts/pass/type_typeof_function_pass.ets` | generated |
| TYPE-CAND-004 | typeof | typeof array 返回 "object" | pass | P0 | created | Types Stage 1 | `xts/pass/type_typeof_object_array_pass.ets` | merged with object typeof |
| TYPE-CAND-005 | typeof | typeof bigint 返回 "bigint" | pass | P0 | created | Types Stage 1 | `xts/pass/type_typeof_bigint_pass.ets` | generated |
| TYPE-CAND-006 | typeof | typeof symbol 返回 "symbol" | boundary | P0 | boundary created | Types Stage 1 | `xts/boundary/type_typeof_symbol_boundary.ets` | pending confirmation |
| TYPE-CAND-007 | null_undefined | null == undefined | pass | P0 | created | Types Stage 1 | `xts/pass/type_null_undefined_loose_equal_pass.ets` | generated |
| TYPE-CAND-008 | null_undefined | null !== undefined | pass | P0 | created | Types Stage 1 | `xts/pass/type_null_undefined_strict_not_equal_pass.ets` | generated |
| TYPE-CAND-009 | number | number 基础值 | pass | P0 | created | Types Stage 1 | `xts/pass/type_number_basic_pass.ets` | generated |
| TYPE-CAND-010 | number | number NaN 值 | pass | P0 | created | Types Stage 1 | `xts/pass/type_number_nan_pass.ets` | generated |
| TYPE-CAND-011 | number | number Infinity / -Infinity | pass | P1 | created | Types Stage 1 | `xts/pass/type_number_infinity_pass.ets` | generated |
| TYPE-CAND-012 | bigint | bigint 基础值 | pass | P0 | created | Types Stage 1 | `xts/pass/type_bigint_basic_pass.ets` | generated |
| TYPE-CAND-013 | bigint | number 与 bigint 比较 | pass | P1 | created | Types Stage 1 | `xts/pass/type_number_bigint_compare_pass.ets` | generated |
| TYPE-CAND-014 | bigint | number + bigint TypeError | fail_runtime | P0 | created | Types Stage 1 | `xts/fail_runtime/type_number_bigint_add_fail_runtime.ets` | generated |
| TYPE-CAND-015 | string | string 基础值 | pass | P0 | created | Types Stage 1 | `xts/pass/type_string_basic_pass.ets` | generated |
| TYPE-CAND-016 | boolean | boolean true/false 基础值 | pass | P0 | created | Types Stage 1 | `xts/pass/type_boolean_basic_pass.ets` | generated |
| TYPE-CAND-019 | object | object 基础属性访问 | pass | P0 | created | Types Stage 1 | `xts/pass/type_object_basic_pass.ets` | generated |
| TYPE-CAND-020 | array | array 运行时类型 | pass | P0 | created | Types Stage 1 | `xts/pass/type_array_runtime_type_pass.ets` | generated |
| TYPE-CAND-022 | instanceof | instanceof class instance | pass | P0 | created | Types Stage 1 | `xts/pass/type_instanceof_class_pass.ets` | generated |
| TYPE-CAND-023 | instanceof | instanceof array | pass | P0 | created | Types Stage 1 | `xts/pass/type_instanceof_array_pass.ets` | generated |
| TYPE-CAND-029 | typescript_type_syntax | TypeScript 类型标注兼容边界 | boundary | P0 | boundary created | Types Stage 1 | `xts/boundary/type_ts_annotation_boundary.ets` | pending confirmation |
| TYPE-CAND-030 | typescript_type_syntax | union type 语法边界 | boundary | P0 | boundary created | Types Stage 1 | `xts/boundary/type_union_syntax_boundary.ets` | pending confirmation |
| TYPE-CAND-031 | typescript_type_syntax | literal type 语法边界 | boundary | P0 | boundary created | Types Stage 1 | `xts/boundary/type_literal_syntax_boundary.ets` | pending confirmation |
| TYPE-CAND-032 | typescript_type_syntax | type alias 语法边界 | boundary | P0 | boundary created | Types Stage 1 | `xts/boundary/type_alias_syntax_boundary.ets` | pending confirmation |
| TYPE-CAND-033 | typescript_type_syntax | any / unknown 边界 | boundary | P0 | boundary created | Types Stage 1 | `xts/boundary/type_any_unknown_boundary.ets` | pending confirmation |
| TYPE-CAND-STAGE1-001 | null_undefined | undefined property access runtime error | fail_runtime | P0 | created | Types Stage 1 | `xts/fail_runtime/type_undefined_property_access_fail_runtime.ets` | appended Stage 1 candidate |
| TYPE-CAND-STAGE1-002 | null_undefined | null property access runtime error | fail_runtime | P0 | created | Types Stage 1 | `xts/fail_runtime/type_null_property_access_fail_runtime.ets` | appended Stage 1 candidate |
| TYPE-CAND-STAGE1-003 | bigint | bigint literal support boundary | boundary | P0 | boundary created | Types Stage 1 | `xts/boundary/type_bigint_literal_boundary.ets` | appended Stage 1 candidate |
