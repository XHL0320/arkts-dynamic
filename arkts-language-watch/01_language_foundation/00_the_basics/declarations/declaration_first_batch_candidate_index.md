# declarations Candidate Index

## Summary

| Project | Count |
|---|---:|
| Candidate total | 40 |
| generated | 18 |
| planned | 22 |

## Candidate List

| Candidate ID | Case ID | Basics | Test Point | Case Type | Priority | Generation Status | Validation Status | Actual Path | Coverage ID | Stage | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| DECL-CAND-001 | DECL-PASS-006 | declarations | var 澹版槑鎻愬崌鍚庤祴鍊煎墠璁块棶杩斿洖 undefined | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_var_hoisting_pass.ets | DECL-VAR-001 | Stage 1 generated | exact_path_match |
| DECL-CAND-002 | DECL-PASS-005 | declarations | var 澹版槑鍚屼竴鍑芥暟浣滅敤鍩熼噸澶嶅０鏄? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_var_duplicate_pass.ets | DECL-VAR-002 | Stage 1 generated | exact_path_match |
| DECL-CAND-003 | none | declarations | var 澹版槑鏄惁鍏佽鍦ㄥ姩鎬?ArkTS 涓娇鐢? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-004 | DECL-PASS-003 | declarations | let 澹版槑鍧楃骇浣滅敤鍩熼伄钄藉灞傚悓鍚? | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_let_block_scope_pass.ets | DECL-LET-001 | Stage 1 generated | exact_path_match |
| DECL-CAND-005 | DECL-FAILR-005 | declarations | let 澹版槑鍓嶈闂Е鍙?TDZ ReferenceError | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_let_tdz_fail_runtime.ets | DECL-LET-003 | Stage 1 generated | exact_path_match |
| DECL-CAND-006 | DECL-FAILC-006 | declarations | let 鍚屽潡绾т綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_let_duplicate_fail_compile.ets | DECL-LET-004 | Stage 1 generated | exact_path_match |
| DECL-CAND-007 | DECL-BOUND-003 | declarations | let + var 鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/boundary/declaration_var_let_duplicate_boundary.ets | DECL-LET-005 | Stage 1 generated as boundary pending confirmation | exact_path_match |
| DECL-CAND-008 | none | declarations | TDZ 涓?typeof 璁块棶浠嶆姏鍑?ReferenceError | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-009 | DECL-FAILC-003 | declarations | const 澹版槑蹇呴』鍒濆鍖?SyntaxError | fail_compile | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_const_missing_initializer_fail_compile.ets | DECL-CONST-001 | Stage 1 generated | exact_path_match |
| DECL-CAND-010 | DECL-FAILR-002 | declarations | const 閲嶆柊璧嬪€?TypeError / compile error | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_const_reassignment_fail_runtime.ets | DECL-CONST-002 | Stage 1 generated; phase pending validation | exact_path_match |
| DECL-CAND-011 | DECL-FAILR-003 | declarations | const 澹版槑鍓嶈闂?TDZ ReferenceError | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_const_tdz_fail_runtime.ets | DECL-CONST-003 | Stage 1 generated | exact_path_match |
| DECL-CAND-012 | none | declarations | const 瀵硅薄灞炴€у彲淇敼锛堟祬灞備笉鍙彉锛? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-013 | DECL-PASS-002 | declarations | 鍑芥暟澹版槑鎻愬崌鍚庡彲鍦ㄥ０鏄庡墠璋冪敤 | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_function_hoisting_pass.ets | DECL-FUNC-001 | Stage 1 generated in declarations for binding/hoisting only | exact_path_match |
| DECL-CAND-014 | none | declarations | 鍑芥暟澹版槑涓?var 鍚屽悕閲嶅澹版槑锛堝嚱鏁颁紭鍏堬級 | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-015 | none | declarations | 鍑芥暟琛ㄨ揪寮忎笉鎻愬崌鍑芥暟浣擄紙鍙湁 var 鎻愬崌锛? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-016 | none | declarations | 涓ユ牸妯″紡鍧楃骇鍑芥暟澹版槑 TDZ 璁块棶 | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-017 | DECL-BOUND-001 | declarations | 闈炰弗鏍兼ā寮忓潡绾у嚱鏁板０鏄庢彁鍗囧埌鍑芥暟绾? | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/boundary/declaration_block_level_function_boundary.ets | DECL-FUNC-003 | Stage 1 generated as boundary | exact_path_match |
| DECL-CAND-018 | DECL-BOUND-002 | declarations | 鍑芥暟澹版槑鍚屽悕閲嶅澹版槑瑕嗙洊 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/boundary/declaration_function_duplicate_boundary.ets | DECL-FUNC-005 | Stage 1 generated as boundary pending confirmation | exact_path_match |
| DECL-CAND-019 | DECL-FAILR-001 | declarations | class 澹版槑 TDZ ReferenceError | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_class_tdz_fail_runtime.ets | DECL-CLASS-001 | Stage 1 generated | exact_path_match |
| DECL-CAND-020 | DECL-FAILC-001 | declarations | class 鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_class_duplicate_fail_compile.ets | DECL-CLASS-002 | Stage 1 generated | exact_path_match |
| DECL-CAND-021 | none | declarations | class + let 鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-022 | none | declarations | class 澹版槑鍦?if 鍧楀唴鐨勫潡绾т綔鐢ㄥ煙 | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-023 | none | declarations | class TDZ typeof 璁块棶 ReferenceError | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-024 | none | declarations | import 缁戝畾姝ｅ父璁块棶鐩爣妯″潡瀵煎嚭鍊? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-025 | DECL-REGR-001 | declarations | import live binding 鐩爣妯″潡鍙橀噺鍙樺寲鍙 | regression | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/regression/declaration_module_binding_regression.ets | DECL-IMPORT-002 | Stage 1 generated as declaration-level module binding smoke | exact_path_match |
| DECL-CAND-026 | DECL-FAILR-004 | declarations | import 缁戝畾鍙锛岄噸鏂拌祴鍊?TypeError | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_import_binding_readonly_fail_runtime.ets | DECL-IMPORT-003 | Stage 1 generated | exact_path_match |
| DECL-CAND-027 | none | declarations | import 閲嶅瀵煎叆鍚屽悕缁戝畾 SyntaxError | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-028 | DECL-FAILC-005 | declarations | import 鍑虹幇鍦ㄩ潪妯″潡椤跺眰锛堝嚱鏁颁綋鍐咃級 SyntaxError | fail_compile | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_import_not_top_level_fail_compile.ets | DECL-IMPORT-005 | Stage 1 generated | exact_path_match |
| DECL-CAND-029 | none | declarations | export named 瀵煎嚭鏈湴澹版槑鍊? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-030 | DECL-FAILC-004 | declarations | export 閲嶅瀵煎嚭鍚屽悕 SyntaxError | fail_compile | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_export_duplicate_fail_compile.ets | DECL-EXPORT-002 | Stage 1 generated | exact_path_match |
| DECL-CAND-031 | none | declarations | export 鍑虹幇鍦ㄩ潪妯″潡椤跺眰 SyntaxError | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-032 | none | declarations | export 澹版槑涓庢湰鍦板０鏄庡叧绯伙紙涓嶅垱寤烘柊缁戝畾锛? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-033 | none | declarations | annotation 澹版槑褰㈡€佹槧灏? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-034 | none | declarations | enum 澹版槑缁戝畾璇箟 | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-035 | none | declarations | var 澹版槑鍦ㄦā鍧楅《灞備笉姹℃煋 globalThis | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-036 | none | declarations | var 澹版槑鍦?for 寰幆涓綔鐢ㄥ煙娉勯湶 | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-037 | none | declarations | let 澹版槑鍦?for 寰幆姣忔杩唬鍒涘缓鏂扮粦瀹? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-038 | none | declarations | var + function 閲嶅澹版槑鍒濆鍖栭『搴? | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-039 | none | declarations | 宓屽浣滅敤鍩?let/const/var 娣峰悎閬斀 | pass | P0 | planned | planned | none | none |  | no_implementation |
| DECL-CAND-040 | none | declarations | class 澹版槑涓庡嚱鏁板０鏄庡悓鍚嶈竟鐣? | pass | P0 | planned | planned | none | none |  | no_implementation |
## Historical Snapshot

> Original format replaced.
