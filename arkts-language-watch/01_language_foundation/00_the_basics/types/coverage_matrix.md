# Type Coverage Matrix

| ID | 类型方向 | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|
| TYPE-NUM-001 | number | number 基础整数值 | pass | P0 | no | `types/xts/pass/type_number_basic_pass` | types | 低 | ES 核心行为 |
| TYPE-NUM-002 | number | number 浮点值 | pass | P0 | no | `types/xts/pass/type_number_float_pass` | types | 低 | IEEE 754 |
| TYPE-NUM-003 | number | number NaN 值 | pass | P0 | no | `types/xts/pass/type_number_nan_pass` | types | 中 | NaN !== NaN |
| TYPE-NUM-004 | number | number Infinity / -Infinity | pass | P1 | no | `types/xts/pass/type_number_infinity_pass` | types | 低 | 特殊值 |
| TYPE-NUM-005 | number | number +0 / -0 区分 | boundary | P1 | no | `types/xts/boundary/type_number_zero_boundary` | types | 中 | 0 === -0 |
| TYPE-NUM-006 | number | number MAX_SAFE_INTEGER 边界 | boundary | P2 | no | `types/xts/boundary/type_number_safe_int_boundary` | types | 低 | 2^53-1 |
| TYPE-NUM-007 | number | Number() 转换 string | pass | P1 | no | `types/xts/pass/type_number_convert_string_pass` | types / conversion | 低 | ToNumber |
| TYPE-NUM-008 | number | NaN !== NaN 行为 | regression | P0 | no | `types/xts/regression/type_number_nan_not_equal_regression` | types | 中 | 规范核心验证 |
| TYPE-STR-001 | string | string 基础值 | pass | P0 | no | `types/xts/pass/type_string_basic_pass` | types | 低 | ES 核心行为 |
| TYPE-STR-002 | string | string 空字符串 | pass | P0 | no | `types/xts/pass/type_string_empty_pass` | types | 低 | "" 是 falsy |
| TYPE-STR-003 | string | string 模板字符串 | pass | P1 | no | `types/xts/pass/type_string_template_pass` | types | 低 | 模板语法 |
| TYPE-STR-004 | string | string 不可变性 | pass | P1 | no | `types/xts/pass/type_string_immutable_pass` | types | 低 | 字符串不可变 |
| TYPE-STR-005 | string | String() 转换 number | pass | P1 | no | `types/xts/pass/type_string_convert_number_pass` | types / conversion | 低 | ToString |
| TYPE-STR-006 | string | String(null) / String(undefined) | pass | P1 | no | `types/xts/pass/type_string_convert_null_undefined_pass` | types / conversion | 低 | "null" / "undefined" |
| TYPE-STR-007 | string | string 非空 truthy | pass | P0 | no | `types/xts/pass/type_string_truthy_pass` | types | 低 | 非空字符串 truthy |
| TYPE-BOOL-001 | boolean | boolean true/false 基础值 | pass | P0 | no | `types/xts/pass/type_boolean_basic_pass` | types | 低 | ES 核心行为 |
| TYPE-BOOL-002 | boolean | ToBoolean falsy 值列表 | pass | P0 | no | `types/xts/pass/type_boolean_falsy_pass` | types / conversion | 中 | 6 个 falsy 值 |
| TYPE-BOOL-003 | boolean | ToBoolean truthy 值（"0"/"false"/[]/{}） | pass | P0 | no | `types/xts/pass/type_boolean_truthy_pass` | types / conversion | 中 | 常见误判 |
| TYPE-BOOL-004 | boolean | Boolean([]) 为 true | boundary | P1 | no | `types/xts/boundary/type_boolean_empty_array_boundary` | types / conversion | 中 | 空数组 truthy |
| TYPE-BOOL-005 | boolean | Boolean({}) 为 true | boundary | P1 | no | `types/xts/boundary/type_boolean_empty_object_boundary` | types / conversion | 中 | 空对象 truthy |
| TYPE-BOOL-006 | boolean | 双重否定 !! 转换 | pass | P1 | no | `types/xts/pass/type_boolean_double_not_pass` | types / operators | 低 | 常用模式 |
| TYPE-BIG-001 | bigint | bigint 基础值 | pass | P0 | no | `types/xts/pass/type_bigint_basic_pass` | types | 低 | 字面量后缀 n |
| TYPE-BIG-002 | bigint | bigint 大整数值 | pass | P0 | no | `types/xts/pass/type_bigint_large_pass` | types | 低 | 任意精度 |
| TYPE-BIG-003 | bigint | typeof bigint 返回 "bigint" | pass | P0 | no | `types/xts/pass/type_bigint_typeof_pass` | types / typeof | 低 | 类型识别 |
| TYPE-BIG-004 | bigint | number + bigint 混合运算 TypeError | fail_runtime | P0 | no | `types/xts/fail_runtime/type_bigint_mixed_type_error_fail_runtime` | types | 高 | 不能混合运算 |
| TYPE-BIG-005 | bigint | number == bigint 抽象相等 | pass | P1 | no | `types/xts/pass/type_bigint_equal_pass` | types / operators | 中 | 1 == 1n true |
| TYPE-BIG-006 | bigint | number === bigint 严格不等 | pass | P1 | no | `types/xts/pass/type_bigint_strict_not_equal_pass` | types / operators | 中 | 1 === 1n false |
| TYPE-BIG-007 | bigint | 0n 是 falsy | pass | P1 | no | `types/xts/pass/type_bigint_falsy_pass` | types | 低 | ToBoolean |
| TYPE-BIG-008 | bigint | bigint 比较运算（< >）允许 | pass | P1 | no | `types/xts/pass/type_bigint_compare_pass` | types / operators | 低 | 比较不报错 |
| TYPE-SYM-001 | symbol | symbol 创建和唯一性 | pass | P0 | no | `types/xts/pass/type_symbol_unique_pass` | types | 低 | Symbol() |
| TYPE-SYM-002 | symbol | Symbol.for() 共享 symbol | pass | P1 | no | `types/xts/pass/type_symbol_shared_pass` | types | 中 | 全局注册表 |
| TYPE-SYM-003 | symbol | typeof symbol 返回 "symbol" | pass | P0 | no | `types/xts/pass/type_symbol_typeof_pass` | types / typeof | 低 | 类型识别 |
| TYPE-SYM-004 | symbol | symbol 作为属性键 | pass | P1 | no | `types/xts/pass/type_symbol_property_key_pass` | types | 中 | 不被 for...in 枚举 |
| TYPE-SYM-005 | symbol | new Symbol() TypeError | fail_runtime | P1 | no | `types/xts/fail_runtime/type_symbol_new_fail_runtime` | types | 中 | Symbol 不是构造器 |
| TYPE-SYM-006 | symbol | Symbol.iterator 是否支持 | boundary | P1 | no | `types/xts/boundary/type_symbol_iterator_boundary` | types / builtin | 中 | 迭代协议 |
| TYPE-NU-001 | null_undefined | null 基础值 | pass | P0 | no | `types/xts/pass/type_null_basic_pass` | types | 低 | ES 核心行为 |
| TYPE-NU-002 | null_undefined | undefined 基础值 | pass | P0 | no | `types/xts/pass/type_undefined_basic_pass` | types | 低 | ES 核心行为 |
| TYPE-NU-003 | null_undefined | null == undefined 抽象相等 | pass | P0 | no | `types/xts/pass/type_null_undefined_equal_pass` | types / operators | 低 | true |
| TYPE-NU-004 | null_undefined | null === undefined 严格不等 | pass | P0 | no | `types/xts/pass/type_null_undefined_strict_pass` | types / operators | 低 | false |
| TYPE-NU-005 | null_undefined | typeof null 返回 "object" | regression | P0 | no | `types/xts/regression/type_null_typeof_object_regression` | types / typeof | 中 | 历史遗留 |
| TYPE-NU-006 | null_undefined | typeof undefined 返回 "undefined" | pass | P0 | no | `types/xts/pass/type_undefined_typeof_pass` | types / typeof | 低 | 类型识别 |
| TYPE-NU-007 | null_undefined | null + 0 等于 0 / undefined + 0 等于 NaN | pass | P1 | no | `types/xts/pass/type_null_undefined_arithmetic_pass` | types / operators | 中 | ToNumber 差异 |
| TYPE-OBJ-001 | object | object 基础属性访问 | pass | P0 | no | `types/xts/pass/type_object_property_pass` | types | 低 | 基础行为 |
| TYPE-OBJ-002 | object | typeof object 返回 "object" | pass | P0 | no | `types/xts/pass/type_object_typeof_pass` | types / typeof | 低 | 类型识别 |
| TYPE-OBJ-003 | object | {} instanceof Object | pass | P1 | no | `types/xts/pass/type_object_instanceof_pass` | types / instanceof | 低 | 所有对象是 Object 实例 |
| TYPE-OBJ-004 | object | String({}) 返回 "[object Object]" | pass | P1 | no | `types/xts/pass/type_object_to_string_pass` | types / conversion | 低 | ToString |
| TYPE-OBJ-005 | object | Number({}) 返回 NaN | boundary | P1 | no | `types/xts/boundary/type_object_to_number_boundary` | types / conversion | 中 | 容易误判 |
| TYPE-OBJ-006 | object | Boolean({}) 返回 true | boundary | P1 | no | `types/xts/boundary/type_object_to_boolean_boundary` | types / conversion | 中 | 空对象 truthy |
| TYPE-ARR-001 | array | array 运行时类型（typeof + isArray） | pass | P0 | no | `types/xts/pass/type_array_typeof_pass` | types | 低 | typeof "object" + isArray true |
| TYPE-ARR-002 | array | Array.isArray 判断 | pass | P0 | no | `types/xts/pass/type_array_isarray_pass` | types | 低 | 可靠判断方式 |
| TYPE-ARR-003 | array | [] instanceof Array | pass | P0 | no | `types/xts/pass/type_array_instanceof_pass` | types / instanceof | 低 | 同 realm |
| TYPE-ARR-004 | array | String([]) 返回 "" | pass | P1 | no | `types/xts/pass/type_array_to_string_pass` | types / conversion | 低 | ToString |
| TYPE-ARR-005 | array | Number([]) 返回 0 | boundary | P1 | no | `types/xts/boundary/type_array_to_number_boundary` | types / conversion | 中 | 容易误判 |
| TYPE-ARR-006 | array | Boolean([]) 返回 true | boundary | P1 | no | `types/xts/boundary/type_array_to_boolean_boundary` | types / conversion | 中 | 空数组 truthy |
| TYPE-FUNC-001 | function_object | typeof function 返回 "function" | pass | P0 | no | `types/xts/pass/type_function_typeof_pass` | types / typeof | 低 | 可调用对象特殊标识 |
| TYPE-FUNC-002 | function_object | function instanceof Function | pass | P1 | no | `types/xts/pass/type_function_instanceof_pass` | types / instanceof | 低 | Function 原型链 |
| TYPE-FUNC-003 | function_object | class typeof 返回 "function" | pass | P1 | no | `types/xts/pass/type_class_typeof_pass` | types / typeof | 低 | class 是函数 |
| TYPE-FUNC-004 | function_object | 箭头函数 typeof 返回 "function" | pass | P1 | no | `types/xts/pass/type_arrow_typeof_pass` | types / typeof | 低 | 箭头函数 |
| TYPE-FUNC-005 | function_object | 调用非函数值 TypeError | fail_runtime | P1 | no | `types/xts/fail_runtime/type_call_non_function_fail_runtime` | types / function | 中 | 运行时异常 |
| TYPE-FUNC-006 | function_object | Function.prototype 原型 | pass | P2 | no | `types/xts/pass/type_function_prototype_pass` | types | 低 | 原型链基础 |
| TYPE-TYPEOF-001 | typeof | typeof undefined | pass | P0 | no | `types/xts/pass/type_typeof_undefined_pass` | types | 低 | "undefined" |
| TYPE-TYPEOF-002 | typeof | typeof null | pass | P0 | no | `types/xts/pass/type_typeof_null_pass` | types | 低 | "object" 历史遗留 |
| TYPE-TYPEOF-003 | typeof | typeof function | pass | P0 | no | `types/xts/pass/type_typeof_function_pass` | types | 低 | "function" |
| TYPE-TYPEOF-004 | typeof | typeof array | pass | P0 | no | `types/xts/pass/type_typeof_array_pass` | types | 低 | "object" |
| TYPE-TYPEOF-005 | typeof | typeof bigint | pass | P0 | no | `types/xts/pass/type_typeof_bigint_pass` | types | 低 | "bigint" |
| TYPE-TYPEOF-006 | typeof | typeof symbol | pass | P0 | no | `types/xts/pass/type_typeof_symbol_pass` | types | 低 | "symbol" |
| TYPE-TYPEOF-007 | typeof | typeof 未声明变量 | pass | P1 | no | `types/xts/pass/type_typeof_undeclared_pass` | types | 中 | 不抛 ReferenceError |
| TYPE-TYPEOF-008 | typeof | typeof 访问 TDZ 变量 | fail_runtime | P1 | no | `types/xts/fail_runtime/type_typeof_tdz_fail_runtime` | types | 高 | typeof 不绕过 TDZ |
| TYPE-INST-001 | instanceof | instanceof class instance | pass | P0 | no | `types/xts/pass/type_instanceof_class_pass` | types / class | 低 | 原型链判断 |
| TYPE-INST-002 | instanceof | instanceof array | pass | P0 | no | `types/xts/pass/type_instanceof_array_pass` | types / class | 低 | Array 判断 |
| TYPE-INST-003 | instanceof | instanceof function constructor | pass | P1 | no | `types/xts/pass/type_instanceof_function_pass` | types / class | 低 | Function 判断 |
| TYPE-INST-004 | instanceof | 原始值 instanceof 返回 false | pass | P0 | no | `types/xts/pass/type_instanceof_primitive_pass` | types | 低 | 5 instanceof Number false |
| TYPE-INST-005 | instanceof | null instanceof Object 返回 false | pass | P1 | no | `types/xts/pass/type_instanceof_null_pass` | types | 低 | null 不是对象 |
| TYPE-INST-006 | instanceof | instanceof 右侧非函数 TypeError | fail_runtime | P1 | no | `types/xts/fail_runtime/type_instanceof_non_function_fail_runtime` | types | 中 | 运行时异常 |
| TYPE-INST-007 | instanceof | Symbol.hasInstance 自定义 | boundary | P2 | no | `types/xts/boundary/type_instanceof_custom_boundary` | types | 高 | 是否支持 |
| TYPE-CONV-001 | conversion | ToBoolean falsy 值列表 | pass | P0 | no | `types/xts/pass/type_conv_toboolean_falsy_pass` | types / conversion | 中 | 6 个 falsy 值 |
| TYPE-CONV-002 | conversion | ToBoolean truthy 值（[]/{}） | pass | P0 | no | `types/xts/pass/type_conv_toboolean_truthy_pass` | types / conversion | 中 | 常见误判 |
| TYPE-CONV-003 | conversion | ToNumber string | pass | P0 | no | `types/xts/pass/type_conv_tonumber_string_pass` | types / conversion | 低 | "123" → 123 |
| TYPE-CONV-004 | conversion | ToNumber null/undefined | pass | P1 | no | `types/xts/pass/type_conv_tonumber_null_undefined_pass` | types / conversion | 中 | null→0, undefined→NaN |
| TYPE-CONV-005 | conversion | ToNumber array/object | boundary | P1 | no | `types/xts/boundary/type_conv_tonumber_object_boundary` | types / conversion | 中 | Number([])→0, Number({})→NaN |
| TYPE-CONV-006 | conversion | ToString number | pass | P0 | no | `types/xts/pass/type_conv_tostring_number_pass` | types / conversion | 低 | 123 → "123" |
| TYPE-CONV-007 | conversion | ToString array/object | pass | P1 | no | `types/xts/pass/type_conv_tostring_object_pass` | types / conversion | 低 | String([])→"" |
| TYPE-CONV-008 | conversion | ToPrimitive 对象转原始值 | boundary | P2 | no | `types/xts/boundary/type_conv_toprimitive_boundary` | types / conversion | 中 | [] + [] 行为 |
| TYPE-TS-001 | typescript_type_syntax | TypeScript 类型标注兼容边界 | boundary | P0 | no | `types/xts/boundary/type_ts_annotation_boundary` | types | 高 | 运行时是否擦除 |
| TYPE-TS-002 | typescript_type_syntax | union type 语法兼容 | boundary | P0 | no | `types/xts/boundary/type_ts_union_boundary` | types | 高 | 是否允许 |
| TYPE-TS-003 | typescript_type_syntax | literal type 语法兼容 | boundary | P0 | no | `types/xts/boundary/type_ts_literal_boundary` | types | 高 | 是否允许 |
| TYPE-TS-004 | typescript_type_syntax | type alias 语法兼容 | boundary | P0 | no | `types/xts/boundary/type_ts_alias_boundary` | types | 高 | 是否允许 |
| TYPE-TS-005 | typescript_type_syntax | any / unknown 支持状态 | boundary | P0 | no | `types/xts/boundary/type_ts_any_unknown_boundary` | types | 高 | 是否允许 |
| TYPE-TS-006 | typescript_type_syntax | 类型断言 x as T 兼容 | boundary | P1 | no | `types/xts/boundary/type_ts_assertion_boundary` | types | 中 | 是否允许 |
| TYPE-TS-007 | typescript_type_syntax | interface 声明运行时行为 | boundary | P1 | no | `types/xts/boundary/type_ts_interface_boundary` | types | 中 | 纯类型层声明 |
| TYPE-TS-008 | typescript_type_syntax | 泛型标注运行时行为 | boundary | P2 | no | `types/xts/boundary/type_ts_generic_boundary` | types | 中 | 运行时是否忽略 |

## Types Stage 1 Generated Status

| ID | 类型方向 | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 实际路径 | 备注 |
|---|---|---|---|---|---|---|---|
| TYPE-STAGE1-001 | typeof | typeof undefined | pass | P0 | 是 | `xts/pass/type_typeof_undefined_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-002 | typeof | typeof null | pass | P0 | 是 | `xts/pass/type_typeof_null_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-003 | typeof | typeof function | pass | P0 | 是 | `xts/pass/type_typeof_function_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-004 | typeof | typeof object / array | pass | P0 | 是 | `xts/pass/type_typeof_object_array_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-005 | typeof | typeof bigint | pass | P0 | 是 | `xts/pass/type_typeof_bigint_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-006 | typeof | typeof symbol support boundary | boundary | P1 | 是 | `xts/boundary/type_typeof_symbol_boundary.ets` | pending confirmation |
| TYPE-STAGE1-007 | null_undefined | null == undefined | pass | P0 | 是 | `xts/pass/type_null_undefined_loose_equal_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-008 | null_undefined | null !== undefined | pass | P0 | 是 | `xts/pass/type_null_undefined_strict_not_equal_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-009 | null_undefined | undefined property access runtime error | fail_runtime | P0 | 是 | `xts/fail_runtime/type_undefined_property_access_fail_runtime.ets` | Types Stage 1 generated |
| TYPE-STAGE1-010 | null_undefined | null property access runtime error | fail_runtime | P0 | 是 | `xts/fail_runtime/type_null_property_access_fail_runtime.ets` | Types Stage 1 generated |
| TYPE-STAGE1-011 | number | number basic value | pass | P0 | 是 | `xts/pass/type_number_basic_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-012 | number | NaN not equal itself | pass | P0 | 是 | `xts/pass/type_number_nan_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-013 | number | Infinity / -Infinity | pass | P1 | 是 | `xts/pass/type_number_infinity_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-014 | bigint | bigint basic value | pass | P0 | 是 | `xts/pass/type_bigint_basic_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-015 | bigint | number and bigint comparison | pass | P1 | 是 | `xts/pass/type_number_bigint_compare_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-016 | bigint | number + bigint runtime error | fail_runtime | P0 | 是 | `xts/fail_runtime/type_number_bigint_add_fail_runtime.ets` | Types Stage 1 generated |
| TYPE-STAGE1-017 | bigint | bigint literal support boundary | boundary | P0 | 是 | `xts/boundary/type_bigint_literal_boundary.ets` | pending confirmation |
| TYPE-STAGE1-018 | string | string basic value | pass | P0 | 是 | `xts/pass/type_string_basic_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-019 | boolean | boolean basic value | pass | P0 | 是 | `xts/pass/type_boolean_basic_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-020 | object | object basic property access | pass | P0 | 是 | `xts/pass/type_object_basic_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-021 | array | array runtime type | pass | P0 | 是 | `xts/pass/type_array_runtime_type_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-022 | instanceof | array instanceof Array | pass | P0 | 是 | `xts/pass/type_instanceof_array_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-023 | instanceof | class instance instanceof class | pass | P0 | 是 | `xts/pass/type_instanceof_class_pass.ets` | Types Stage 1 generated |
| TYPE-STAGE1-024 | typescript_type_syntax | TypeScript annotation syntax boundary | boundary | P0 | 是 | `xts/boundary/type_ts_annotation_boundary.ets` | pending confirmation |
| TYPE-STAGE1-025 | typescript_type_syntax | union type syntax boundary | boundary | P0 | 是 | `xts/boundary/type_union_syntax_boundary.ets` | pending confirmation |
| TYPE-STAGE1-026 | typescript_type_syntax | literal type syntax boundary | boundary | P0 | 是 | `xts/boundary/type_literal_syntax_boundary.ets` | pending confirmation |
| TYPE-STAGE1-027 | typescript_type_syntax | type alias syntax boundary | boundary | P0 | 是 | `xts/boundary/type_alias_syntax_boundary.ets` | pending confirmation |
| TYPE-STAGE1-028 | typescript_type_syntax | any / unknown syntax boundary | boundary | P0 | 是 | `xts/boundary/type_any_unknown_boundary.ets` | pending confirmation |
