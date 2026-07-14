# Language Foundation P0/P1 Gap Summary

## 1. Summary

| ?? | ?? |
| --- | --- |
| P0 ???? | 113 |
| P1 ???? | 197 |
| P0 ????? | 104 |
| P1 ????? | 191 |
| ??????? | 13 |
| ??????? | 0 |

## 2. P0 Gaps By Chapter

| ?? | Gap ID | ??? | ???? | ???? | ?? ownership | ??????? |
| --- | --- | --- | --- | --- | --- | --- |
| 00_the_basics/declarations | P0 未覆盖 | P0 未覆盖 / 11 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-VAR-007 | DECL-VAR-007 / var / var 与 eval / dynamic scope 交互边界 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-LET-002 | DECL-LET-002 / let / let 未初始化默认值为 undefined / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CONST-004 | DECL-CONST-004 / const / const 对象内容可变 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CONST-008 | DECL-CONST-008 / const / const 重新赋值 compile/runtime 归类 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CONST-009 | DECL-CONST-009 / const / const primitive binding immutable / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-FUNC-002 | DECL-FUNC-002 / function / function declaration 与 var 同名边界 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-FUNC-006 | DECL-FUNC-006 / function / function expression no hoisting / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-IMPORT-001 | DECL-IMPORT-001 / import / imported binding 正常读取 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-IMPORT-004 | DECL-IMPORT-004 / import / duplicate import binding / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-EXPORT-001 | DECL-EXPORT-001 / export / export named local declaration / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-SCOPE-001 | DECL-SCOPE-001 / scope / global lexical declaration 行为 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | P0 缺口数量 | P0 缺口数量 / 11 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/declarations | P0 | P0 / 11 / 主要是 var/const 边界、import/export 基础、global lexical scope 等 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/keywords | P0 未覆盖 | P0 未覆盖 / 7 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | yes |
| 00_the_basics/keywords | uncertain | KW-CTX-001 / contextual_keywords / of 在 for-of 中作上下文关键字 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-CTX-002 / contextual_keywords / as 在 import 中作别名 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-CTX-003 / contextual_keywords / from 在 import 中作来源 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-STRICT-001 / strict_mode_reserved_words / implements 严格模式 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-STRICT-003 / strict_mode_reserved_words / package 严格模式 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-ARKTS-001 / arkts_dynamic_keywords_boundary / with 语句是否完全禁止 / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-ARKTS-002 / arkts_dynamic_keywords_boundary / 动态 ArkTS 默认是否严格模式 / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | P0 缺口数量 | P0 缺口数量 / 7 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_stage2_quality_convergence_report.md | uncertain | yes |
| 00_the_basics/keywords | 18 个 candidate 仍为 planned（7 P0 + 15 P1 + 部分 P2） | 是否存在 planned 但未生成用例 / 是 / 18 个 candidate 仍为 planned（7 P0 + 15 P1 + 部分 P2） | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/keywords | P0 | P0 / 7 / of/as/from 上下文关键字、implements/package 严格模式、with 禁止、默认严格模式 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/operators | P0 未覆盖 | P0 未覆盖 / 5 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | yes |
| 00_the_basics/operators | OP-CAND-004 | OP-CAND-004 / arithmetic / null numeric conversion / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-022 | OP-CAND-022 / optional_chaining / optional chaining method call / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-023 | OP-CAND-023 / optional_chaining / optional chaining short-circuit / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-043 | OP-CAND-043 / update / update invalid target / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-047 | OP-CAND-047 / assignment / assignment invalid target / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | P0 缺口数量 | P0 缺口数量 / 5 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_stage2_quality_convergence_report.md | uncertain | yes |
| 00_the_basics/operators | P0 | P0 / 5 / null conversion、optional call/short-circuit、invalid update/assignment target | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/statements | P0 未覆盖 | P0 未覆盖 / 6 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | yes |
| 00_the_basics/statements | uncertain | STMT-WHILE-002 / while_statement / while 条件 false 零次执行 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-FORIN-003 / for_in_statement / for-in 枚举顺序 / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-FOROF-004 / for_of_statement / for-of Symbol.iterator 支持 / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-TRY-005 / try_catch_finally / finally 中 throw 覆盖 try / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | STMT-TOP-001 | STMT-TOP-001 / top_level_statement_boundary / 顶层 return SyntaxError / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | STMT-TOP-002 | STMT-TOP-002 / top_level_statement_boundary / 顶层 break SyntaxError / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | P0 缺口数量 | P0 缺口数量 / 6 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_stage2_quality_convergence_report.md | uncertain | yes |
| 00_the_basics/statements | 17 个 candidate 仍为 planned（6 P0 + 6 P1 + 5 其他） | 是否存在 planned 但未生成用例 / 是 / 17 个 candidate 仍为 planned（6 P0 + 6 P1 + 5 其他） | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/statements | P0 | P0 / 6 / while 零次执行、for-in 顺序、for-of iterator、finally throw、顶层 return/break | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/types | P0 未覆盖 | P0 未覆盖 / 9 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-BOOL-002 | TYPE-BOOL-002 / boolean / ToBoolean falsy values / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-BOOL-003 | TYPE-BOOL-003 / boolean / ToBoolean truthy values / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-BIG-002 | TYPE-BIG-002 / bigint / large bigint value / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-SYM-001 | TYPE-SYM-001 / symbol / Symbol() uniqueness / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-SYM-003 | TYPE-SYM-003 / symbol / typeof symbol stable pass / boundary only | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-NU-001 | TYPE-NU-001 / null_undefined / null basic value / covered indirectly | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-NU-002 | TYPE-NU-002 / null_undefined / undefined basic value / covered indirectly | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-ARR-002 | TYPE-ARR-002 / array / Array.isArray dedicated case / covered indirectly | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-CONV-001 | TYPE-CONV-001 / conversion / ToBoolean falsy list / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | P0 缺口数量 | P0 缺口数量 / 9 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/types | P0 | P0 / 9 / 主要是 Symbol、ToBoolean、独立 null/undefined、Array.isArray dedicated 等 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_stage2_quality_convergence_report.md | uncertain | no |
| 01_function | P0 未覆盖 | P0 未覆盖 / 7 | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | yes |
| 01_function | uncertain | FUNCTION-TOTAL-0001 / function_declaration / function declaration hoisting / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0005 / function_declaration / function declaration missing name / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0081 / function_expression / function expression assigned call / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0082 / function_expression / function expression no hoisting / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0009 / optional_parameter / optional parameter omitted as undefined / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0043 / function_call / method call this binding / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0044 / function_call / Function.prototype.call changes this / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | P0 缺口数量 | P0 缺口数量 / 7 | recorded | arkts-language-watch/01_language_foundation/01_function/function_stage4_quality_convergence_report.md | uncertain | yes |
| 01_function | P0 7、P1 17、P2 22 | 是否存在 planned 但未生成用例 / yes / P0 7、P1 17、P2 22 | recorded | arkts-language-watch/01_language_foundation/01_function/function_stage4_quality_convergence_report.md | uncertain | no |
| 01_function | P0 | P0 / 7 / 主要为 function_declaration / function_expression / this binding 细分 | recorded | arkts-language-watch/01_language_foundation/01_function/function_stage4_quality_convergence_report.md | uncertain | no |
| 03_interface | P0 未覆盖 | P0 未覆盖 / 6 | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | yes |
| 03_interface | uncertain | IF-IDX-002 / index_signature / number index signature / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-TSCOMP-001 / typescript_compatibility_boundary / TS interface 语法兼容 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-ARKTS-001 / arkts_dynamic_boundary / 动态 ArkTS interface 支持 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-ARKTS-002 / arkts_dynamic_boundary / 动态与静态 ArkTS interface 差异 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-RT-003 / runtime_erasure / instanceof interface / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-MOD-002 / module_export_import_boundary / interface 导入 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | P0 缺口数量 | P0 缺口数量 / 6 | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_stage2_quality_convergence_report.md | uncertain | yes |
| 03_interface | 18 个 candidate 仍为 planned（6 P0 + 15 P1 + 部分 P2） | 是否存在 planned 但未生成用例 / 是 / 18 个 candidate 仍为 planned（6 P0 + 15 P1 + 部分 P2） | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_stage2_quality_convergence_report.md | uncertain | no |
| 03_interface | P0 | P0 / 6 / number index、TS 兼容、ArkTS 支持、动态/静态差异、instanceof、import | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_stage2_quality_convergence_report.md | uncertain | no |
| 04_generic | P0 未覆盖 | P0 未覆盖 / 8 | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-MULTI-001 / multiple_type_parameters / 多泛型参数声明 / planned | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | GEN-FUNC-006 | GEN-FUNC-006 / generic_function / 泛型函数运行时擦除 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-CLASS-006 / generic_class / 泛型类运行时擦除 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-CONST-003 / generic_constraint / 约束不满足 fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-ARR-003 / generic_array_object / Promise<T> 边界 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-TSCOMP-001 / typescript_compatibility_boundary / TS generic 语法兼容 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-ARKTS-001 / arkts_dynamic_boundary / 动态 ArkTS 泛型支持 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-ARKTS-002 / arkts_dynamic_boundary / 动态与静态 ArkTS 泛型差异 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | P0 缺口数量 | P0 缺口数量 / 8 | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_stage2_quality_convergence_report.md | uncertain | no |
| 04_generic | 17 个 candidate 仍为 planned（8 P0 + 15 P1 + 部分 P2） | 是否存在 planned 但未生成用例 / 是 / 17 个 candidate 仍为 planned（8 P0 + 15 P1 + 部分 P2） | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_stage2_quality_convergence_report.md | uncertain | no |
| 04_generic | P0 | P0 / 8 / 多泛型参数声明、函数/类运行时擦除、约束不满足 fail_compile、Promise<T>、TS 兼容、ArkTS 支持/差异 | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_stage2_quality_convergence_report.md | uncertain | no |
| 05_null_safety | P0 未覆盖 | P0 未覆盖 / 4 | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | yes |
| 05_null_safety | uncertain | NS-OC-CALL-005 / optional_chaining_call / 可选链调用支持边界 / planned boundary | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-NA-001 / nullish_assignment / a ??= b 当 a 为 null / created boundary | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-NNA-001 / non_null_assertion_boundary / value! 非空断言 / created boundary | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-TSCOMP-001 / typescript_compatibility_boundary / strict null checks 兼容 / planned boundary | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | P0 缺口数量 | P0 缺口数量 / 4 | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_stage2_quality_convergence_report.md | uncertain | yes |
| 05_null_safety | 15 个 candidate 仍为 planned（4 P0 + 10 P1 + 1 其他） | 是否存在 planned 但未生成用例 / 是 / 15 个 candidate 仍为 planned（4 P0 + 10 P1 + 1 其他） | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_stage2_quality_convergence_report.md | uncertain | yes |
| 05_null_safety | P0 | P0 / 4 / 可选链调用支持、??=、非空断言、strict null 兼容 | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_stage2_quality_convergence_report.md | uncertain | no |
| 06_module | P0 未覆盖 | P0 未覆盖 / 5 | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | yes |
| 06_module | uncertain | MOD-NE-004 / named_export / export interface 边界 / planned boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-DE-004 / default_export / 重复 default export fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-NI-004 / named_import / missing export import fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-NSI-005 / namespace_import / namespace 支持边界 / created boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-LB-004 / live_binding / live binding 支持边界 / created boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | P0 缺口数量 | P0 缺口数量 / 5 | recorded | arkts-language-watch/01_language_foundation/06_module/module_stage2_quality_convergence_report.md | uncertain | yes |
| 06_module | 27 个 candidate 仍为 planned（5 P0 + 12 P1 + 10 P2/其他） | 是否存在 planned 但未生成用例 / 是 / 27 个 candidate 仍为 planned（5 P0 + 12 P1 + 10 P2/其他） | recorded | arkts-language-watch/01_language_foundation/06_module/module_stage2_quality_convergence_report.md | uncertain | no |
| 06_module | P0 | P0 / 5 / export interface、重复 default、missing import、namespace 支持、live binding 支持 | recorded | arkts-language-watch/01_language_foundation/06_module/module_stage2_quality_convergence_report.md | uncertain | no |
| 07_this_keyword | P0 未覆盖 | P0 未覆盖 / 4 | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | yes |
| 07_this_keyword | uncertain | TK-GLB-001 / global_this_boundary / 全局 this 脚本模式 / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-GLB-002 / global_this_boundary / globalThis 访问 / planned | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-DCS-001 / derived_class_this_super_boundary / super() 前使用 this / created boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-DCS-003 / derived_class_this_super_boundary / super() 前访问 this 字段 / planned fail_runtime | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | P0 缺口数量 | P0 缺口数量 / 4 | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_stage2_quality_convergence_report.md | uncertain | yes |
| 07_this_keyword | 15 个 candidate 仍为 planned（4 P0 + 10 P1 + 1 其他） | 是否存在 planned 但未生成用例 / 是 / 15 个 candidate 仍为 planned（4 P0 + 10 P1 + 1 其他） | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_stage2_quality_convergence_report.md | uncertain | yes |
| 07_this_keyword | P0 | P0 / 4 / 全局 this、globalThis 访问、super 前使用 this、super 前访问字段 | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_stage2_quality_convergence_report.md | uncertain | no |

## 3. P1 Gaps By Chapter

| ?? | Gap ID | ??? | ???? | ???? | ?? ownership | ??????? |
| --- | --- | --- | --- | --- | --- | --- |
| 00_the_basics/declarations | P1 未覆盖 | P1 未覆盖 / 27 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-VAR-003 | DECL-VAR-003 / var / var 函数作用域 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-VAR-004 | DECL-VAR-004 / var / var 在 block 中不形成块作用域 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-VAR-005 | DECL-VAR-005 / var / var 与 function 同名 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-VAR-006 | DECL-VAR-006 / var / var 与 let/const 同名 / boundary partially created | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-LET-006 | DECL-LET-006 / let / let shadowing / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-LET-007 | DECL-LET-007 / let / let for-loop scope / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-LET-009 | DECL-LET-009 / let / let in switch block / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CONST-005 | DECL-CONST-005 / const / const array mutation / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CONST-007 | DECL-CONST-007 / const / const in for-of / for-in / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-FUNC-004 | DECL-FUNC-004 / function / function declaration in block / boundary created | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-FUNC-007 | DECL-FUNC-007 / function / duplicate function declaration / boundary created | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CLASS-004 | DECL-CLASS-004 / class / class block scope / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CLASS-005 | DECL-CLASS-005 / class / class 与 let/const 同名 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CLASS-006 | DECL-CLASS-006 / class / class 与 function 同名 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CLASS-007 | DECL-CLASS-007 / class / class expression declaration boundary / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-IMPORT-006 | DECL-IMPORT-006 / import / imported binding shadowing / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-IMPORT-007 | DECL-IMPORT-007 / import / namespace import binding readonly / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-EXPORT-003 | DECL-EXPORT-003 / export / export declaration with let/const/class/function / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-EXPORT-004 | DECL-EXPORT-004 / export / export default declaration binding / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-EXPORT-005 | DECL-EXPORT-005 / export / export before local declaration / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-ANN-001 | DECL-ANN-001 / annotation / annotation declaration mapping / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-ANN-003 | DECL-ANN-003 / annotation / annotation 与普通 declaration 边界 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-ENUM-001 | DECL-ENUM-001 / enum / enum declaration binding / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CROSS-001 | DECL-CROSS-001 / cross-feature / declaration 与 function/class/module 归属边界 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-CROSS-002 | DECL-CROSS-002 / cross-feature / declaration 与 annotation 归属边界 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-MOD-002 | DECL-MOD-002 / module top-level / top-level lexical declaration in module / partially created | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | DECL-SCOPE-002 | DECL-SCOPE-002 / scope / script vs module top-level scope / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_gap_list.md | uncertain | no |
| 00_the_basics/declarations | P1 缺口数量 | P1 缺口数量 / 27 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/declarations | P1 | P1 / 27 / 主要是 shadowing、block/module 边界、annotation/enum/cross-feature 映射 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/declarations/declaration_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/keywords | P1 未覆盖 | P1 未覆盖 / 15 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | yes |
| 00_the_basics/keywords | KW-DECL-007 | KW-DECL-007 / declaration_keywords / let 严格模式作标识符 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-STMT-007 / statement_keywords / debugger 关键字正常使用 / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-MOD-003 / module_keywords / from 上下文关键字在 import 中 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-MOD-004 / module_keywords / as 上下文关键字在 import 中 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-MOD-005 / module_keywords / default 上下文关键字在 export 中 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-ASYNC-005 / async_generator_keywords / yield 在非 generator 上下文 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-RES-003 / reserved_words / 关键字作参数名 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-FUT-002 / future_reserved_words / implements 作标识符（非严格模式） / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-FUT-003 / future_reserved_words / interface 作标识符（非严格模式） / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-STRICT-005 / strict_mode_reserved_words / protected 严格模式 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-STRICT-006 / strict_mode_reserved_words / public 严格模式 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-STRICT-007 / strict_mode_reserved_words / static 严格模式 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-ID-005 / identifier_boundary / typeof 作变量名 fail_compile / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | KW-PROP-001 | KW-PROP-001 / property_name_boundary / 关键字作对象属性名 { if: 1 } / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | uncertain | KW-ARKTS-003 / arkts_dynamic_keywords_boundary / 动态 ArkTS 扩展关键字 / planned boundary | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_gap_list.md | uncertain | no |
| 00_the_basics/keywords | P1 缺口数量 | P1 缺口数量 / 15 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_stage2_quality_convergence_report.md | uncertain | yes |
| 00_the_basics/keywords | P1 | P1 / 15 / let 严格模式、debugger、模块上下文、yield 非 generator、保留字参数名、未来保留字非严格、protected/public/static 严格、typeof/new/this 标识符、属性名边界、ArkTS 扩展 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/keywords/keyword_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/operators | P1 未覆盖 | P1 未覆盖 / 14 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-007 | OP-CAND-007 / arithmetic / Infinity arithmetic / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-012 | OP-CAND-012 / equality / object equality identity / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-015 | OP-CAND-015 / relational / string relational comparison / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-034 | OP-CAND-034 / bitwise / bitwise and/or/xor / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-035 | OP-CAND-035 / bitwise / bitwise not / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-036 | OP-CAND-036 / bitwise / left shift / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-037 | OP-CAND-037 / bitwise / signed right shift / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-038 | OP-CAND-038 / bitwise / unsigned right shift / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-046 | OP-CAND-046 / comma / comma expression evaluation order / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-048 | OP-CAND-048 / assignment / assignment evaluation order / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-049 | OP-CAND-049 / new_operator / new non-constructor TypeError / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-050 | OP-CAND-050 / new_operator / new class instance / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-051 | OP-CAND-051 / await_yield_boundary / await expression boundary / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | OP-CAND-052 | OP-CAND-052 / await_yield_boundary / yield expression boundary / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_gap_list.md | uncertain | no |
| 00_the_basics/operators | P1 缺口数量 | P1 缺口数量 / 14 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/operators | P1 | P1 / 14 / bitwise、comma、assignment order、new、await/yield boundary 等 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/operators/operator_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/statements | P1 未覆盖 | P1 未覆盖 / 6 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-BLOCK-004 / block_statement / 嵌套 block 作用域遮蔽 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-IF-004 / if_statement / if 条件 ToBoolean 转换 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-SWITCH-005 / switch_statement / switch 无匹配无 default / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-WHILE-004 / while_statement / while continue 跳过 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-FOR-005 / for_statement / for init 中 let 块级绑定 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | uncertain | STMT-FORIN-004 / for_in_statement / for-in 数组索引枚举 / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_gap_list.md | uncertain | no |
| 00_the_basics/statements | P1 缺口数量 | P1 缺口数量 / 6 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/statements | P1 | P1 / 6 / 嵌套 block 遮蔽、if ToBoolean、switch 无匹配、while continue、for let init、for-in 数组索引 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/statements/statement_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/types | P1 未覆盖 | P1 未覆盖 / 23 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-NUM-005 | TYPE-NUM-005 / number / +0 / -0 distinction / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-NUM-007 | TYPE-NUM-007 / number / Number() string conversion / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-STR-002 | TYPE-STR-002 / string / empty string behavior / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-STR-003 | TYPE-STR-003 / string / template string / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-STR-004 | TYPE-STR-004 / string / string immutability / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-STR-005 | TYPE-STR-005 / string / String(number) conversion / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-STR-006 | TYPE-STR-006 / string / String(null/undefined) conversion / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-BIG-005 | TYPE-BIG-005 / bigint / bigint loose equality / partially covered | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-BIG-006 | TYPE-BIG-006 / bigint / bigint strict inequality / partially covered | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-BIG-007 | TYPE-BIG-007 / bigint / 0n falsy / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-BIG-008 | TYPE-BIG-008 / bigint / bigint comparison operators / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-SYM-002 | TYPE-SYM-002 / symbol / Symbol.for shared symbol / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-SYM-004 | TYPE-SYM-004 / symbol / symbol property key / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-SYM-005 | TYPE-SYM-005 / symbol / new Symbol() TypeError / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-OBJ-003 | TYPE-OBJ-003 / object / object instanceof Object / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-OBJ-004 | TYPE-OBJ-004 / object / String(object) conversion / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-ARR-004 | TYPE-ARR-004 / array / String(array) conversion / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-FUNC-002 | TYPE-FUNC-002 / function_object / function instanceof Function / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-FUNC-003 | TYPE-FUNC-003 / function_object / class typeof function / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-FUNC-004 | TYPE-FUNC-004 / function_object / arrow function typeof / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-TYPEOF-007 | TYPE-TYPEOF-007 / typeof / undeclared variable typeof / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-INST-005 | TYPE-INST-005 / instanceof / null instanceof Object / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | TYPE-TS-006 | TYPE-TS-006 / typescript_type_syntax / type assertion syntax / planned | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_gap_list.md | uncertain | no |
| 00_the_basics/types | P1 缺口数量 | P1 缺口数量 / 23 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_stage2_quality_convergence_report.md | uncertain | no |
| 00_the_basics/types | P1 | P1 / 23 / 主要是 conversion、string/number 边界、function object、symbol 扩展等 | recorded | arkts-language-watch/01_language_foundation/00_the_basics/types/type_stage2_quality_convergence_report.md | uncertain | no |
| 01_function | P1 未覆盖 | P1 未覆盖 / 17 | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0002 / function_declaration / recursive function declaration / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0003 / function_declaration / duplicate function declaration boundary / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0004 / function_declaration / block-level function declaration boundary / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0006 / function_declaration / function declaration as callback / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0083 / function_expression / anonymous function expression name inference / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0084 / function_expression / named function expression internal binding / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0085 / function_expression / named function expression recursive call / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0086 / function_expression / function expression as object property / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0087 / function_expression / function expression as callback / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0088 / function_expression / IIFE function expression / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0014 / optional_parameter / default parameter expression throws / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0016 / optional_parameter / invalid default parameter syntax / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0029 / return_type / throw propagation without return / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0047 / function_call / callback throws propagation / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0048 / function_call / call evaluation order / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0056 / function_type / function length / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | uncertain | FUNCTION-TOTAL-0071 / closure / closure throws propagation / planned | recorded | arkts-language-watch/01_language_foundation/01_function/function_gap_list.md | uncertain | no |
| 01_function | P1 缺口数量 | P1 缺口数量 / 17 | recorded | arkts-language-watch/01_language_foundation/01_function/function_stage4_quality_convergence_report.md | uncertain | no |
| 01_function | P1 | P1 / 17 / 主要为 function_expression、异常传播、call evaluation order、function length 等 | recorded | arkts-language-watch/01_language_foundation/01_function/function_stage4_quality_convergence_report.md | uncertain | no |
| 03_interface | P1 未覆盖 | P1 未覆盖 / 15 | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | yes |
| 03_interface | IF-DECL-005 | IF-DECL-005 / interface_declaration / interface 声明位置限制 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | IF-PROP-004 | IF-PROP-004 / property_signature / 属性签名编译期检查 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | IF-PROP-005 | IF-PROP-005 / property_signature / 属性签名运行时擦除 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-OPT-003 / optional_property / 可选属性访问安全 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-RO-003 / readonly_property / readonly 与 const 区别 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-METHOD-004 / method_signature / 方法签名运行时擦除 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-OPTMETHOD-003 / optional_method / 可选方法运行时检查 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-EXT-003 / interface_extends / interface 多层继承 / planned | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-EXT-004 / interface_extends / interface extends 自身 / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-STRUCT-004 / structural_typing / object literal 可选属性省略 / planned | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-STRUCT-005 / structural_typing / 结构兼容运行时检查 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-IDX-003 / index_signature / index signature 与属性混合 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-MERGE-003 / interface_merging / 合并冲突 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-DUP-002 / duplicate_member / 同名不同类型属性 / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | uncertain | IF-TSCOMP-002 / typescript_compatibility_boundary / interface 与 type alias 区别 / planned boundary | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_gap_list.md | uncertain | no |
| 03_interface | P1 缺口数量 | P1 缺口数量 / 15 | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_stage2_quality_convergence_report.md | uncertain | yes |
| 03_interface | P1 | P1 / 15 / 声明位置、属性检查/擦除、可选访问安全、readonly vs const、方法擦除、可选方法运行时、多层继承、extends 自身、结构运行时检查、index 混合、merging 冲突、duplicate diff type、interface vs type alias 等 | recorded | arkts-language-watch/01_language_foundation/03_interface/interface_stage2_quality_convergence_report.md | uncertain | no |
| 04_generic | P1 未覆盖 | P1 未覆盖 / 15 | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | yes |
| 04_generic | uncertain | GEN-TYPEPARAM-002 / type_parameter / 泛型参数作用域 / planned | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | GEN-FUNC-005 | GEN-FUNC-005 / generic_function / 泛型函数返回类型推断 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-IF-005 / generic_interface / 泛型接口运行时擦除 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-METHOD-003 / generic_method / 泛型方法类型推断 / planned | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-MULTI-003 / multiple_type_parameters / 三参数泛型 / planned | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-MULTI-004 / multiple_type_parameters / 多参数独立推断 / planned | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-DEF-003 / default_type_parameter / 默认参数与显式实参 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-EXPL-003 / explicit_type_argument / 显式实参覆盖推断 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-INFER-003 / type_argument_inference / 推断为字面量类型 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-NEST-003 / nested_generic / 嵌套泛型 Map / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-ARR-004 / generic_array_object / Map<K, V> 边界 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-UNION-002 / generic_union_boundary / 泛型与 intersection type / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-UNION-003 / generic_union_boundary / 泛型与 conditional type / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-DUP-001 / generic_duplicate_parameter / 重复类型参数名 fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | uncertain | GEN-MOD-003 / module_export_import_boundary / 泛型接口导出 / planned boundary | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_gap_list.md | uncertain | no |
| 04_generic | P1 缺口数量 | P1 缺口数量 / 15 | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_stage2_quality_convergence_report.md | uncertain | yes |
| 04_generic | P1 | P1 / 15 / 参数作用域、返回推断、接口擦除、方法推断、三参数、多参数推断、默认参数与显式实参、推断字面量、嵌套 Map、Map<K,V>、intersection/conditional、重复参数名、接口导出等 | recorded | arkts-language-watch/01_language_foundation/04_generic/generic_stage2_quality_convergence_report.md | uncertain | no |
| 05_null_safety | P1 未覆盖 | P1 未覆盖 / 10 | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | yes |
| 05_null_safety | uncertain | NS-NULL-004 / null_basic / Number(null) === 0 / planned | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-UNDEF-005 / undefined_basic / 未初始化变量默认 undefined / planned | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-EQ-005 / null_undefined_equality / null < 1 为 true / planned | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | NS-OC-PROP-004 | NS-OC-PROP-004 / optional_chaining_property / 可选链短路不执行后续 / planned | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-OPTPARAM-003 / optional_parameter / 可选参数传 null / planned | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-DEFPARAM-004 / default_parameter / 默认参数表达式求值 / planned | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-RET-004 / function_return_nullish / 箭头函数无返回 undefined / planned | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-CF-003 / class_field_nullish / class field 初始化顺序 / planned boundary | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-UNION-003 / union_nullish_boundary / strict null checks 边界 / planned boundary | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | uncertain | NS-ARKTS-001 / arkts_dynamic_boundary / 动态 ArkTS null safety 支持 / planned boundary | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_gap_list.md | uncertain | no |
| 05_null_safety | P1 缺口数量 | P1 缺口数量 / 10 | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_stage2_quality_convergence_report.md | uncertain | yes |
| 05_null_safety | P1 | P1 / 10 / Number(null)、未初始化、null<1、短路、可选参数 null、默认参数表达式、箭头返回、field 初始化顺序、strict null 边界、ArkTS 支持 | recorded | arkts-language-watch/01_language_foundation/05_null_safety/null_safety_stage2_quality_convergence_report.md | uncertain | no |
| 06_module | P1 未覆盖 | P1 未覆盖 / 12 | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-NE-005 / named_export / export generic function 边界 / planned boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-DE-005 / default_export / default + named 混合导出 / planned | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-EL-004 / export_list / export list 重复 fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-EL-005 / export_list / export list 不存在名称 fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-ER-003 / export_rename / export rename 不存在 fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-IR-003 / import_rename / import rename 不存在 fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-NI-005 / named_import / 同名 import fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-SSI-003 / side_effect_import / side-effect import 多次 / planned boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-RE-004 / re_export_named / re-export missing fail_compile / planned fail_compile | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-ES-003 / export_star / export * 冲突 ambiguous / planned boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-CD-005 / circular_dependency / 循环依赖 class TDZ / planned boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | uncertain | MOD-TSCOMP-001 / typescript_compatibility_boundary / TS module 兼容 / planned boundary | recorded | arkts-language-watch/01_language_foundation/06_module/module_gap_list.md | uncertain | no |
| 06_module | P1 缺口数量 | P1 缺口数量 / 12 | recorded | arkts-language-watch/01_language_foundation/06_module/module_stage2_quality_convergence_report.md | uncertain | no |
| 06_module | P1 | P1 / 12 / export generic、default+named 混合、export list 重复/不存在、export/import rename 不存在、同名 import、side-effect 多次、re-export missing、export * 冲突、circular class TDZ、TS 兼容 | recorded | arkts-language-watch/01_language_foundation/06_module/module_stage2_quality_convergence_report.md | uncertain | no |
| 07_this_keyword | P1 未覆盖 | P1 未覆盖 / 10 | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | yes |
| 07_this_keyword | TK-FUNC-003 | TK-FUNC-003 / function_call_this / IIFE 中 this / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-MTHD-003 / method_call_this / 原型方法 this / planned | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-ARR-005 / arrow_lexical_this / 箭头在对象字面量中 / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-NST-002 / nested_function_this / var self = this 模式 / planned | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-NST-005 / nested_function_this / 闭包中 this 捕获 / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-CAB-005 / call_apply_bind_this / call 传 null/undefined / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-OLM-003 / object_literal_method_this / 箭头函数属性 this / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-CF-003 / class_field_this_boundary / 实例字段箭头函数 this / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-EM-004 / extracted_method_this / 解构赋值方法 this / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | uncertain | TK-CB-004 / callback_this_boundary / forEach callback this / planned boundary | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_gap_list.md | uncertain | no |
| 07_this_keyword | P1 缺口数量 | P1 缺口数量 / 10 | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_stage2_quality_convergence_report.md | uncertain | yes |
| 07_this_keyword | P1 | P1 / 10 / IIFE this、原型方法 this、箭头在对象字面量、var self=this、闭包 this、call null、箭头属性 this、字段箭头 this、解构方法 this、forEach callback | recorded | arkts-language-watch/01_language_foundation/07_this_keyword/this_keyword_stage2_quality_convergence_report.md | uncertain | no |

## 4. Cross Chapter Duplicate Gaps

| ??? | ???? | ????? | ???????? |
| --- | --- | --- | --- |
| p0 未覆盖 7 | 00_the_basics/keywords, 01_function | needs ownership review | keep other chapters as reference/boundary |
| p1 未覆盖 15 | 00_the_basics/keywords, 03_interface, 04_generic | needs ownership review | keep other chapters as reference/boundary |
| p0 缺口数量 7 | 00_the_basics/keywords, 01_function | needs ownership review | keep other chapters as reference/boundary |
| p1 缺口数量 15 | 00_the_basics/keywords, 03_interface, 04_generic | needs ownership review | keep other chapters as reference/boundary |
| p0 未覆盖 5 | 00_the_basics/operators, 06_module | needs ownership review | keep other chapters as reference/boundary |
| p0 缺口数量 5 | 00_the_basics/operators, 06_module | needs ownership review | keep other chapters as reference/boundary |
| p0 未覆盖 6 | 00_the_basics/statements, 03_interface | needs ownership review | keep other chapters as reference/boundary |
| p0 缺口数量 6 | 00_the_basics/statements, 03_interface | needs ownership review | keep other chapters as reference/boundary |
| p0 未覆盖 4 | 05_null_safety, 07_this_keyword | needs ownership review | keep other chapters as reference/boundary |
| p1 未覆盖 10 | 05_null_safety, 07_this_keyword | needs ownership review | keep other chapters as reference/boundary |
| p0 缺口数量 4 | 05_null_safety, 07_this_keyword | needs ownership review | keep other chapters as reference/boundary |
| p1 缺口数量 10 | 05_null_safety, 07_this_keyword | needs ownership review | keep other chapters as reference/boundary |
| 是否存在 planned 但未生成用例 是 15 个 candidate 仍为 planned（4 p0 + 10 p1 + 1 其他） | 05_null_safety, 07_this_keyword | needs ownership review | keep other chapters as reference/boundary |

## 5. Unknown Priority Gaps

| ?? | ??? | ?? | ?? |
| --- | --- | --- | --- |
| parse_uncertain | ?? gap ?????????? | ????????? | ?? Case ID / Coverage ID ??????? |

## 6. Notes

- ??????????????? P0/P1 ???
- ?????????????? gap list?
