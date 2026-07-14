# declarations Coverage Matrix

## Coverage Status Summary

| Project | Count |
|---|---:|
| Coverage total | 68 |
| generated | 22 |
| planned | 46 |
| validation_pending | 19 |
| spec_pending | 3 |

## Main Coverage Matrix

| Coverage ID | Basics | Test Point | Case Type | Priority | Coverage Status | Case ID | Actual Path | Validation Status | Related | Risk | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| DECL-VAR-001 | declarations | var 澹版槑鎻愬崌鍚庤祴鍊煎墠璁块棶杩斿洖 undefined | pass | P0 | generated | DECL-PASS-006 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_var_hoisting_pass.ets | validation_pending | types | declarations | 浣? |
| DECL-VAR-002 | declarations | var 澹版槑鍦ㄥ悓涓€鍑芥暟浣滅敤鍩熷唴閲嶅澹版槑 | pass | P0 | generated | DECL-PASS-005 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_var_duplicate_pass.ets | validation_pending | types | declarations | 涓? |
| DECL-VAR-003 | declarations | var 澹版槑鍑芥暟浣滅敤鍩熼伄钄藉灞傚悓鍚?var | pass | P1 | planned | none | none | planned | types | declarations | 浣? |
| DECL-VAR-004 | declarations | var 澹版槑鍏ㄥ眬浣滅敤鍩熻涓猴紙鑴氭湰妯″紡锛? | pass | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-VAR-005 | declarations | var 澹版槑鍦ㄦā鍧楅《灞備笉姹℃煋 globalThis | pass | P1 | planned | none | none | planned | types | declarations / 06_module | 涓? |
| DECL-VAR-006 | declarations | var 澹版槑鍦?for 寰幆涓綔鐢ㄥ煙娉勯湶鍒板嚱鏁扮骇 | pass | P1 | planned | none | none | planned | types | declarations | 浣? |
| DECL-VAR-007 | declarations | var 澹版槑鏄惁鍏佽鍦ㄥ姩鎬?ArkTS 涓娇鐢? | boundary | P0 | planned | none | none | planned | types | declarations | 楂? |
| DECL-VAR-008 | declarations | var 澹版槑鍦?catch 瀛愬彞涓殑浣滅敤鍩? | pass | P2 | planned | none | none | planned | types | declarations | 浣? |
| DECL-LET-001 | declarations | let 澹版槑鍧楃骇浣滅敤鍩熼伄钄藉灞傚悓鍚? | pass | P0 | generated | DECL-PASS-003 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_let_block_scope_pass.ets | validation_pending | types | declarations | 浣? |
| DECL-LET-002 | declarations | let 澹版槑鏃犲垵濮嬪寲鍣ㄩ粯璁?undefined | pass | P0 | planned | none | none | planned | types | declarations | 浣? |
| DECL-LET-003 | declarations | let 澹版槑鍓嶈闂Е鍙?TDZ ReferenceError | fail_runtime | P0 | generated | DECL-FAILR-005 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_let_tdz_fail_runtime.ets | validation_pending | types | declarations | 楂? |
| DECL-LET-004 | declarations | let 鍚屽潡绾т綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P0 | generated | DECL-FAILC-006 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_let_duplicate_fail_compile.ets | validation_pending | types | declarations | 涓? |
| DECL-LET-005 | declarations | let + var 鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | boundary | P0 | generated | DECL-BOUND-003 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/boundary/declaration_var_let_duplicate_boundary.ets | spec_pending | types | declarations | 涓? |
| DECL-LET-006 | declarations | TDZ 涓?typeof 璁块棶浠嶆姏鍑?ReferenceError | fail_runtime | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-LET-007 | declarations | let 澹版槑鍦?for 寰幆姣忔杩唬鍒涘缓鏂扮粦瀹? | pass | P1 | planned | none | none | planned | types | declarations | 浣? |
| DECL-LET-008 | declarations | let 澹版槑鍦?switch-case 涓潡绾т綔鐢ㄥ煙 | pass | P2 | planned | none | none | planned | types | declarations | 浣? |
| DECL-LET-009 | declarations | let 澹版槑鍒濆鍖栧櫒鑷紩鐢?TDZ | fail_runtime | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-CONST-001 | declarations | const 澹版槑蹇呴』鍒濆鍖?SyntaxError | fail_compile | P0 | generated | DECL-FAILC-003 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_const_missing_initializer_fail_compile.ets | validation_pending | types | declarations | 浣? |
| DECL-CONST-002 | declarations | const 澹版槑鍚庡€间笉鍙噸鏂拌祴鍊?TypeError | fail_runtime | P0 | generated | DECL-FAILR-002 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_const_reassignment_fail_runtime.ets | validation_pending | types | declarations | 楂? |
| DECL-CONST-003 | declarations | const 澹版槑鍓嶈闂?TDZ ReferenceError | fail_runtime | P0 | generated | DECL-FAILR-003 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_const_tdz_fail_runtime.ets | validation_pending | types | declarations | 楂? |
| DECL-CONST-004 | declarations | const 澹版槑瀵硅薄灞炴€у彲淇敼 | pass | P0 | planned | none | none | planned | types | declarations | 涓? |
| DECL-CONST-005 | declarations | const 澹版槑鏁扮粍鍐呭鍙慨鏀? | pass | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-CONST-006 | declarations | const 鍚屽潡绾т綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P0 | generated | DECL-FAILC-002 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_const_duplicate_fail_compile.ets | validation_pending | types | declarations | 涓? |
| DECL-CONST-007 | declarations | const + let 鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-CONST-008 | declarations | const 閲嶆柊璧嬪€煎湪鍔ㄦ€?ArkTS 涓槸鍚︿负缂栬瘧鏈熼敊璇? | boundary | P0 | planned | none | none | planned | types | declarations | 楂? |
| DECL-CONST-009 | declarations | const 澹版槑鍘熷鍊煎畬鍏ㄤ笉鍙彉 | pass | P0 | planned | none | none | planned | types | declarations | 浣? |
| DECL-FUNC-001 | declarations | 鍑芥暟澹版槑鎻愬崌鍚庡彲鍦ㄥ０鏄庡墠璋冪敤 | pass | P0 | generated | DECL-PASS-002 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_function_hoisting_pass.ets | validation_pending | types | 01_function | 浣? |
| DECL-FUNC-002 | declarations | 鍑芥暟澹版槑涓?var 鍚屽悕閲嶅澹版槑锛堝嚱鏁颁紭鍏堬級 | pass | P0 | planned | none | none | planned | types | declarations + 01_function | 涓? |
| DECL-FUNC-003 | declarations | 鍑芥暟澹版槑鍦ㄥ潡绾т綔鐢ㄥ煙锛堜弗鏍兼ā寮忥級 | boundary | P0 | generated | DECL-BOUND-001 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/boundary/declaration_block_level_function_boundary.ets | spec_pending | types | 01_function + declarations | 楂? |
| DECL-FUNC-004 | declarations | 鍑芥暟澹版槑鍦ㄥ潡绾т綔鐢ㄥ煙锛堥潪涓ユ牸妯″紡锛夋彁鍗囧埌鍑芥暟绾? | boundary | P1 | planned | none | none | planned | types | 01_function + declarations | 楂? |
| DECL-FUNC-005 | declarations | 鍑芥暟澹版槑鍚屽悕閲嶅澹版槑瑕嗙洊 | boundary | P1 | generated | DECL-BOUND-002 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/boundary/declaration_function_duplicate_boundary.ets | spec_pending | types | declarations | 浣? |
| DECL-FUNC-006 | declarations | 鍑芥暟琛ㄨ揪寮忎笉鎻愬崌鍑芥暟浣? | pass | P0 | planned | none | none | planned | types | 01_function | 浣? |
| DECL-FUNC-007 | declarations | 涓ユ牸妯″紡鍧楃骇鍑芥暟澹版槑 TDZ 璁块棶 | fail_runtime | P1 | planned | none | none | planned | types | 01_function + declarations | 楂? |
| DECL-CLASS-001 | declarations | class 澹版槑 TDZ ReferenceError | fail_runtime | P0 | generated | DECL-FAILR-001 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_class_tdz_fail_runtime.ets | validation_pending | types | declarations | 楂? |
| DECL-CLASS-002 | declarations | class 澹版槑鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P0 | generated | DECL-FAILC-001 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_class_duplicate_fail_compile.ets | validation_pending | types | declarations | 涓? |
| DECL-CLASS-003 | declarations | class 澹版槑鍚庢甯稿疄渚嬪寲 | pass | P0 | planned | none | none | planned | types | 02_class | 浣? |
| DECL-CLASS-004 | declarations | class + let 鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-CLASS-005 | declarations | class + var 鍚屼綔鐢ㄥ煙閲嶅澹版槑 SyntaxError | fail_compile | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-CLASS-006 | declarations | class 澹版槑鍦?if 鍧楀唴鐨勫潡绾т綔鐢ㄥ煙 | pass | P1 | planned | none | none | planned | types | declarations | 浣? |
| DECL-CLASS-007 | declarations | class 澹版槑 TDZ typeof 璁块棶 | fail_runtime | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-IMPORT-001 | declarations | import 缁戝畾姝ｅ父璁块棶鐩爣妯″潡瀵煎嚭鍊? | integration | P0 | planned | none | none | planned | types | 06_module | 浣? |
| DECL-IMPORT-002 | declarations | import live binding 鐩爣妯″潡鍙橀噺鍙樺寲鍙 | regression | P0 | generated | DECL-REGR-001 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/regression/declaration_module_binding_regression.ets | validation_pending | types | 06_module | 楂? |
| DECL-IMPORT-003 | declarations | import 缁戝畾鍙锛岄噸鏂拌祴鍊?TypeError | fail_runtime | P0 | generated | DECL-FAILR-004 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_runtime/declaration_import_binding_readonly_fail_runtime.ets | validation_pending | types | 06_module + declarations | 楂? |
| DECL-IMPORT-004 | declarations | import 閲嶅瀵煎叆鍚屽悕缁戝畾 SyntaxError | fail_compile | P0 | planned | none | none | planned | types | 06_module | 涓? |
| DECL-IMPORT-005 | declarations | import 鍑虹幇鍦ㄩ潪妯″潡椤跺眰锛堝嚱鏁颁綋鍐咃級 SyntaxError | fail_compile | P1 | generated | DECL-FAILC-005 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_import_not_top_level_fail_compile.ets | validation_pending | types | 06_module | 浣? |
| DECL-IMPORT-006 | declarations | import 缁戝畾鍦ㄦā鍧楅《灞傚０鏄庝綅缃笌鎵ц椤哄簭 | pass | P1 | planned | none | none | planned | types | 06_module | 涓? |
| DECL-IMPORT-007 | declarations | 寰幆渚濊禆涓?import 澹版槑 TDZ 杈圭晫 | boundary | P1 | planned | none | none | planned | types | 06_module | 楂? |
| DECL-EXPORT-001 | declarations | export named 瀵煎嚭鏈湴澹版槑鍊? | integration | P0 | planned | none | none | planned | types | 06_module | 浣? |
| DECL-EXPORT-002 | declarations | export 閲嶅瀵煎嚭鍚屽悕 SyntaxError | fail_compile | P0 | generated | DECL-FAILC-004 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/fail_compile/declaration_export_duplicate_fail_compile.ets | validation_pending | types | 06_module | 涓? |
| DECL-EXPORT-003 | declarations | export 鍑虹幇鍦ㄩ潪妯″潡椤跺眰 SyntaxError | fail_compile | P1 | planned | none | none | planned | types | 06_module | 浣? |
| DECL-EXPORT-004 | declarations | export 澹版槑涓庢湰鍦板０鏄庡叧绯伙紙涓嶅垱寤烘柊缁戝畾锛? | pass | P1 | planned | none | none | planned | types | 06_module | 浣? |
| DECL-EXPORT-005 | declarations | export default 涓?named export 澹版槑杈圭晫 | integration | P1 | planned | none | none | planned | types | 06_module | 涓? |
| DECL-EXPORT-006 | declarations | re-export 澹版槑涓庢湰鍦板０鏄庡啿绐? | fail_compile | P2 | planned | none | none | planned | types | 06_module | 浣? |
| DECL-ANN-001 | declarations | annotation 澹版槑褰㈡€佹槧灏? | boundary | P1 | planned | none | none | planned | types | 08_annotation | 楂? |
| DECL-ANN-002 | declarations | custom annotation 澹版槑杩愯鏃惰涓? | boundary | P2 | planned | none | none | planned | types | 08_annotation | 楂? |
| DECL-ANN-003 | declarations | annotation 淇グ鐨勫０鏄庣粦瀹氳涓烘槸鍚﹀彈褰卞搷 | boundary | P1 | planned | none | none | planned | types | 08_annotation + declarations | 涓? |
| DECL-CROSS-001 | declarations | 宓屽浣滅敤鍩?let/const/var 娣峰悎閬斀 | integration | P1 | planned | none | none | planned | types | declarations | 涓? |
| DECL-CROSS-002 | declarations | var + function 閲嶅澹版槑鍒濆鍖栭『搴? | regression | P1 | planned | none | none | planned | types | declarations + 01_function | 涓? |
| DECL-CROSS-003 | declarations | 澹版槑鍦?try/catch 涓殑 TDZ 浜や簰 | integration | P2 | planned | none | none | planned | types | declarations | 浣? |
| DECL-CROSS-004 | declarations | class 澹版槑涓庡嚱鏁板０鏄庡悓鍚嶈竟鐣? | boundary | P2 | planned | none | none | planned | types | declarations + 01_function + 02_class | 涓? |
| DECL-ENUM-001 | declarations | enum 澹版槑缁戝畾璇箟 | boundary | P1 | planned | none | none | planned | types | declarations | 楂? |
| DECL-ENUM-002 | declarations | const enum 澹版槑琛屼负 | boundary | P2 | planned | none | none | planned | types | declarations | 楂? |
| DECL-MOD-001 | declarations | 妯″潡椤跺眰 let 澹版槑姝ｅ父璁块棶 | pass | P0 | generated | DECL-PASS-004 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_module_top_level_lexical_pass.ets | validation_pending | types | declarations / 06_module | 浣? |
| DECL-CONST-010 | declarations | const 澹版槑鍧楃骇浣滅敤鍩熼伄钄藉灞傚悓鍚? | pass | P1 | generated | DECL-PASS-001 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/pass/declaration_const_block_scope_pass.ets | validation_pending | types | declarations | 浣? |
| DECL-REG-001 | declarations | TDZ 寮曠敤涓嶅緱琚紭鍖栨帀 | regression | P1 | generated | DECL-REGR-002 | arkts-language-watch/01_language_foundation/00_the_basics/declarations/xts/regression/declaration_tdz_reference_regression.ets | validation_pending | types | declarations | 涓? |
| DECL-MOD-002 | declarations | 妯″潡椤跺眰 var 涓嶆薄鏌?globalThis | boundary | P1 | planned | none | none | planned | types | declarations / 06_module | 涓? |
| DECL-SCOPE-001 | declarations | var 鍑芥暟浣滅敤鍩?vs let 鍧楃骇浣滅敤鍩熷姣? | smoke | P0 | planned | none | none | planned | types | declarations | 浣? |
| DECL-SCOPE-002 | declarations | 鍏ㄥ眬浣滅敤鍩?var 璧嬪€煎垱寤?globalThis 灞炴€? | pass | P1 | planned | none | none | planned | types | declarations | 涓? |
## Historical Snapshot

> Original format replaced. Main matrix above is source of truth.
