# types Coverage Matrix

## Coverage Status Summary

| Project | Count |
|---|---:|
| Coverage total | 119 |
| generated | 28 |
| planned | 91 |
| validation_pending | 21 |
| spec_pending | 7 |

## Main Coverage Matrix

| Coverage ID | Basics | Test Point | Case Type | Priority | Coverage Status | Case ID | Actual Path | Validation Status | Related | Risk | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| TYPE-NUM-001 | types | number 鍩虹鏁存暟鍊? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-NUM-002 | types | number 娴偣鍊? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-NUM-003 | types | number NaN 鍊? | pass | P0 | planned | none | none | planned | types | types | 涓? |
| TYPE-NUM-004 | types | number Infinity / -Infinity | pass | P1 | planned | none | none | planned | types | types | 浣? |
| TYPE-NUM-005 | types | number +0 / -0 鍖哄垎 | boundary | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-NUM-006 | types | number MAX_SAFE_INTEGER 杈圭晫 | boundary | P2 | planned | none | none | planned | types | types | 浣? |
| TYPE-NUM-007 | types | Number() 杞崲 string | pass | P1 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-NUM-008 | types | NaN !== NaN 琛屼负 | regression | P0 | planned | none | none | planned | types | types | 涓? |
| TYPE-STR-001 | types | string 鍩虹鍊? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-STR-002 | types | string 绌哄瓧绗︿覆 | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-STR-003 | types | string 妯℃澘瀛楃涓? | pass | P1 | planned | none | none | planned | types | types | 浣? |
| TYPE-STR-004 | types | string 涓嶅彲鍙樻€? | pass | P1 | planned | none | none | planned | types | types | 浣? |
| TYPE-STR-005 | types | String() 杞崲 number | pass | P1 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-STR-006 | types | String(null) / String(undefined) | pass | P1 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-STR-007 | types | string 闈炵┖ truthy | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-BOOL-001 | types | boolean true/false 鍩虹鍊? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-BOOL-002 | types | ToBoolean falsy 鍊煎垪琛? | pass | P0 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-BOOL-003 | types | ToBoolean truthy 鍊硷紙"0"/"false"/[]/{}锛? | pass | P0 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-BOOL-004 | types | Boolean([]) 涓?true | boundary | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-BOOL-005 | types | Boolean({}) 涓?true | boundary | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-BOOL-006 | types | 鍙岄噸鍚﹀畾 !! 杞崲 | pass | P1 | planned | none | none | planned | types | types / operators | 浣? |
| TYPE-BIG-001 | types | bigint 鍩虹鍊? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-BIG-002 | types | bigint 澶ф暣鏁板€? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-BIG-003 | types | typeof bigint 杩斿洖 "bigint" | pass | P0 | planned | none | none | planned | types | types / typeof | 浣? |
| TYPE-BIG-004 | types | number + bigint 娣峰悎杩愮畻 TypeError | fail_runtime | P0 | planned | none | none | planned | types | types | 楂? |
| TYPE-BIG-005 | types | number == bigint 鎶借薄鐩哥瓑 | pass | P1 | planned | none | none | planned | types | types / operators | 涓? |
| TYPE-BIG-006 | types | number === bigint 涓ユ牸涓嶇瓑 | pass | P1 | planned | none | none | planned | types | types / operators | 涓? |
| TYPE-BIG-007 | types | 0n 鏄?falsy | pass | P1 | planned | none | none | planned | types | types | 浣? |
| TYPE-BIG-008 | types | bigint 姣旇緝杩愮畻锛? >锛夊厑璁? | pass | P1 | planned | none | none | planned | types | types / operators | 浣? |
| TYPE-SYM-001 | types | symbol 鍒涘缓鍜屽敮涓€鎬? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-SYM-002 | types | Symbol.for() 鍏变韩 symbol | pass | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-SYM-003 | types | typeof symbol 杩斿洖 "symbol" | pass | P0 | planned | none | none | planned | types | types / typeof | 浣? |
| TYPE-SYM-004 | types | symbol 浣滀负灞炴€ч敭 | pass | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-SYM-005 | types | new Symbol() TypeError | fail_runtime | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-SYM-006 | types | Symbol.iterator 鏄惁鏀寔 | boundary | P1 | planned | none | none | planned | types | types / builtin | 涓? |
| TYPE-NU-001 | types | null 鍩虹鍊? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-NU-002 | types | undefined 鍩虹鍊? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-NU-003 | types | null == undefined 鎶借薄鐩哥瓑 | pass | P0 | planned | none | none | planned | types | types / operators | 浣? |
| TYPE-NU-004 | types | null === undefined 涓ユ牸涓嶇瓑 | pass | P0 | planned | none | none | planned | types | types / operators | 浣? |
| TYPE-NU-005 | types | typeof null 杩斿洖 "object" | regression | P0 | planned | none | none | planned | types | types / typeof | 涓? |
| TYPE-NU-006 | types | typeof undefined 杩斿洖 "undefined" | pass | P0 | planned | none | none | planned | types | types / typeof | 浣? |
| TYPE-NU-007 | types | null + 0 绛変簬 0 / undefined + 0 绛変簬 NaN | pass | P1 | planned | none | none | planned | types | types / operators | 涓? |
| TYPE-OBJ-001 | types | object 鍩虹灞炴€ц闂? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-OBJ-002 | types | typeof object 杩斿洖 "object" | pass | P0 | planned | none | none | planned | types | types / typeof | 浣? |
| TYPE-OBJ-003 | types | {} instanceof Object | pass | P1 | planned | none | none | planned | types | types / instanceof | 浣? |
| TYPE-OBJ-004 | types | String({}) 杩斿洖 "[object Object]" | pass | P1 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-OBJ-005 | types | Number({}) 杩斿洖 NaN | boundary | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-OBJ-006 | types | Boolean({}) 杩斿洖 true | boundary | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-ARR-001 | types | array 杩愯鏃剁被鍨嬶紙typeof + isArray锛? | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-ARR-002 | types | Array.isArray 鍒ゆ柇 | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-ARR-003 | types | [] instanceof Array | pass | P0 | planned | none | none | planned | types | types / instanceof | 浣? |
| TYPE-ARR-004 | types | String([]) 杩斿洖 "" | pass | P1 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-ARR-005 | types | Number([]) 杩斿洖 0 | boundary | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-ARR-006 | types | Boolean([]) 杩斿洖 true | boundary | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-FUNC-001 | types | typeof function 杩斿洖 "function" | pass | P0 | planned | none | none | planned | types | types / typeof | 浣? |
| TYPE-FUNC-002 | types | function instanceof Function | pass | P1 | planned | none | none | planned | types | types / instanceof | 浣? |
| TYPE-FUNC-003 | types | class typeof 杩斿洖 "function" | pass | P1 | planned | none | none | planned | types | types / typeof | 浣? |
| TYPE-FUNC-004 | types | 绠ご鍑芥暟 typeof 杩斿洖 "function" | pass | P1 | planned | none | none | planned | types | types / typeof | 浣? |
| TYPE-FUNC-005 | types | 璋冪敤闈炲嚱鏁板€?TypeError | fail_runtime | P1 | planned | none | none | planned | types | types / function | 涓? |
| TYPE-FUNC-006 | types | Function.prototype 鍘熷瀷 | pass | P2 | planned | none | none | planned | types | types | 浣? |
| TYPE-TYPEOF-001 | types | typeof undefined | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-TYPEOF-002 | types | typeof null | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-TYPEOF-003 | types | typeof function | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-TYPEOF-004 | types | typeof array | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-TYPEOF-005 | types | typeof bigint | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-TYPEOF-006 | types | typeof symbol | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-TYPEOF-007 | types | typeof 鏈０鏄庡彉閲? | pass | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-TYPEOF-008 | types | typeof 璁块棶 TDZ 鍙橀噺 | fail_runtime | P1 | planned | none | none | planned | types | types | 楂? |
| TYPE-INST-001 | types | instanceof class instance | pass | P0 | planned | none | none | planned | types | types / class | 浣? |
| TYPE-INST-002 | types | instanceof array | pass | P0 | planned | none | none | planned | types | types / class | 浣? |
| TYPE-INST-003 | types | instanceof function constructor | pass | P1 | planned | none | none | planned | types | types / class | 浣? |
| TYPE-INST-004 | types | 鍘熷鍊?instanceof 杩斿洖 false | pass | P0 | planned | none | none | planned | types | types | 浣? |
| TYPE-INST-005 | types | null instanceof Object 杩斿洖 false | pass | P1 | planned | none | none | planned | types | types | 浣? |
| TYPE-INST-006 | types | instanceof 鍙充晶闈炲嚱鏁?TypeError | fail_runtime | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-INST-007 | types | Symbol.hasInstance 鑷畾涔? | boundary | P2 | planned | none | none | planned | types | types | 楂? |
| TYPE-CONV-001 | types | ToBoolean falsy 鍊煎垪琛? | pass | P0 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-CONV-002 | types | ToBoolean truthy 鍊硷紙[]/{}锛? | pass | P0 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-CONV-003 | types | ToNumber string | pass | P0 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-CONV-004 | types | ToNumber null/undefined | pass | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-CONV-005 | types | ToNumber array/object | boundary | P1 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-CONV-006 | types | ToString number | pass | P0 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-CONV-007 | types | ToString array/object | pass | P1 | planned | none | none | planned | types | types / conversion | 浣? |
| TYPE-CONV-008 | types | ToPrimitive 瀵硅薄杞師濮嬪€? | boundary | P2 | planned | none | none | planned | types | types / conversion | 涓? |
| TYPE-TS-001 | types | TypeScript 绫诲瀷鏍囨敞鍏煎杈圭晫 | boundary | P0 | planned | none | none | planned | types | types | 楂? |
| TYPE-TS-002 | types | union type 璇硶鍏煎 | boundary | P0 | planned | none | none | planned | types | types | 楂? |
| TYPE-TS-003 | types | literal type 璇硶鍏煎 | boundary | P0 | planned | none | none | planned | types | types | 楂? |
| TYPE-TS-004 | types | type alias 璇硶鍏煎 | boundary | P0 | planned | none | none | planned | types | types | 楂? |
| TYPE-TS-005 | types | any / unknown 鏀寔鐘舵€? | boundary | P0 | planned | none | none | planned | types | types | 楂? |
| TYPE-TS-006 | types | 绫诲瀷鏂█ x as T 鍏煎 | boundary | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-TS-007 | types | interface 澹版槑杩愯鏃惰涓? | boundary | P1 | planned | none | none | planned | types | types | 涓? |
| TYPE-TS-008 | types | 娉涘瀷鏍囨敞杩愯鏃惰涓? | boundary | P2 | planned | none | none | planned | types | types | 涓? |
| TYPE-STAGE1-001 | types | typeof undefined | pass | P0 | generated | TYPE-PASS-018 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_undefined_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-002 | types | typeof null | pass | P0 | generated | TYPE-PASS-016 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_null_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-003 | types | typeof function | pass | P0 | generated | TYPE-PASS-015 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_function_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-004 | types | typeof object / array | pass | P0 | generated | TYPE-PASS-017 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_object_array_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-005 | types | typeof bigint | pass | P0 | generated | TYPE-PASS-014 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_bigint_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-006 | types | typeof symbol support boundary | boundary | P1 | generated | TYPE-BOUND-006 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_typeof_symbol_boundary.ets | spec_pending | types | pending confirmation |  |
| TYPE-STAGE1-007 | types | null == undefined | pass | P0 | generated | TYPE-PASS-006 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_null_undefined_loose_equal_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-008 | types | null !== undefined | pass | P0 | generated | TYPE-PASS-007 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_null_undefined_strict_not_equal_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-009 | types | undefined property access runtime error | fail_runtime | P0 | generated | TYPE-FAILR-003 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/fail_runtime/type_undefined_property_access_fail_runtime.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-010 | types | null property access runtime error | fail_runtime | P0 | generated | TYPE-FAILR-001 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/fail_runtime/type_null_property_access_fail_runtime.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-011 | types | number basic value | pass | P0 | generated | TYPE-PASS-008 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_basic_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-012 | types | NaN not equal itself | pass | P0 | generated | TYPE-PASS-011 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_nan_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-013 | types | Infinity / -Infinity | pass | P1 | generated | TYPE-PASS-010 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_infinity_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-014 | types | bigint basic value | pass | P0 | generated | TYPE-PASS-002 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_bigint_basic_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-015 | types | number and bigint comparison | pass | P1 | generated | TYPE-PASS-009 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_bigint_compare_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-016 | types | number + bigint runtime error | fail_runtime | P0 | generated | TYPE-FAILR-002 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/fail_runtime/type_number_bigint_add_fail_runtime.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-017 | types | bigint literal support boundary | boundary | P0 | generated | TYPE-BOUND-003 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_bigint_literal_boundary.ets | spec_pending | types | pending confirmation |  |
| TYPE-STAGE1-018 | types | string basic value | pass | P0 | generated | TYPE-PASS-013 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_string_basic_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-019 | types | boolean basic value | pass | P0 | generated | TYPE-PASS-003 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_boolean_basic_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-020 | types | object basic property access | pass | P0 | generated | TYPE-PASS-012 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_object_basic_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-021 | types | array runtime type | pass | P0 | generated | TYPE-PASS-001 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_array_runtime_type_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-022 | types | array instanceof Array | pass | P0 | generated | TYPE-PASS-004 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_instanceof_array_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-023 | types | class instance instanceof class | pass | P0 | generated | TYPE-PASS-005 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_instanceof_class_pass.ets | validation_pending | types | Types Stage 1 generated |  |
| TYPE-STAGE1-024 | types | TypeScript annotation syntax boundary | boundary | P0 | generated | TYPE-BOUND-005 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_ts_annotation_boundary.ets | spec_pending | types | pending confirmation |  |
| TYPE-STAGE1-025 | types | union type syntax boundary | boundary | P0 | generated | TYPE-BOUND-007 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_union_syntax_boundary.ets | spec_pending | types | pending confirmation |  |
| TYPE-STAGE1-026 | types | literal type syntax boundary | boundary | P0 | generated | TYPE-BOUND-004 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_literal_syntax_boundary.ets | spec_pending | types | pending confirmation |  |
| TYPE-STAGE1-027 | types | type alias syntax boundary | boundary | P0 | generated | TYPE-BOUND-001 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_alias_syntax_boundary.ets | spec_pending | types | pending confirmation |  |
| TYPE-STAGE1-028 | types | any / unknown syntax boundary | boundary | P0 | generated | TYPE-BOUND-002 | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_any_unknown_boundary.ets | spec_pending | types | pending confirmation |  |
## Historical Snapshot

> Original format replaced. Main matrix above is source of truth.
