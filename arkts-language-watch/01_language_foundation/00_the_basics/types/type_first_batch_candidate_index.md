# types Candidate Index

## Summary

| Project | Count |
|---|---:|
| Candidate total | 65 |
| generated | 38 |
| planned | 27 |

## Candidate List

| Candidate ID | Case ID | Basics | Test Point | Case Type | Priority | Generation Status | Validation Status | Actual Path | Coverage ID | Stage | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| TYPE-CAND-001 | TYPE-PASS-018 | types | typeof undefined 杩斿洖 "undefined" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_undefined_pass.ets | TYPE-STAGE1-001 |  | exact_path_match |
| TYPE-CAND-002 | TYPE-PASS-016 | types | typeof null 杩斿洖 "object" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_null_pass.ets | TYPE-STAGE1-002 |  | exact_path_match |
| TYPE-CAND-003 | TYPE-PASS-015 | types | typeof function 杩斿洖 "function" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_function_pass.ets | TYPE-STAGE1-003 |  | exact_path_match |
| TYPE-CAND-004 | none | types | typeof array 杩斿洖 "object" | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-005 | TYPE-PASS-014 | types | typeof bigint 杩斿洖 "bigint" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_bigint_pass.ets | TYPE-STAGE1-005 |  | exact_path_match |
| TYPE-CAND-006 | none | types | typeof symbol 杩斿洖 "symbol" | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-007 | none | types | null 涓?undefined 鎶借薄鐩哥瓑 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-008 | none | types | null 涓?undefined 涓ユ牸涓嶇瓑 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-009 | TYPE-PASS-008 | types | number 鍩虹鍊硷紙鏁存暟/娴偣锛? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_basic_pass.ets | TYPE-STAGE1-011 |  | exact_path_match |
| TYPE-CAND-010 | TYPE-PASS-011 | types | number NaN 鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_nan_pass.ets | TYPE-STAGE1-012 |  | exact_path_match |
| TYPE-CAND-011 | TYPE-PASS-010 | types | number Infinity / -Infinity | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_infinity_pass.ets | TYPE-STAGE1-013 |  | exact_path_match |
| TYPE-CAND-012 | TYPE-PASS-002 | types | bigint 鍩虹鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_bigint_basic_pass.ets | TYPE-STAGE1-014 |  | exact_path_match |
| TYPE-CAND-013 | none | types | number 涓?bigint 姣旇緝锛? == 1n锛? | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-014 | none | types | number + bigint 娣峰悎杩愮畻 TypeError | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-015 | TYPE-PASS-013 | types | string 鍩虹鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_string_basic_pass.ets | TYPE-STAGE1-018 |  | exact_path_match |
| TYPE-CAND-016 | TYPE-PASS-003 | types | boolean true/false 鍩虹鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_boolean_basic_pass.ets | TYPE-STAGE1-019 |  | exact_path_match |
| TYPE-CAND-017 | none | types | ToBoolean falsy 鍊煎垪琛? | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-018 | none | types | ToBoolean truthy 鍊硷紙[]/{}锛? | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-019 | none | types | object 鍩虹灞炴€ц闂? | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-020 | none | types | array 杩愯鏃剁被鍨嬶紙typeof + isArray锛? | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-021 | none | types | function object 杩愯鏃剁被鍨? | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-022 | TYPE-PASS-005 | types | instanceof class instance | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_instanceof_class_pass.ets | TYPE-STAGE1-023 |  | exact_path_match |
| TYPE-CAND-023 | TYPE-PASS-004 | types | instanceof array | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_instanceof_array_pass.ets | TYPE-STAGE1-022 |  | exact_path_match |
| TYPE-CAND-024 | none | types | instanceof 鍙充晶闈炲嚱鏁?TypeError | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-025 | none | types | ToBoolean false values | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-026 | none | types | ToBoolean true values | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-027 | none | types | ToNumber string | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-028 | none | types | ToString number | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-029 | TYPE-BOUND-005 | types | TypeScript 绫诲瀷鏍囨敞鍏煎杈圭晫 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_ts_annotation_boundary.ets | TYPE-STAGE1-024 |  | exact_path_match |
| TYPE-CAND-030 | none | types | union type 璇硶杈圭晫 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-031 | none | types | literal type 璇硶杈圭晫 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-032 | none | types | type alias 璇硶杈圭晫 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-033 | none | types | any / unknown 杈圭晫 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-034 | none | types | symbol 鍒涘缓鍜屽敮涓€鎬? | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-035 | none | types | new Symbol() TypeError | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-036 | none | types | NaN !== NaN 琛屼负 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-037 | none | types | number +0 / -0 鍖哄垎 | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-038 | none | types | Boolean([]) 涓?true | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-039 | none | types | Boolean({}) 涓?true | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-040 | none | types | Symbol.hasInstance 鑷畾涔?instanceof | pass | P0 | planned | planned | none | none |  | no_implementation |
| TYPE-CAND-001 | TYPE-PASS-018 | types | typeof undefined 杩斿洖 "undefined" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_undefined_pass.ets | TYPE-STAGE1-001 | Types Stage 1 | exact_path_match |
| TYPE-CAND-002 | TYPE-PASS-016 | types | typeof null 杩斿洖 "object" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_null_pass.ets | TYPE-STAGE1-002 | Types Stage 1 | exact_path_match |
| TYPE-CAND-003 | TYPE-PASS-015 | types | typeof function 杩斿洖 "function" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_function_pass.ets | TYPE-STAGE1-003 | Types Stage 1 | exact_path_match |
| TYPE-CAND-004 | TYPE-PASS-017 | types | typeof array 杩斿洖 "object" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_object_array_pass.ets | TYPE-STAGE1-004 | Types Stage 1 | exact_path_match |
| TYPE-CAND-005 | TYPE-PASS-014 | types | typeof bigint 杩斿洖 "bigint" | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_typeof_bigint_pass.ets | TYPE-STAGE1-005 | Types Stage 1 | exact_path_match |
| TYPE-CAND-006 | TYPE-BOUND-006 | types | typeof symbol 杩斿洖 "symbol" | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_typeof_symbol_boundary.ets | TYPE-STAGE1-006 | Types Stage 1 | exact_path_match |
| TYPE-CAND-007 | TYPE-PASS-006 | types | null == undefined | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_null_undefined_loose_equal_pass.ets | TYPE-STAGE1-007 | Types Stage 1 | exact_path_match |
| TYPE-CAND-008 | TYPE-PASS-007 | types | null !== undefined | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_null_undefined_strict_not_equal_pass.ets | TYPE-STAGE1-008 | Types Stage 1 | exact_path_match |
| TYPE-CAND-009 | TYPE-PASS-008 | types | number 鍩虹鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_basic_pass.ets | TYPE-STAGE1-011 | Types Stage 1 | exact_path_match |
| TYPE-CAND-010 | TYPE-PASS-011 | types | number NaN 鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_nan_pass.ets | TYPE-STAGE1-012 | Types Stage 1 | exact_path_match |
| TYPE-CAND-011 | TYPE-PASS-010 | types | number Infinity / -Infinity | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_infinity_pass.ets | TYPE-STAGE1-013 | Types Stage 1 | exact_path_match |
| TYPE-CAND-012 | TYPE-PASS-002 | types | bigint 鍩虹鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_bigint_basic_pass.ets | TYPE-STAGE1-014 | Types Stage 1 | exact_path_match |
| TYPE-CAND-013 | TYPE-PASS-009 | types | number 涓?bigint 姣旇緝 | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_number_bigint_compare_pass.ets | TYPE-STAGE1-015 | Types Stage 1 | exact_path_match |
| TYPE-CAND-014 | TYPE-FAILR-002 | types | number + bigint TypeError | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/fail_runtime/type_number_bigint_add_fail_runtime.ets | TYPE-STAGE1-016 | Types Stage 1 | exact_path_match |
| TYPE-CAND-015 | TYPE-PASS-013 | types | string 鍩虹鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_string_basic_pass.ets | TYPE-STAGE1-018 | Types Stage 1 | exact_path_match |
| TYPE-CAND-016 | TYPE-PASS-003 | types | boolean true/false 鍩虹鍊? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_boolean_basic_pass.ets | TYPE-STAGE1-019 | Types Stage 1 | exact_path_match |
| TYPE-CAND-019 | TYPE-PASS-012 | types | object 鍩虹灞炴€ц闂? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_object_basic_pass.ets | TYPE-STAGE1-020 | Types Stage 1 | exact_path_match |
| TYPE-CAND-020 | TYPE-PASS-001 | types | array 杩愯鏃剁被鍨? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_array_runtime_type_pass.ets | TYPE-STAGE1-021 | Types Stage 1 | exact_path_match |
| TYPE-CAND-022 | TYPE-PASS-005 | types | instanceof class instance | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_instanceof_class_pass.ets | TYPE-STAGE1-023 | Types Stage 1 | exact_path_match |
| TYPE-CAND-023 | TYPE-PASS-004 | types | instanceof array | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/pass/type_instanceof_array_pass.ets | TYPE-STAGE1-022 | Types Stage 1 | exact_path_match |
| TYPE-CAND-029 | TYPE-BOUND-005 | types | TypeScript 绫诲瀷鏍囨敞鍏煎杈圭晫 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_ts_annotation_boundary.ets | TYPE-STAGE1-024 | Types Stage 1 | exact_path_match |
| TYPE-CAND-030 | TYPE-BOUND-007 | types | union type 璇硶杈圭晫 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_union_syntax_boundary.ets | TYPE-STAGE1-025 | Types Stage 1 | exact_path_match |
| TYPE-CAND-031 | TYPE-BOUND-004 | types | literal type 璇硶杈圭晫 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_literal_syntax_boundary.ets | TYPE-STAGE1-026 | Types Stage 1 | exact_path_match |
| TYPE-CAND-032 | TYPE-BOUND-001 | types | type alias 璇硶杈圭晫 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_alias_syntax_boundary.ets | TYPE-STAGE1-027 | Types Stage 1 | exact_path_match |
| TYPE-CAND-033 | TYPE-BOUND-002 | types | any / unknown 杈圭晫 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/types/xts/boundary/type_any_unknown_boundary.ets | TYPE-STAGE1-028 | Types Stage 1 | exact_path_match |
## Historical Snapshot

> Original format replaced.
