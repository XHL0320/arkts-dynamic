# statements Coverage Matrix

## Coverage Status Summary

| Project | Count |
|---|---:|
| Coverage total | 103 |
| generated | 49 |
| planned | 54 |
| validation_pending | 45 |
| spec_pending | 4 |

## Main Coverage Matrix

| Coverage ID | Basics | Test Point | Case Type | Priority | Coverage Status | Case ID | Actual Path | Validation Status | Related | Risk | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| STMT-BLOCK-001 | statements | block 鍧楃骇浣滅敤鍩?let 涓嶆硠闇? | pass | P0 | generated | STMT-PASS-001 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_block_basic_pass.ets | validation_pending | function | statements / declarations | 浣? |
| STMT-BLOCK-002 | statements | block 鍐?let/const 鍧楃骇缁戝畾 | pass | P0 | generated | STMT-PASS-001 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_block_basic_pass.ets | validation_pending | function | statements / declarations | 浣? |
| STMT-BLOCK-003 | statements | block 鍐?var 浠嶄负鍑芥暟浣滅敤鍩? | pass | P1 | planned | none | none | planned | function | statements / declarations | 浣? |
| STMT-BLOCK-004 | statements | 宓屽 block 浣滅敤鍩熼伄钄? | pass | P1 | planned | none | none | planned | function | statements / declarations | 浣? |
| STMT-BLOCK-005 | statements | block 绌哄潡姝ｅ父鎵ц | pass | P2 | planned | none | none | planned | function | statements | 浣? |
| STMT-BLOCK-006 | statements | block 杩斿洖 normal completion | pass | P2 | planned | none | none | planned | function | statements | 浣? |
| STMT-EMPTY-001 | statements | 绌鸿鍙ヤ笉褰卞搷鎵ц | pass | P0 | generated | STMT-PASS-006 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_empty_basic_pass.ets | validation_pending | function | statements | 浣? |
| STMT-EMPTY-002 | statements | 绌鸿鍙ュ湪寰幆涓? | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-EMPTY-003 | statements | 澶氫釜杩炵画绌鸿鍙? | pass | P2 | generated | STMT-PASS-006 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_empty_basic_pass.ets | validation_pending | function | statements | 浣? |
| STMT-EMPTY-004 | statements | 绌鸿鍙ヤ綔涓?if body | pass | P2 | planned | none | none | planned | function | statements | 浣? |
| STMT-EMPTY-005 | statements | 绌鸿鍙ヨ繑鍥?normal completion | pass | P2 | planned | none | none | planned | function | statements | 浣? |
| STMT-EXPR-001 | statements | 琛ㄨ揪寮忚鍙ユ墽琛屽苟涓㈠純缁撴灉 | pass | P0 | generated | STMT-PASS-007 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_expression_basic_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-EXPR-002 | statements | 璧嬪€艰〃杈惧紡璇彞 | pass | P0 | generated | STMT-PASS-007 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_expression_basic_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-EXPR-003 | statements | 鍑芥暟璋冪敤琛ㄨ揪寮忚鍙? | pass | P0 | generated | STMT-PASS-007 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_expression_basic_pass.ets | validation_pending | function | statements / function | 浣? |
| STMT-EXPR-004 | statements | 鑷鑷噺琛ㄨ揪寮忚鍙? | pass | P1 | planned | none | none | planned | function | statements / operators | 浣? |
| STMT-EXPR-005 | statements | 琛ㄨ揪寮忚鍙ヤ笉鑳戒互 function/class 寮€澶? | boundary | P1 | planned | none | none | planned | function | statements | 涓? |
| STMT-IF-001 | statements | if true 鍒嗘敮鎵ц | pass | P0 | generated | STMT-PASS-016 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_if_true_branch_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-IF-002 | statements | if false 鍒嗘敮璺宠繃 | pass | P0 | generated | STMT-PASS-015 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_if_false_branch_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-IF-003 | statements | if else if 閾惧尮閰? | pass | P0 | generated | STMT-PASS-014 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_if_else_chain_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-IF-004 | statements | if 鏉′欢 ToBoolean 杞崲 | pass | P1 | planned | none | none | planned | function | statements / operators / types | 浣? |
| STMT-IF-005 | statements | if 鏃?else 涓旀潯浠?false | pass | P1 | planned | none | none | planned | function | statements / operators | 浣? |
| STMT-IF-006 | statements | if 鍙墽琛屽尮閰嶅垎鏀? | pass | P1 | planned | none | none | planned | function | statements / operators | 浣? |
| STMT-SWITCH-001 | statements | switch case 鍖归厤鎵ц | pass | P0 | generated | STMT-PASS-017 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_switch_break_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-SWITCH-002 | statements | switch default 鎵ц | pass | P0 | generated | STMT-PASS-019 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_switch_default_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-SWITCH-003 | statements | switch fall-through 鏃?break | pass | P0 | generated | STMT-PASS-020 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_switch_fall_through_pass.ets | validation_pending | function | statements / operators | 涓? |
| STMT-SWITCH-004 | statements | switch 涓ユ牸鐩哥瓑姣旇緝 | pass | P0 | generated | STMT-PASS-018 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_switch_case_match_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-SWITCH-005 | statements | switch 鏃犲尮閰嶆棤 default | pass | P1 | generated | STMT-PASS-019 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_switch_default_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-SWITCH-006 | statements | switch 琛ㄨ揪寮忓彧姹傚€间竴娆? | pass | P1 | planned | none | none | planned | function | statements / operators | 浣? |
| STMT-SWITCH-007 | statements | switch default 鍦ㄤ腑闂翠綅缃? | boundary | P2 | planned | none | none | planned | function | statements | 涓? |
| STMT-WHILE-001 | statements | while 寰幆姝ｅ父鎵ц | pass | P0 | generated | STMT-PASS-024 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_while_basic_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-WHILE-002 | statements | while 鏉′欢 false 闆舵鎵ц | pass | P0 | generated | STMT-PASS-024 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_while_basic_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-WHILE-003 | statements | while break 閫€鍑? | pass | P0 | generated | STMT-PASS-025 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_while_break_pass.ets | validation_pending | function | statements | 浣? |
| STMT-WHILE-004 | statements | while continue 璺宠繃 | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-WHILE-005 | statements | while 鏃犻檺寰幆 | boundary | P2 | planned | none | none | planned | function | statements | 涓? |
| STMT-WHILE-006 | statements | while 鏉′欢 ToBoolean 杞崲 | pass | P1 | planned | none | none | planned | function | statements / operators / types | 浣? |
| STMT-DOWHILE-001 | statements | do-while 鑷冲皯鎵ц涓€娆? | pass | P0 | generated | STMT-PASS-005 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_do_while_execute_once_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-DOWHILE-002 | statements | do-while 鏉′欢 false 涔熸墽琛屼竴娆? | pass | P0 | generated | STMT-PASS-005 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_do_while_execute_once_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-DOWHILE-003 | statements | do-while break 閫€鍑? | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-DOWHILE-004 | statements | do-while continue | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-DOWHILE-005 | statements | do-while 澶氭寰幆 | pass | P2 | planned | none | none | planned | function | statements / operators | 浣? |
| STMT-FOR-001 | statements | for init/cond/update 鎵ц椤哄簭 | pass | P0 | generated | STMT-PASS-011 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_execution_order_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-FOR-002 | statements | for 鍩虹寰幆 | pass | P0 | generated | STMT-PASS-008 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_basic_pass.ets | validation_pending | function | statements / operators | 浣? |
| STMT-FOR-003 | statements | for break 閫€鍑? | pass | P0 | generated | STMT-PASS-009 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_break_pass.ets | validation_pending | function | statements | 浣? |
| STMT-FOR-004 | statements | for continue 璺宠繃 | pass | P0 | generated | STMT-PASS-010 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_continue_pass.ets | validation_pending | function | statements | 浣? |
| STMT-FOR-005 | statements | for init 涓?let 鍧楃骇缁戝畾 | pass | P1 | planned | none | none | planned | function | statements / declarations | 浣? |
| STMT-FOR-006 | statements | for 鐪佺暐 cond 涓?true | pass | P1 | planned | none | none | planned | function | statements / operators | 浣? |
| STMT-FOR-007 | statements | for init 涓?var 鍑芥暟浣滅敤鍩? | pass | P2 | planned | none | none | planned | function | statements / declarations | 浣? |
| STMT-FORIN-001 | statements | for-in 鏋氫妇瀵硅薄鑷韩灞炴€? | pass | P0 | generated | STMT-PASS-012 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_in_object_property_pass.ets | validation_pending | function | statements / types | 浣? |
| STMT-FORIN-002 | statements | for-in 鏋氫妇缁ф壙灞炴€? | pass | P1 | planned | none | none | planned | function | statements / types | 涓? |
| STMT-FORIN-003 | statements | for-in 鏋氫妇椤哄簭 | boundary | P0 | planned | none | none | planned | function | statements / types | 楂? |
| STMT-FORIN-004 | statements | for-in 鏁扮粍绱㈠紩鏋氫妇 | pass | P1 | generated | STMT-PASS-012 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_in_object_property_pass.ets | validation_pending | function | statements / types | 浣? |
| STMT-FORIN-005 | statements | for-in 鍒犻櫎灞炴€у悗涓嶆灇涓? | boundary | P2 | planned | none | none | planned | function | statements / types | 涓? |
| STMT-FORIN-006 | statements | for-in symbol 灞炴€т笉鏋氫妇 | pass | P2 | planned | none | none | planned | function | statements / types | 浣? |
| STMT-FOROF-001 | statements | for-of 杩唬鏁扮粍 | pass | P0 | generated | STMT-PASS-013 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_of_array_pass.ets | validation_pending | function | statements / types | 浣? |
| STMT-FOROF-002 | statements | for-of 杩唬瀛楃涓? | pass | P1 | planned | none | none | planned | function | statements / types | 浣? |
| STMT-FOROF-003 | statements | for-of 闈?iterable TypeError | fail_runtime | P0 | generated | STMT-FAILR-001 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/fail_runtime/statement_for_of_non_iterable_fail_runtime.ets | validation_pending | function | statements / types | 楂? |
| STMT-FOROF-004 | statements | for-of Symbol.iterator 鏀寔 | boundary | P0 | planned | none | none | planned | function | statements / types | 楂? |
| STMT-FOROF-005 | statements | for-of break 閫€鍑? | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-FOROF-006 | statements | for-of 鑷畾涔?iterable | boundary | P1 | planned | none | none | planned | function | statements / types | 涓? |
| STMT-BREAK-001 | statements | break 璺冲嚭寰幆 | pass | P0 | generated | STMT-PASS-025 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_while_break_pass.ets | validation_pending | function | statements | 浣? |
| STMT-BREAK-002 | statements | break 璺冲嚭 switch | pass | P0 | planned | none | none | planned | function | statements | 浣? |
| STMT-BREAK-003 | statements | break label 璺冲嚭澶栧眰寰幆 | pass | P0 | generated | STMT-PASS-002 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_break_label_pass.ets | validation_pending | function | statements | 浣? |
| STMT-BREAK-004 | statements | break 鍦ㄥ惊鐜 SyntaxError | fail_compile | P0 | generated | STMT-FAILC-001 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/fail_compile/statement_break_outside_loop_fail_compile.ets | validation_pending | function | statements | 涓? |
| STMT-BREAK-005 | statements | break label 涓嶅瓨鍦?SyntaxError | fail_compile | P1 | planned | none | none | planned | function | statements | 涓? |
| STMT-BREAK-006 | statements | break 鍦ㄥ祵濂楀惊鐜腑鍙烦鍑哄唴灞? | pass | P1 | generated | STMT-REGR-001 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/regression/statement_loop_control_flow_regression.ets | validation_pending | function | statements | 浣? |
| STMT-CONTINUE-001 | statements | continue 璺宠繃褰撳墠杩唬 | pass | P0 | generated | STMT-PASS-010 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_for_continue_pass.ets | validation_pending | function | statements | 浣? |
| STMT-CONTINUE-002 | statements | continue label 璺冲埌澶栧眰寰幆 | pass | P0 | generated | STMT-PASS-004 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_continue_label_pass.ets | validation_pending | function | statements | 浣? |
| STMT-CONTINUE-003 | statements | continue 鍦ㄥ惊鐜 SyntaxError | fail_compile | P0 | generated | STMT-FAILC-002 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/fail_compile/statement_continue_outside_loop_fail_compile.ets | validation_pending | function | statements | 涓? |
| STMT-CONTINUE-004 | statements | continue 鍦?switch 涓? | boundary | P1 | planned | none | none | planned | function | statements | 涓? |
| STMT-CONTINUE-005 | statements | continue label 鎸囧悜闈炲惊鐜?SyntaxError | fail_compile | P1 | planned | none | none | planned | function | statements | 涓? |
| STMT-RETURN-001 | statements | return 鍦ㄥ嚱鏁板唴姝ｅ父 | pass | P0 | planned | none | none | planned | function | 01_function | 浣? |
| STMT-RETURN-002 | statements | return 鍦ㄥ嚱鏁板 SyntaxError | fail_compile | P0 | generated | STMT-FAILC-003 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/fail_compile/statement_return_outside_function_fail_compile.ets | validation_pending | function | statements | 涓? |
| STMT-RETURN-003 | statements | return 鏃犲€艰繑鍥?undefined | pass | P1 | planned | none | none | planned | function | 01_function | 浣? |
| STMT-RETURN-004 | statements | return 鍦?finally 涓鐩?try return | boundary | P0 | planned | none | none | planned | function | statements / function | 楂? |
| STMT-RETURN-005 | statements | return 鍦ㄩ《灞傛ā鍧?SyntaxError | fail_compile | P1 | planned | none | none | planned | function | statements / module | 涓? |
| STMT-THROW-001 | statements | throw 鎶涘嚭寮傚父 | pass | P0 | generated | STMT-PASS-021 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_throw_catch_pass.ets | validation_pending | function | statements | 浣? |
| STMT-THROW-002 | statements | throw Error 瀵硅薄 | pass | P0 | planned | none | none | planned | function | statements | 浣? |
| STMT-THROW-003 | statements | throw null / undefined | pass | P1 | planned | none | none | planned | function | statements | 涓? |
| STMT-THROW-004 | statements | throw 鏈崟鑾峰鑷寸▼搴忕粓姝? | fail_runtime | P0 | planned | none | none | planned | function | statements | 楂? |
| STMT-THROW-005 | statements | throw 鍦?try 鍧楀唴琚?catch | pass | P0 | generated | STMT-PASS-021 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_throw_catch_pass.ets | validation_pending | function | statements | 浣? |
| STMT-TRY-001 | statements | try catch 鎹曡幏寮傚父 | pass | P0 | generated | STMT-PASS-021 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_throw_catch_pass.ets | validation_pending | function | statements | 浣? |
| STMT-TRY-002 | statements | try finally 鎵ц | pass | P0 | generated | STMT-PASS-023 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_try_finally_executes_pass.ets | validation_pending | function | statements | 浣? |
| STMT-TRY-003 | statements | try catch finally 鎵ц椤哄簭 | pass | P0 | generated | STMT-PASS-022 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_try_catch_finally_order_pass.ets | validation_pending | function | statements | 浣? |
| STMT-TRY-004 | statements | finally 涓?return 瑕嗙洊 try | boundary | P0 | generated | STMT-BOUND-002 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/boundary/statement_finally_override_control_flow_boundary.ets | spec_pending | function | statements / function | 楂? |
| STMT-TRY-005 | statements | finally 涓?throw 瑕嗙洊 try | fail_runtime | P0 | planned | none | none | planned | function | statements | 楂? |
| STMT-TRY-006 | statements | catch binding 鍧楃骇浣滅敤鍩? | pass | P0 | generated | STMT-PASS-003 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_catch_binding_scope_pass.ets | validation_pending | function | statements / declarations | 涓? |
| STMT-TRY-007 | statements | catch 涓嶆崟鑾烽潪 try 鍧楀紓甯? | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-TRY-008 | statements | finally 涓?break 瑕嗙洊 | boundary | P1 | planned | none | none | planned | function | statements | 涓? |
| STMT-LABEL-001 | statements | label 姝ｅ父鏍囪璇彞 | pass | P0 | generated | STMT-PASS-002 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_break_label_pass.ets | validation_pending | function | statements | 浣? |
| STMT-LABEL-002 | statements | break label 璺冲嚭 | pass | P0 | generated | STMT-PASS-002 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_break_label_pass.ets | validation_pending | function | statements | 浣? |
| STMT-LABEL-003 | statements | continue label 璺宠浆 | pass | P0 | generated | STMT-PASS-004 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/pass/statement_continue_label_pass.ets | validation_pending | function | statements | 浣? |
| STMT-LABEL-004 | statements | label 閲嶅澹版槑 SyntaxError | fail_compile | P1 | generated | STMT-BOUND-003 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/boundary/statement_invalid_label_boundary.ets | spec_pending | function | statements | 涓? |
| STMT-LABEL-005 | statements | label 涓嶅奖鍝嶆甯告墽琛? | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-DEBUG-001 | statements | debugger 璇彞 no-op | pass | P0 | generated | STMT-BOUND-001 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/boundary/statement_debugger_boundary.ets | spec_pending | function | statements | 浣? |
| STMT-DEBUG-002 | statements | debugger 涓嶅奖鍝嶆帶鍒舵祦 | pass | P0 | generated | STMT-BOUND-001 | arkts-language-watch/01_language_foundation/00_the_basics/statements/xts/boundary/statement_debugger_boundary.ets | spec_pending | function | statements | 浣? |
| STMT-DEBUG-003 | statements | debugger 鍦ㄥ惊鐜腑 | pass | P1 | planned | none | none | planned | function | statements | 浣? |
| STMT-DEBUG-004 | statements | debugger 杩愯鏃惰涓? | boundary | P1 | planned | none | none | planned | function | statements | 涓? |
| STMT-DEBUG-005 | statements | debugger 鍦ㄥ嚱鏁颁腑 | pass | P2 | planned | none | none | planned | function | statements / function | 浣? |
| STMT-TOP-001 | statements | 椤跺眰 return SyntaxError | fail_compile | P0 | planned | none | none | planned | function | statements / module | 涓? |
| STMT-TOP-002 | statements | 椤跺眰 break SyntaxError | fail_compile | P0 | planned | none | none | planned | function | statements / module | 涓? |
| STMT-TOP-003 | statements | 椤跺眰 continue SyntaxError | fail_compile | P0 | planned | none | none | planned | function | statements / module | 涓? |
| STMT-TOP-004 | statements | 妯″潡椤跺眰璇彞鎵ц椤哄簭 | integration | P1 | planned | none | none | planned | function | statements / module | 涓? |
| STMT-TOP-005 | statements | 涓ユ牸妯″紡鍧楃骇鍑芥暟澹版槑 | boundary | P1 | planned | none | none | planned | function | statements / declarations | 楂? |
## Historical Snapshot

> Original format replaced. Main matrix above is source of truth.
