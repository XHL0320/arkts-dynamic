# Function Coverage Matrix

| ID | 瀛愮洰褰?| 娴嬭瘯鐐?| 鐢ㄤ緥绫诲瀷 | 浼樺厛绾?| 鏄惁宸叉湁鐢ㄤ緥 | 寤鸿璺緞 | 椋庨櫓鐐?| 澶囨敞 |
|---|---|---|---|---|---|---|---|---|
| FUNCTION-TOTAL-0001 | function_declaration | 鍑芥暟澹版槑鍦ㄥ０鏄庡墠鍙皟鐢?| pass | P0 | 鍚?| function_declaration/xts/pass/function_declaration_hoisting_pass.ets | hoisting | test262 瀵圭収 |
| FUNCTION-TOTAL-0002 | function_declaration | 鍑芥暟澹版槑閫掑綊璋冪敤 | pass | P1 | 鍚?| function_declaration/xts/pass/function_declaration_recursive_pass.ets | name binding |  |
| FUNCTION-TOTAL-0003 | function_declaration | 鍚屼綔鐢ㄥ煙閲嶅鍑芥暟澹版槑琛屼负 | boundary | P1 | 鍚?| function_declaration/xts/fail_runtime/function_declaration_duplicate_boundary.ets | ECMA/瀹炵幇宸紓 |  |
| FUNCTION-TOTAL-0004 | function_declaration | 鍧楃骇鍑芥暟澹版槑鎻愬崌杈圭晫 | boundary | P1 | 鍚?| function_declaration/xts/regression/function_declaration_block_boundary.ets | strict/sloppy 宸紓 |  |
| FUNCTION-TOTAL-0005 | function_declaration | 鍑芥暟澹版槑缂哄皯鍚嶇О | fail_compile | P0 | 鍚?| function_declaration/xts/fail_compile/function_declaration_missing_name_fail_compile.ets | syntax error |  |
| FUNCTION-TOTAL-0006 | function_declaration | 鍑芥暟澹版槑浣滀负鍥炶皟浼犻€?| pass | P1 | 鍚?| function_declaration/xts/pass/function_declaration_callback_pass.ets | value passing |  |
| FUNCTION-TOTAL-0007 | function_declaration | 鍑芥暟澹版槑 name 灞炴€?| pass | P2 | 鍚?| function_declaration/xts/pass/function_declaration_name_pass.ets | name |  |
| FUNCTION-TOTAL-0008 | function_declaration | 瀵煎嚭鍑芥暟澹版槑鍚庤法妯″潡璋冪敤 | integration | P2 | 鍚?| function_declaration/xts/regression/function_declaration_export_integration.ets | module binding |  |
| FUNCTION-TOTAL-0081 | function_expression | 鍑芥暟琛ㄨ揪寮忚祴鍊煎悗璋冪敤 | pass | P0 | 鍚?| function_expression/xts/pass/function_expression_assigned_call_pass.ets | expression evaluation | Stage 0.1 |
| FUNCTION-TOTAL-0082 | function_expression | 鍑芥暟琛ㄨ揪寮忎笉鎻愬崌 | fail_runtime | P0 | 鍚?| function_expression/xts/fail_runtime/function_expression_no_hoisting_fail_runtime.ets | no hoisting | 浠?declaration 鎷嗗嚭 |
| FUNCTION-TOTAL-0083 | function_expression | 鍖垮悕鍑芥暟琛ㄨ揪寮?name 鎺ㄦ柇 | boundary | P1 | 鍚?| function_expression/xts/regression/function_expression_anonymous_name_boundary.ets | name inference | test262 瀵圭収 |
| FUNCTION-TOTAL-0084 | function_expression | 鍏峰悕鍑芥暟琛ㄨ揪寮忓唴閮ㄥ悕绉扮粦瀹?| boundary | P1 | 鍚?| function_expression/xts/regression/function_expression_named_internal_binding_boundary.ets | internal binding |  |
| FUNCTION-TOTAL-0085 | function_expression | 鍏峰悕鍑芥暟琛ㄨ揪寮忛€掑綊璋冪敤 | pass | P1 | 鍚?| function_expression/xts/pass/function_expression_named_recursive_pass.ets | recursion |  |
| FUNCTION-TOTAL-0086 | function_expression | 鍑芥暟琛ㄨ揪寮忎綔涓哄璞″睘鎬?| pass | P1 | 鍚?| function_expression/xts/pass/function_expression_object_property_pass.ets | property value |  |
| FUNCTION-TOTAL-0087 | function_expression | 鍑芥暟琛ㄨ揪寮忎綔涓?callback | pass | P1 | 鍚?| function_expression/xts/pass/function_expression_callback_pass.ets | callback |  |
| FUNCTION-TOTAL-0088 | function_expression | IIFE 鍑芥暟琛ㄨ揪寮?| pass | P1 | 鍚?| function_expression/xts/pass/function_expression_iife_pass.ets | IIFE |  |
| FUNCTION-TOTAL-0089 | function_expression | 鍑芥暟琛ㄨ揪寮忔眰鍊兼椂鎶涘紓甯?| fail_runtime | P2 | 鍚?| function_expression/xts/fail_runtime/function_expression_evaluation_throw_fail_runtime.ets | exception propagation |  |
| FUNCTION-TOTAL-0090 | function_expression | 鍑芥暟琛ㄨ揪寮忎笌 this 缁戝畾杈圭晫 | boundary | P2 | 鍚?| function_expression/xts/regression/function_expression_this_boundary.ets | this binding |  |
| FUNCTION-TOTAL-0009 | optional_parameter | 鍙€夊弬鏁扮己鐪佷负 undefined | pass | P0 | 鍚?| optional_parameter/xts/pass/optional_parameter_undefined_pass.ets | argument binding |  |
| FUNCTION-TOTAL-0010 | optional_parameter | 榛樿鍙傛暟鍦ㄧ己鐪佹椂鐢熸晥 | pass | P0 | 鏄?| optional_parameter/xts/pass/default_parameter_basic_pass.ets | default init | Function Stage 1 generated |
| FUNCTION-TOTAL-0011 | optional_parameter | 鏄惧紡浼犲叆 undefined 瑙﹀彂榛樿鍊?| pass | P1 | 鏄?| optional_parameter/xts/pass/default_parameter_undefined_pass.ets | ECMA baseline | Function Stage 1 generated |
| FUNCTION-TOTAL-0012 | optional_parameter | 榛樿鍙傛暟寮曠敤鍓嶅簭鍙傛暟 | pass | P1 | 鏄?| optional_parameter/xts/pass/default_parameter_reference_previous_param_pass.ets | parameter env | Function Stage 1 generated |
| FUNCTION-TOTAL-0013 | optional_parameter | 榛樿鍙傛暟姹傚€奸『搴?| pass | P0 | 鏄?| optional_parameter/xts/pass/default_parameter_evaluation_order_pass.ets | side effect order | Function Stage 1 generated |
| FUNCTION-TOTAL-0014 | optional_parameter | 榛樿鍙傛暟琛ㄨ揪寮忔姏寮傚父 | fail_runtime | P1 | 鍚?| optional_parameter/xts/fail_runtime/default_parameter_throw_fail_runtime.ets | exception propagation |  |
| FUNCTION-TOTAL-0015 | optional_parameter | 鍙€夊弬鏁?TS 鏍囪鍏煎 | boundary | P2 | 鍚?| optional_parameter/xts/regression/optional_parameter_ts_marker_boundary.ets | TS compatibility | 涓嶆寜闈欐€?checker 灞曞紑 |
| FUNCTION-TOTAL-0016 | optional_parameter | 闈炴硶榛樿鍙傛暟璇硶 | fail_compile | P1 | 鍚?| optional_parameter/xts/fail_compile/default_parameter_invalid_syntax_fail_compile.ets | syntax error |  |
| FUNCTION-TOTAL-0017 | rest_parameter | rest 鍙傛暟鏀堕泦鍓╀綑瀹炲弬 | pass | P0 | 鏄?| rest_parameter/xts/pass/rest_parameter_basic_pass.ets | argument list | Function Stage 1 generated |
| FUNCTION-TOTAL-0018 | rest_parameter | rest 鍙傛暟涓虹┖鏁扮粍 | pass | P1 | 鏄?| rest_parameter/xts/pass/rest_parameter_empty_pass.ets | array creation | Function Stage 1 generated |
| FUNCTION-TOTAL-0019 | rest_parameter | rest 鍙傛暟涓庢櫘閫氬弬鏁版贩鍚?| pass | P1 | 鏄?| rest_parameter/xts/pass/rest_parameter_with_normal_params_pass.ets | binding order | Function Stage 1 generated |
| FUNCTION-TOTAL-0020 | rest_parameter | rest 涓?arguments 宸紓 | regression | P0 | 鏄?| rest_parameter/xts/regression/rest_parameter_arguments_difference_regression.ets | arguments object | Function Stage 1 generated |
| FUNCTION-TOTAL-0021 | rest_parameter | rest 鍙傛暟鍚庤繕鏈夊弬鏁板簲璇硶閿欒 | fail_compile | P0 | 鏄?| rest_parameter/xts/fail_compile/rest_parameter_not_last_fail_compile.ets | syntax error | Function Stage 1 generated |
| FUNCTION-TOTAL-0022 | rest_parameter | rest 鍙傛暟 length 褰卞搷 | pass | P2 | 鍚?| rest_parameter/xts/pass/rest_parameter_function_length_pass.ets | function.length |  |
| FUNCTION-TOTAL-0023 | rest_parameter | rest 鍙傛暟杞彂鍒?apply | pass | P2 | 鍚?| rest_parameter/xts/pass/rest_parameter_apply_forward_pass.ets | call/apply |  |
| FUNCTION-TOTAL-0024 | rest_parameter | rest 鍙傛暟瑙ｆ瀯杈圭晫 | boundary | P2 | 鍚?| rest_parameter/xts/regression/rest_parameter_destructure_boundary.ets | syntax support |  |
| FUNCTION-TOTAL-0025 | return_type | 鏃?return 杩斿洖 undefined | pass | P0 | 鏄?| return_type/xts/pass/return_without_value_pass.ets | return completion | Function Stage 1 generated |
| FUNCTION-TOTAL-0026 | return_type | 鏄惧紡 return 鍊?| pass | P1 | 鏄?| return_type/xts/pass/return_value_basic_pass.ets | completion record | Function Stage 1 generated |
| FUNCTION-TOTAL-0027 | return_type | return 鍚庤鍙ヤ笉鎵ц | pass | P1 | 鏄?| return_type/xts/pass/return_early_exit_pass.ets | control flow | Function Stage 1 generated |
| FUNCTION-TOTAL-0028 | return_type | finally 涓?return 瑕嗙洊 try return | pass | P0 | 鏄?| return_type/xts/pass/return_finally_override_pass.ets | finally semantics | Function Stage 1 generated |
| FUNCTION-TOTAL-0029 | return_type | throw 鍚庢棤 return | fail_runtime | P1 | 鍚?| return_type/xts/fail_runtime/return_throw_propagation_fail_runtime.ets | exception propagation |  |
| FUNCTION-TOTAL-0030 | return_type | 鍑芥暟澶?return 璇硶閿欒 | fail_compile | P0 | 鏄?| return_type/xts/fail_compile/return_outside_function_fail_compile.ets | syntax error | Function Stage 1 generated |
| FUNCTION-TOTAL-0031 | return_type | TS 杩斿洖绫诲瀷鏍囨敞鍏煎杈圭晫 | boundary | P2 | 鍚?| return_type/xts/regression/return_type_annotation_boundary.ets | TS compatibility | 鍔ㄦ€佽涔?|
| FUNCTION-TOTAL-0032 | return_type | async/generator return 杈圭晫 | boundary | P2 | 鍚?| return_type/xts/regression/return_async_generator_boundary.ets | feature support |  |
| FUNCTION-TOTAL-0033 | function_scope | 函数内部局部变量 | pass | P0 | 是 | function_scope/xts/pass/function_scope_local_variable_pass.ets | lexical env | Function Stage 2 generated |
| FUNCTION-TOTAL-0034 | function_scope | 嵌套函数访问外层变量 | pass | P0 | 是 | function_scope/xts/pass/function_scope_nested_function_pass.ets | scope chain | Function Stage 2 generated |
| FUNCTION-TOTAL-0035 | function_scope | 内层变量遮蔽外层变量 | pass | P1 | 是 | function_scope/xts/pass/function_scope_variable_shadowing_pass.ets | binding resolution | Function Stage 2 generated |
| FUNCTION-TOTAL-0036 | function_scope | 函数外访问内部变量抛 ReferenceError | fail_runtime | P1 | 是 | function_scope/xts/fail_runtime/function_scope_outer_inaccessible_fail_runtime.ets | ReferenceError | Function Stage 2 generated |
| FUNCTION-TOTAL-0037 | function_scope | 参数名与局部 block 变量遮蔽 | pass | P1 | 是 | function_scope/xts/pass/function_scope_parameter_shadowing_pass.ets | parameter env | Function Stage 2 generated |
| FUNCTION-TOTAL-0038 | function_scope | catch 涓祵濂楀嚱鏁版崟鑾烽敊璇璞?| pass | P2 | 鍚?| function_scope/xts/pass/function_scope_catch_capture_pass.ets | lexical env |  |
| FUNCTION-TOTAL-0039 | function_scope | eval 褰卞搷鍑芥暟浣滅敤鍩熻竟鐣?| boundary | P2 | 鍚?| function_scope/xts/regression/function_scope_eval_boundary.ets | dynamic eval | 鏀寔寰呯‘璁?|
| FUNCTION-TOTAL-0040 | function_scope | 璺ㄦā鍧楀嚱鏁颁綔鐢ㄥ煙涓嶆硠婕?| integration | P2 | 鍚?| function_scope/xts/regression/function_scope_module_boundary.ets | module scope |  |
| FUNCTION-TOTAL-0041 | function_call | 鏅€氬嚱鏁拌皟鐢ㄨ繑鍥炲€?| pass | P0 | 鏄?| function_call/xts/pass/function_call_basic_pass.ets | call expression | Function Stage 1 generated |
| FUNCTION-TOTAL-0042 | function_call | 璋冪敤闈炲嚱鏁版姏 TypeError | fail_runtime | P0 | 鏄?| function_call/xts/fail_runtime/function_call_non_callable_fail_runtime.ets | TypeError | Function Stage 1 generated |
| FUNCTION-TOTAL-0043 | function_call | 鏂规硶璋冪敤 this 缁戝畾 | pass | P0 | 鍚?| function_call/xts/pass/function_call_method_this_pass.ets | ThisBinding |  |
| FUNCTION-TOTAL-0044 | function_call | call 鏀瑰彉 this | pass | P0 | 鍚?| function_call/xts/pass/function_call_call_this_pass.ets | call |  |
| FUNCTION-TOTAL-0045 | function_call | apply 浼犲弬 | pass | P1 | 鏄?| function_call/xts/pass/function_call_apply_bind_pass.ets | apply | Function Stage 1 generated with bind |
| FUNCTION-TOTAL-0046 | function_call | bind 鍥哄畾 this 鍜屽墠缃弬鏁?| pass | P1 | 鏄?| function_call/xts/pass/function_call_apply_bind_pass.ets | bind | Function Stage 1 generated with apply |
| FUNCTION-TOTAL-0047 | function_call | callback 鎶涘紓甯镐紶鎾?| fail_runtime | P1 | 鍚?| function_call/xts/fail_runtime/function_call_callback_throw_fail_runtime.ets | exception propagation |  |
| FUNCTION-TOTAL-0048 | function_call | 璋冪敤姹傚€奸『搴?| pass | P1 | 鍚?| function_call/xts/pass/function_call_evaluation_order_pass.ets | side effect order |  |
| FUNCTION-TOTAL-0049 | function_type | 函数作为值保存 | pass | P0 | 是 | function_type/xts/pass/function_type_function_as_value_pass.ets | first-class function | Function Stage 3 generated |
| FUNCTION-TOTAL-0050 | function_type | 函数作为参数传递 | pass | P0 | 是 | function_type/xts/pass/function_type_function_as_parameter_pass.ets | callback | Function Stage 3 generated |
| FUNCTION-TOTAL-0051 | function_type | 函数作为返回值返回 | pass | P0 | 是 | function_type/xts/pass/function_type_function_as_return_value_pass.ets | higher-order | Function Stage 3 generated |
| FUNCTION-TOTAL-0052 | function_type | TS 函数类型标注兼容边界 | boundary | P1 | 是 | function_type/xts/boundary/function_type_ts_annotation_boundary.ets | TS compatibility | Function Stage 3 generated; pending confirmation |
| FUNCTION-TOTAL-0053 | function_type | 非函数值调用异常 | fail_runtime | P0 | 是 | function_type/xts/fail_runtime/function_type_call_non_function_fail_runtime.ets | TypeError | Function Stage 3 generated |
| FUNCTION-TOTAL-0054 | function_type | 函数对象属性边界 | boundary | P2 | 是 | function_type/xts/boundary/function_type_function_property_boundary.ets | function object | Function Stage 3 generated; pending confirmation |
| FUNCTION-TOTAL-0055 | function_type | function name 灞炴€?| pass | P2 | 鍚?| function_type/xts/pass/function_type_name_pass.ets | Function object |  |
| FUNCTION-TOTAL-0056 | function_type | function length 灞炴€?| pass | P1 | 鍚?| function_type/xts/pass/function_type_length_pass.ets | Function object |  |
| FUNCTION-TOTAL-0057 | arrow_function_lambda | 箭头函数表达式体返回值 | pass | P0 | 是 | arrow_function_lambda/xts/pass/arrow_function_expression_body_pass.ets | arrow semantics | Function Stage 2 generated |
| FUNCTION-TOTAL-0058 | arrow_function_lambda | 箭头函数块体显式 return | pass | P1 | 是 | arrow_function_lambda/xts/pass/arrow_function_block_body_pass.ets | return | Function Stage 2 generated |
| FUNCTION-TOTAL-0059 | arrow_function_lambda | 箭头函数词法 this | pass | P0 | 是 | arrow_function_lambda/xts/pass/arrow_function_lexical_this_pass.ets | ThisBinding | Function Stage 2 generated |
| FUNCTION-TOTAL-0060 | arrow_function_lambda | 箭头函数无自身 arguments | boundary | P1 | 是 | arrow_function_lambda/xts/boundary/arrow_function_no_arguments_boundary.ets | arguments | Function Stage 2 generated; pending confirmation |
| FUNCTION-TOTAL-0061 | arrow_function_lambda | 箭头函数作为 callback | pass | P1 | 是 | arrow_function_lambda/xts/pass/arrow_function_as_callback_pass.ets | callback | Function Stage 2 generated |
| FUNCTION-TOTAL-0062 | arrow_function_lambda | 嵌套箭头函数捕获变量 | regression | P1 | 是 | arrow_function_lambda/xts/regression/arrow_function_nested_regression.ets | closure | Function Stage 2 generated |
| FUNCTION-TOTAL-0063 | arrow_function_lambda | 绠ご鍑芥暟涓嶈兘浣滀负鏋勯€犲嚱鏁拌竟鐣?| fail_runtime | P2 | 鍚?| arrow_function_lambda/xts/fail_runtime/arrow_constructor_fail_runtime.ets | TypeError | 鏀寔寰呯‘璁?|
| FUNCTION-TOTAL-0064 | arrow_function_lambda | 绠ご鍑芥暟鍙傛暟榛樿鍊?| pass | P2 | 鍚?| arrow_function_lambda/xts/pass/arrow_default_parameter_pass.ets | parameter env |  |
| FUNCTION-TOTAL-0065 | closure | 闭包捕获外层变量 | pass | P0 | 是 | closure/xts/pass/closure_capture_outer_variable_pass.ets | closure env | Function Stage 2 generated |
| FUNCTION-TOTAL-0066 | closure | 闭包修改外层变量 | pass | P0 | 是 | closure/xts/pass/closure_update_outer_variable_pass.ets | mutable capture | Function Stage 2 generated |
| FUNCTION-TOTAL-0067 | closure | 外层函数返回后闭包仍可访问变量 | regression | P0 | 是 | closure/xts/regression/closure_lifetime_regression.ets | lifetime | Function Stage 2 generated |
| FUNCTION-TOTAL-0068 | closure | 循环中 let 捕获 | pass | P1 | 是 | closure/xts/pass/closure_loop_capture_let_pass.ets | loop binding | Function Stage 2 generated |
| FUNCTION-TOTAL-0069 | closure | 嵌套闭包多层捕获 | pass | P1 | 是 | closure/xts/pass/closure_nested_closure_pass.ets | scope chain | Function Stage 2 generated |
| FUNCTION-TOTAL-0070 | closure | 闂寘浣滀负 callback 寮傛杈圭晫 | boundary | P2 | 鍚?| closure/xts/regression/closure_async_callback_boundary.ets | async support |  |
| FUNCTION-TOTAL-0071 | closure | 闂寘涓姏寮傚父浼犳挱 | fail_runtime | P1 | 鍚?| closure/xts/fail_runtime/closure_throw_fail_runtime.ets | exception propagation |  |
| FUNCTION-TOTAL-0072 | closure | 闂寘璺ㄦā鍧楄繑鍥?| integration | P2 | 鍚?| closure/xts/regression/closure_cross_module_return.ets | module env |  |
| FUNCTION-TOTAL-0073 | function_overload_signature | TS 风格 overload signature 基础兼容边界 | boundary | P0 | 是 | function_overload_signature/xts/boundary/function_overload_signature_basic_boundary.ets | TS compatibility | Function Stage 3 generated; not static overload resolution |
| FUNCTION-TOTAL-0074 | function_overload_signature | 只有 overload signature 没有实现函数 | fail_compile | P1 | 是 | function_overload_signature/xts/fail_compile/function_overload_signature_missing_impl_fail_compile.ets | syntax compatibility | Function Stage 3 generated |
| FUNCTION-TOTAL-0075 | function_overload_signature | overload implementation 函数运行时行为 | boundary | P1 | 是 | function_overload_signature/xts/boundary/function_overload_signature_runtime_impl_boundary.ets | runtime implementation | Function Stage 3 generated; pending confirmation |
| FUNCTION-TOTAL-0076 | function_overload_signature | overload 涓?arguments 琛屼负 | boundary | P2 | 鍚?| function_overload_signature/xts/regression/function_overload_arguments_boundary.ets | dynamic args |  |
| FUNCTION-TOTAL-0077 | function_overload_signature | overload 与可选参数边界 | boundary | P2 | 是 | function_overload_signature/xts/boundary/function_overload_signature_optional_param_boundary.ets | TS compatibility | Function Stage 3 generated; pending confirmation |
| FUNCTION-TOTAL-0078 | function_overload_signature | overload 涓?rest 鍙傛暟杈圭晫 | boundary | P2 | 鍚?| function_overload_signature/xts/regression/function_overload_rest_boundary.ets | TS compatibility |  |
| FUNCTION-TOTAL-0079 | function_overload_signature | overload 涓嶈兘浣滀负闈欐€?resolution 鏂█ | test262_mapping | P2 | 鍚?| function_overload_signature/xts/regression/function_overload_no_static_resolution.md | scope boundary | 鏂囨。鍊欓€?|
| FUNCTION-TOTAL-0080 | function_overload_signature | overload signature 涓?function length | boundary | P2 | 鍚?| function_overload_signature/xts/regression/function_overload_length_boundary.ets | Function object |  |
| FUNCTION-TOTAL-0091 | optional_parameter | 浼犲叆 null 涓嶈Е鍙戦粯璁ゅ€?| pass | P1 | 鏄?| optional_parameter/xts/pass/default_parameter_null_pass.ets | default init | Function Stage 1 generated |
| FUNCTION-TOTAL-0092 | optional_parameter | 榛樿鍙傛暟琛ㄨ揪寮忓壇浣滅敤鍙湪闇€瑕佹椂鎵ц | regression | P1 | 鏄?| optional_parameter/xts/regression/default_parameter_side_effect_regression.ets | side effect | Function Stage 1 generated |
| FUNCTION-TOTAL-0093 | rest_parameter | rest 浣滀负鏁扮粍浣跨敤 | pass | P1 | 鏄?| rest_parameter/xts/pass/rest_parameter_array_behavior_pass.ets | array behavior | Function Stage 1 generated |
| FUNCTION-TOTAL-0094 | function_call | 澶氫紶鍙傛暟 | pass | P1 | 鏄?| function_call/xts/pass/function_call_extra_args_pass.ets | arguments | Function Stage 1 generated |
| FUNCTION-TOTAL-0095 | function_call | 灏戜紶鍙傛暟 | pass | P1 | 鏄?| function_call/xts/pass/function_call_missing_args_pass.ets | undefined argument | Function Stage 1 generated |
| FUNCTION-TOTAL-0096 | function_call | 鍑芥暟浣滀负鍊?| pass | P1 | 鏄?| function_call/xts/pass/function_call_as_value_pass.ets | first-class function | Function Stage 1 generated |
| FUNCTION-TOTAL-0097 | function_call | 鍑芥暟浣滀负鍙傛暟 | pass | P1 | 鏄?| function_call/xts/pass/function_call_as_parameter_pass.ets | callback | Function Stage 1 generated |
