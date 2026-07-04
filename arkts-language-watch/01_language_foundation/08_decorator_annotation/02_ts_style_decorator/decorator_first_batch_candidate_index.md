# Decorator First Batch Candidate Index

## Selection Principles

1. 优先普通 decorator 主线；
2. 优先 P0/P1；
3. 优先 parser/checker 可稳定落地项；
4. syntax/property 保持主线优势，但 factory/method/class/order/module/features 都必须进入首批；
5. PR 10632 仅保留 5 条 bytecode/regression 候选；
6. sendable-specific 不超过 5 条；
7. Pending/Unsupported 不进入首批，除非是明确 fail_compile 或必要 boundary 记录；
8. test262 不覆盖项以 ArkTS compiler/XTS 看护。

## Summary

| 指标 | 数量 |
|---|---|
| First Batch 总数 | 50 |
| P0 数量 | 39 |
| P1 数量 | 11 |
| pass 数量 | 24 |
| fail_compile 数量 | 9 |
| compiler expected 数量 | 7 |
| bytecode expected 数量 | 10 |
| XTS smoke 数量 | 24 |
| 普通 decorator 主线数量 | 46 |
| PR 10632 数量 | 5 |
| sendable-specific 数量 | 4 |
| 覆盖目录数量 | 10 |

## Candidate Table

| Rank | Global ID | 来源目录 | 测试点 | 用例类型 | 建议测试方式 | 建议路径 | 预期结果 | 备注 |
|---|---|---|---|---|---|---|---|---|
| 1 | DECORATOR-TOTAL-0033 | 00_decorator_syntax | class 前 @decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_class_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 01_class_decorator; Not from test262 |
| 2 | DECORATOR-TOTAL-0037 | 00_decorator_syntax | property 前 @decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_property_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 02_property_decorator; Not from test262 |
| 3 | DECORATOR-TOTAL-0036 | 00_decorator_syntax | method 前 @decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_method_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 03_method_decorator; Not from test262 |
| 4 | DECORATOR-TOTAL-0032 | 00_decorator_syntax | @decorator() call expression | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_basic_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 04_decorator_factory; Not from test262 |
| 5 | DECORATOR-TOTAL-0012 | 00_decorator_syntax | parser error: bare @ | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_bare_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 6 | DECORATOR-TOTAL-0013 | 00_decorator_syntax | parser error: decorator without declaration | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_basic_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 7 | DECORATOR-TOTAL-0006 | 00_decorator_syntax | local variable | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_local_var_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 8 | DECORATOR-TOTAL-0016 | 00_decorator_syntax | type alias | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_type_alias_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 9 | DECORATOR-TOTAL-0048 | 02_property_decorator | instance field property decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_instance_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 10 | DECORATOR-TOTAL-0058 | 02_property_decorator | static field property decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_static_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 11 | DECORATOR-TOTAL-0209 | 02_property_decorator | instance property target | integration | compiler expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/integration/decorator_property_instance_target_integration.ets | 应通过多点集成验证，保持 decorator 行为稳定 | Not from test262 |
| 12 | DECORATOR-TOTAL-0049 | 02_property_decorator | property decorator 为 factory call | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_factory_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 04_decorator_factory; Not from test262 |
| 13 | DECORATOR-TOTAL-0052 | 02_property_decorator | property decorator 参数为 literal | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_basic_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 14 | DECORATOR-TOTAL-0053 | 02_property_decorator | property decorator 参数为函数 | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_basic_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 15 | DECORATOR-TOTAL-0022 | 02_property_decorator | field type mismatch + decorator | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/fail_compile/decorator_property_basic_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 16 | DECORATOR-TOTAL-0021 | 02_property_decorator | field initializer mismatch + decorator | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/fail_compile/decorator_property_initializer_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 17 | DECORATOR-TOTAL-0066 | 04_decorator_factory | 无参 factory | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_factory_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 18 | DECORATOR-TOTAL-0064 | 04_decorator_factory | 单参 factory | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_factory_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 19 | DECORATOR-TOTAL-0065 | 04_decorator_factory | 多参 factory | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_factory_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 20 | DECORATOR-TOTAL-0521 | 04_decorator_factory | IIFE | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_iife_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 21 | DECORATOR-TOTAL-0028 | 04_decorator_factory | factory 非函数 | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/fail_compile/decorator_factory_factory_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 22 | DECORATOR-TOTAL-0540 | 04_decorator_factory | imported binding | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_import_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 09_decorator_module_scope; Not from test262 |
| 23 | DECORATOR-TOTAL-0059 | 03_method_decorator | instance method decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/pass/decorator_method_instance_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 24 | DECORATOR-TOTAL-0060 | 03_method_decorator | static method decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/pass/decorator_method_static_pass.ets | 应通过并验证 decorator 行为稳定 | Not from test262 |
| 25 | DECORATOR-TOTAL-0222 | 03_method_decorator | descriptor 是否存在 | integration | compiler expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/integration/decorator_method_descriptor_integration.ets | 应通过多点集成验证，保持 decorator 行为稳定 | Not from test262 |
| 26 | DECORATOR-TOTAL-0025 | 03_method_decorator | parameter type mismatch + decorator | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/fail_compile/decorator_method_basic_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 27 | DECORATOR-TOTAL-0026 | 03_method_decorator | return type mismatch + decorator | fail_compile | parser/checker | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/fail_compile/decorator_method_basic_fail_compile.ets | 应稳定编译失败，错误阶段为 parser/checker | Not from test262 |
| 28 | DECORATOR-TOTAL-0041 | 01_class_decorator | class decorator | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0001_class_decorator_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 00_decorator_syntax; Not from test262 |
| 29 | DECORATOR-TOTAL-0044 | 01_class_decorator | class decorator 为 factory call | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0003_class_decorator_factory_call_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 04_decorator_factory; Not from test262 |
| 30 | DECORATOR-TOTAL-0042 | 01_class_decorator | class decorator target | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0019_class_decorator_target_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 05_decorator_transform; Not from test262 |
| 31 | DECORATOR-TOTAL-0635 | 01_class_decorator | decorated exported class | integration | compiler expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/integration/decorator_class_0054_decorated_exported_class_integration.ets | 应通过多点集成验证，保持 decorator 行为稳定 | Related: 00_decorator_syntax; Not from test262 |
| 32 | DECORATOR-TOTAL-0391 | 01_class_decorator | class decorator 返回原 class | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0103_class_decorator_class_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 04_decorator_factory; Not from test262 |
| 33 | DECORATOR-TOTAL-0110 | 05_decorator_transform | property decorator call 生成正确 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0071.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | bytecode regression; transform/lowering; Not from test262 |
| 34 | DECORATOR-TOTAL-0104 | 05_decorator_transform | factory 调用正确 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0075.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | bytecode regression; Not from test262 |
| 35 | DECORATOR-TOTAL-0106 | 05_decorator_transform | instance property target 正确 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0072.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | bytecode regression; Not from test262 |
| 36 | DECORATOR-TOTAL-0102 | 05_decorator_transform | decorator function 调用正确 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0076.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | bytecode regression; transform/lowering; Not from test262 |
| 37 | DECORATOR-TOTAL-0101 | 05_decorator_transform | class definition 与 decorator call 顺序正确 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0079.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | bytecode regression; transform/lowering; Not from test262 |
| 38 | DECORATOR-TOTAL-0114 | 05_decorator_transform | shared pointer 不污染 checker/type 状态 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0060.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | PR 10632; bytecode regression; AST state pollution; Not from test262 |
| 39 | DECORATOR-TOTAL-0146 | 07_decorator_with_sendable | PR 10632 原始 bytecode expected | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0069.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | PR 10632; bytecode regression; Not from test262 |
| 40 | DECORATOR-TOTAL-0147 | 07_decorator_with_sendable | arrow function 参数不生成 sendable function 字节码 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0070.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | PR 10632; bytecode regression; Not from test262 |
| 41 | DECORATOR-TOTAL-0167 | 07_decorator_with_sendable | sendable class 本体仍生成 sendable class 字节码 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0006.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | PR 10632; bytecode regression; Not from test262 |
| 42 | DECORATOR-TOTAL-0595 | 07_decorator_with_sendable | 普通 class + decorator 参数 arrow function | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/xts/pass/decorator_sendable_decorator_arrow_function_pass.ets | 应通过并验证 decorator 行为稳定 | PR 10632; Not from test262 |
| 43 | DECORATOR-TOTAL-0579 | 06_decorator_execution_order | property 上两个 decorators | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/06_decorator_execution_order/xts/pass/decorator_order_0018_property_decorators_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 02_property_decorator; Not from test262 |
| 44 | DECORATOR-TOTAL-0570 | 06_decorator_execution_order | factory side effect 与 returned decorator side effect 顺序 | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/06_decorator_execution_order/xts/pass/decorator_order_0062_factory_side_effect_returned_decorator_side_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 04_decorator_factory; Not from test262 |
| 45 | DECORATOR-TOTAL-0740 | 06_decorator_execution_order | class + property + method decorators 混合 | integration | compiler expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/06_decorator_execution_order/xts/integration/decorator_order_0037_class_property_method_decorators_integration.ets | 应通过多点集成验证，保持 decorator 行为稳定 | Related: 05_decorator_transform; Not from test262 |
| 46 | DECORATOR-TOTAL-0858 | 09_decorator_module_scope | imported decorator from sibling module | integration | compiler expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/09_decorator_module_scope/xts/integration/decorator_module_0008_imported_decorator_from_sibling_module_integration.ets | 应通过多点集成验证，保持 decorator 行为稳定 | Related: 05_decorator_transform; Not from test262 |
| 47 | DECORATOR-TOTAL-0614 | 09_decorator_module_scope | imported factory 无参 | pass | XTS smoke | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/09_decorator_module_scope/xts/pass/decorator_module_0026_imported_factory_pass.ets | 应通过并验证 decorator 行为稳定 | Related: 04_decorator_factory; Not from test262 |
| 48 | DECORATOR-TOTAL-0194 | 09_decorator_module_scope | lowering 后 decorator 参数 imported binding 正确 | bytecode regression | bytecode expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/09_decorator_module_scope/compiler_expected/decorator_module_0113_lowering_decorator_imported_binding.ts | 应生成稳定 lowering/codegen/bytecode expected 结果 | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| 49 | DECORATOR-TOTAL-0246 | 08_decorator_with_class_features | static property + property decorator | integration | compiler expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/08_decorator_with_class_features/xts/integration/decorator_class_feature_0001_static_property_property_decorator_integration.ets | 应通过多点集成验证，保持 decorator 行为稳定 | Related: 02_property_decorator; Not from test262 |
| 50 | DECORATOR-TOTAL-0824 | 08_decorator_with_class_features | readonly property + decorator | integration | compiler expected | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/08_decorator_with_class_features/xts/integration/decorator_class_feature_0019_readonly_property_decorator_integration.ets | 应通过多点集成验证，保持 decorator 行为稳定 | Related: 02_property_decorator; Not from test262 |

## Stage 3 Method Decorator Completion

| Rank | Global ID | Source Directory | Candidate | Status | Generated Artifact |
|---|---|---|---|---|---|
| 23 | DECORATOR-TOTAL-0059 | 03_method_decorator | instance method decorator | completed | 03_method_decorator/xts/pass/decorator_method_instance_pass.ets |
| 24 | DECORATOR-TOTAL-0060 | 03_method_decorator | static method decorator | completed | 03_method_decorator/xts/pass/decorator_method_static_pass.ets |
| 25 | DECORATOR-TOTAL-0222 | 03_method_decorator | descriptor exists / equivalent structure | candidate created | 03_method_decorator/compiler_expected_candidates/method_decorator_target_key_descriptor_candidates.md |
| 26 | DECORATOR-TOTAL-0025 | 03_method_decorator | parameter type mismatch + decorator | completed | 03_method_decorator/xts/fail_compile/decorator_method_parameter_mismatch_fail_compile.ets |
| 27 | DECORATOR-TOTAL-0026 | 03_method_decorator | return type mismatch + decorator | completed | 03_method_decorator/xts/fail_compile/decorator_method_return_mismatch_fail_compile.ets |

Notes:

- No PR 10632 bytecode expected was generated in Stage 3.
- No sendable-specific method decorator case was generated in Stage 3.
- Descriptor/target/key and lowering items are candidate-created only, not completed compiler expected output.

## Stage 4 Class Decorator Completion

| Rank | Global ID | Source Directory | Candidate | Status | Generated Artifact |
|---|---|---|---|---|---|
| 28 | DECORATOR-TOTAL-0041 | 01_class_decorator | class decorator | completed | 01_class_decorator/xts/pass/decorator_class_basic_pass.ets |
| 29 | DECORATOR-TOTAL-0044 | 01_class_decorator | class decorator with factory call | completed | 01_class_decorator/xts/pass/decorator_class_factory_pass.ets |
| 30 | DECORATOR-TOTAL-0042 | 01_class_decorator | class decorator target | candidate created | 01_class_decorator/compiler_expected_candidates/class_decorator_target_constructor_candidates.md |
| 31 | DECORATOR-TOTAL-0635 | 01_class_decorator | decorated exported class | completed | 01_class_decorator/xts/integration/decorator_class_export_integration.ets |
| 32 | DECORATOR-TOTAL-0391 | 01_class_decorator | class decorator return original class / return value boundary | candidate created | 01_class_decorator/compiler_expected_candidates/class_decorator_return_value_candidates.md |

Notes:

- Stage 4 generated ordinary class decorator XTS only.
- No PR 10632 bytecode expected was generated in Stage 4.
- No sendable-specific class decorator case was generated in Stage 4.
- Class target/constructor value, return value, and export lowering are candidate-created only, not completed compiler expected output.

## Stage 5 Decorator Transform Completion

| Rank | Global ID | Source Directory | Candidate | Status | Generated Artifact |
|---|---|---|---|---|---|
| 33 | DECORATOR-TOTAL-0110 | 05_decorator_transform | property decorator call codegen/lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_property_lowering_candidates.md; 05_decorator_transform/bytecode_expected_candidates/decorator_transform_bytecode_risk_candidates.md |
| 34 | DECORATOR-TOTAL-0104 | 05_decorator_transform | factory call lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_factory_lowering_candidates.md; 05_decorator_transform/xts/smoke/decorator_transform_factory_call_smoke.ets |
| 35 | DECORATOR-TOTAL-0106 | 05_decorator_transform | instance property target lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_property_lowering_candidates.md |
| 36 | DECORATOR-TOTAL-0102 | 05_decorator_transform | decorator function call lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_factory_lowering_candidates.md |
| 37 | DECORATOR-TOTAL-0101 | 05_decorator_transform | class definition and decorator call lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_class_lowering_candidates.md |
| 38 | DECORATOR-TOTAL-0114 | 05_decorator_transform | AST state / binder context pollution risk | candidate created | 05_decorator_transform/bytecode_expected_candidates/decorator_transform_bytecode_risk_candidates.md; 05_decorator_transform/xts/boundary/decorator_transform_ast_state_pollution_boundary.ets |

Notes:

- Stage 5 generated ordinary transform/lowering smoke and candidate files only.
- No real bytecode expected output was generated in Stage 5.
- No PR 10632 original sendable case was generated in Stage 5.
- No sendable-specific transform XTS was generated in Stage 5.

## Stage 6 Sendable-Specific Regression Completion

| Rank | Global ID | Source Directory | Candidate | Status | Generated Artifact |
|---|---|---|---|---|---|
| 39 | DECORATOR-TOTAL-0146 | 07_decorator_with_sendable | PR 10632 original bytecode expected | candidate created | 07_decorator_with_sendable/compiler_expected_candidates/decorator_sendable_property_transform_candidates.md; 07_decorator_with_sendable/bytecode_expected_candidates/decorator_sendable_pr10632_bytecode_candidates.md |
| 40 | DECORATOR-TOTAL-0147 | 07_decorator_with_sendable | arrow function argument not sendable bytecode | candidate created | 07_decorator_with_sendable/compiler_expected_candidates/decorator_sendable_factory_argument_candidates.md; 07_decorator_with_sendable/bytecode_expected_candidates/decorator_sendable_inSendable_flag_candidates.md |
| 41 | DECORATOR-TOTAL-0167 | 07_decorator_with_sendable | sendable class body still sendable bytecode | candidate created | 07_decorator_with_sendable/bytecode_expected_candidates/decorator_sendable_pr10632_bytecode_candidates.md |
| 42 | DECORATOR-TOTAL-0595 | 07_decorator_with_sendable | ordinary class + decorator parameter arrow function | smoke created | 07_decorator_with_sendable/xts/smoke/decorator_sendable_property_basic_smoke.ets; 07_decorator_with_sendable/xts/smoke/decorator_sendable_property_factory_smoke.ets; 07_decorator_with_sendable/xts/regression/decorator_sendable_arrow_function_argument_smoke.ets |

Stage 6 additional sendable-specific XTS:

| File | Type | Coverage IDs | Status |
|---|---|---|---|
| 07_decorator_with_sendable/xts/smoke/decorator_sendable_property_basic_smoke.ets | smoke | DECORATOR-SENDABLE-0009 | smoke created |
| 07_decorator_with_sendable/xts/smoke/decorator_sendable_property_factory_smoke.ets | smoke | DECORATOR-SENDABLE-0029 | smoke created |
| 07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_original_shape.ets | regression | DECORATOR-SENDABLE-0001 | source candidate created (local binding) |
| 07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_local_binding_smoke.ets | regression | DECORATOR-SENDABLE-0005 | smoke created |
| 07_decorator_with_sendable/xts/regression/decorator_sendable_arrow_function_argument_smoke.ets | regression | DECORATOR-SENDABLE-0035 | smoke created |
| 07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_non_sendable_control.ets | regression | DECORATOR-SENDABLE-0010 | smoke created |
| 07_decorator_with_sendable/xts/boundary/decorator_sendable_class_context_boundary.ets | boundary | DECORATOR-SENDABLE-0006/0007 | boundary candidate created |

Notes:

- Stage 6 generated sendable-specific regression smoke, regression, and boundary XTS files.
- No real bytecode expected output was generated in Stage 6.
- PR 10632 original shape uses local binding (degraded from imported binding) due to multi-file XTS instability.
- Imported binding variant deferred — compiler candidate created only.
- All sendable files are in 07_decorator_with_sendable/ only — no spread to other directories.

## Stage 7 Execution Order Completion

| Rank | Global ID | Source Directory | Candidate | Status | Generated Artifact |
|---|---|---|---|---|---|
| 43 | DECORATOR-TOTAL-0579 | 06_decorator_execution_order | property 上两个 decorators | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_property_same_target_smoke.ets |
| 44 | DECORATOR-TOTAL-0570 | 06_decorator_execution_order | factory side effect 与 returned decorator side effect 顺序 | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_factory_eval_call_smoke.ets; 06_decorator_execution_order/xts/smoke/decorator_order_factory_argument_eval_smoke.ets |
| 45 | DECORATOR-TOTAL-0740 | 06_decorator_execution_order | class + property + method decorators 混合 | integration created | 06_decorator_execution_order/xts/integration/decorator_order_class_property_method_mixed_smoke.ets |

Stage 7 additional execution order smoke/integration/boundary:

| File | Type | Coverage IDs | Status |
|---|---|---|---|
| 06_decorator_execution_order/xts/smoke/decorator_order_property_same_target_smoke.ets | smoke | DECORATOR-ORDER-0018 | smoke created, fixed order pending |
| 06_decorator_execution_order/xts/smoke/decorator_order_method_same_target_smoke.ets | smoke | DECORATOR-ORDER-0020 | smoke created, descriptor pending |
| 06_decorator_execution_order/xts/smoke/decorator_order_class_same_target_smoke.ets | smoke | DECORATOR-ORDER-0016 | smoke created, fixed order pending |
| 06_decorator_execution_order/xts/smoke/decorator_order_factory_eval_call_smoke.ets | smoke | DECORATOR-ORDER-0003/0004/0005 | smoke created |
| 06_decorator_execution_order/xts/smoke/decorator_order_multiple_factories_smoke.ets | smoke | DECORATOR-ORDER-0024/0025/0026 | smoke created |
| 06_decorator_execution_order/xts/smoke/decorator_order_factory_argument_eval_smoke.ets | smoke | DECORATOR-ORDER-0005/0006 | smoke created |
| 06_decorator_execution_order/xts/integration/decorator_order_class_property_method_mixed_smoke.ets | integration | DECORATOR-ORDER-0037 | integration created |
| 06_decorator_execution_order/xts/integration/decorator_order_static_instance_member_smoke.ets | integration | DECORATOR-ORDER-0031/0032/0040/0042 | integration created |
| 06_decorator_execution_order/xts/boundary/decorator_order_fixed_order_boundary.ets | boundary | DECORATOR-ORDER-0025/0026 | boundary candidate created, fixed order pending |
| 06_decorator_execution_order/xts/boundary/decorator_order_mixed_member_boundary.ets | boundary | DECORATOR-ORDER-0046 | boundary candidate created |
| 06_decorator_execution_order/xts/boundary/decorator_order_factory_throw_boundary.ets | boundary | DECORATOR-ORDER-0011 | boundary record only |
| 06_decorator_execution_order/xts/boundary/decorator_order_decorator_throw_boundary.ets | boundary | DECORATOR-ORDER-0010 | boundary record only |
| 06_decorator_execution_order/xts/boundary/decorator_order_class_return_boundary.ets | boundary | DECORATOR-ORDER-0029 | boundary record only |

Stage 7 compiler expected candidates:

| File | Coverage IDs | Status |
|---|---|---|
| 06_decorator_execution_order/compiler_expected_candidates/decorator_order_property_candidates.md | DECORATOR-ORDER-0018/0019 | candidate created |
| 06_decorator_execution_order/compiler_expected_candidates/decorator_order_method_candidates.md | DECORATOR-ORDER-0020/0021 | candidate created |
| 06_decorator_execution_order/compiler_expected_candidates/decorator_order_class_candidates.md | DECORATOR-ORDER-0016/0017 | candidate created |
| 06_decorator_execution_order/compiler_expected_candidates/decorator_order_factory_candidates.md | DECORATOR-ORDER-0003/0004/0005 | candidate created |
| 06_decorator_execution_order/compiler_expected_candidates/decorator_order_mixed_target_candidates.md | DECORATOR-ORDER-0037/0031/0032 | candidate created |

Notes:

- Stage 7 generated execution order smoke, integration, boundary, and compiler candidate files only.
- No real bytecode expected output was generated in Stage 7.
- No sendable-specific cases were generated.
- No PR 10632 original shapes were referenced.
- Fixed decorator call order pending confirmation — boundary files do not write strong order assertions.
- Method descriptor/equivalent structure pending — smoke files use 2-param form.
- Class decorator return value order documented as boundary only.

## Stage 8 Module Scope Completion

| Rank | Global ID | Source Directory | Candidate | Status | Generated Artifact |
|---|---|---|---|---|---|
| 46 | DECORATOR-TOTAL-0858 | 09_decorator_module_scope | imported decorator from sibling module | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0001_import_class_decorator_function_integration.ets |
| 47 | DECORATOR-TOTAL-0614 | 09_decorator_module_scope | imported factory no-arg | smoke created | 09_decorator_module_scope/xts/smoke/decorator_module_import_class_decorator_smoke.ets |

Stage 8 module scope helper modules:

| File | Type | Exports | Coverage IDs | Status |
|---|---|---|---|---|
| 09_decorator_module_scope/xts/modules/decorator_module_basic.ets | helper module | classDec, classDecLog | DECORATOR-MODULE-0001 | module created |
| 09_decorator_module_scope/xts/modules/decorator_module_property.ets | helper module | propDec, propDecLog | DECORATOR-MODULE-0002 | module created |
| 09_decorator_module_scope/xts/modules/decorator_module_method.ets | helper module | methodDec, methodDecLog | DECORATOR-MODULE-0003 | module created (2-param) |
| 09_decorator_module_scope/xts/modules/decorator_factory_module.ets | helper module | classFactory, classFactoryLog | DECORATOR-MODULE-0019 | module created |
| 09_decorator_module_scope/xts/modules/decorator_factory_property_module.ets | helper module | propFactory, propFactoryLog | DECORATOR-MODULE-0020 | module created |
| 09_decorator_module_scope/xts/modules/decorator_factory_method_module.ets | helper module | methodFactory, methodFactoryLog | DECORATOR-MODULE-0021 | module created (2-param) |
| 09_decorator_module_scope/xts/modules/decorator_class_factory_module.ets | helper module | classFactoryWithCapture, moduleVar, classFactoryCaptureLog | DECORATOR-MODULE-0059 | module created |
| 09_decorator_module_scope/xts/modules/decorator_export_class_module.ets | helper module | DecoratedA | DECORATOR-MODULE-0075 | module created |
| 09_decorator_module_scope/xts/modules/decorator_export_property_class_module.ets | helper module | DecoratedPropA | DECORATOR-MODULE-0076 | module created |
| 09_decorator_module_scope/xts/modules/decorator_export_method_class_module.ets | helper module | DecoratedMethodA | DECORATOR-MODULE-0077 | module created (2-param) |

Stage 8 integration .ets files:

| File | Type | Coverage IDs | Status |
|---|---|---|---|
| 09_decorator_module_scope/xts/smoke/decorator_module_import_class_decorator_smoke.ets | smoke | DECORATOR-MODULE-0001 | smoke created |
| 09_decorator_module_scope/xts/integration/decorator_module_0001_import_class_decorator_function_integration.ets | integration | DECORATOR-MODULE-0001 | integration created |
| 09_decorator_module_scope/xts/integration/decorator_module_0002_import_property_decorator_function_integration.ets | integration | DECORATOR-MODULE-0002 | integration created |
| 09_decorator_module_scope/xts/integration/decorator_module_0003_import_method_decorator_function_integration.ets | integration | DECORATOR-MODULE-0003 | integration created (2-param) |
| 09_decorator_module_scope/xts/integration/decorator_module_0013_imported_decorator_side_effect_integration.ets | integration | DECORATOR-MODULE-0013 | integration created |
| 09_decorator_module_scope/xts/integration/decorator_module_0019_import_class_decorator_factory_integration.ets | integration | DECORATOR-MODULE-0019 | integration created |
| 09_decorator_module_scope/xts/integration/decorator_module_0049_arrow_function_imported_binding_integration.ets | integration | DECORATOR-MODULE-0049 | integration created; PR10632 ordinary contrast |
| 09_decorator_module_scope/xts/integration/decorator_module_0059_imported_factory_captures_module_var_integration.ets | integration | DECORATOR-MODULE-0059 | integration created; PR10632 ordinary contrast |
| 09_decorator_module_scope/xts/integration/decorator_module_0075_export_class_class_decorator_integration.ets | integration | DECORATOR-MODULE-0075 | integration created |
| 09_decorator_module_scope/xts/integration/decorator_module_0083_decorated_class_instance_member_accessible_integration.ets | integration | DECORATOR-MODULE-0083 | integration created |
| 09_decorator_module_scope/xts/integration/decorator_module_0100_multiple_modules_initialization_order_integration.ets | integration | DECORATOR-MODULE-0100 | integration created; fixed order pending |

Stage 8 boundary .ets files:

| File | Type | Coverage IDs | Status |
|---|---|---|---|
| 09_decorator_module_scope/xts/boundary/decorator_module_0005_default_import_decorator_boundary.ets | boundary | DECORATOR-MODULE-0005 | boundary created, pending support |
| 09_decorator_module_scope/xts/boundary/decorator_module_0078_default_export_class_class_decorator_boundary.ets | boundary | DECORATOR-MODULE-0078 | boundary created, pending support |
| 09_decorator_module_scope/xts/boundary/decorator_module_0105_circular_import_order_boundary.ets | boundary | DECORATOR-MODULE-0105 | boundary created (self-contained fallback), pending |
| 09_decorator_module_scope/xts/boundary/decorator_module_0106_imported_decorator_throw_boundary.ets | boundary | DECORATOR-MODULE-0106 | boundary created, pending |
| 09_decorator_module_scope/xts/boundary/decorator_module_0108_imported_binding_tdz_like_boundary.ets | boundary | DECORATOR-MODULE-0108 | boundary created, pending |

Stage 8 compiler expected candidates:

| File | Coverage IDs | Status |
|---|---|---|
| 09_decorator_module_scope/compiler_expected_candidates/decorator_module_imported_decorator_candidates.md | DECORATOR-MODULE-0001/0002/0003 | candidate created |
| 09_decorator_module_scope/compiler_expected_candidates/decorator_module_imported_factory_candidates.md | DECORATOR-MODULE-0019/0020/0021 | candidate created |
| 09_decorator_module_scope/compiler_expected_candidates/decorator_module_imported_binding_candidates.md | DECORATOR-MODULE-0049/0050/0051 | candidate created |
| 09_decorator_module_scope/compiler_expected_candidates/decorator_module_export_decorated_class_candidates.md | DECORATOR-MODULE-0075/0076/0077 | candidate created |
| 09_decorator_module_scope/compiler_expected_candidates/decorator_module_initialization_order_candidates.md | DECORATOR-MODULE-0100/0101/0102 | candidate created |

Notes:

- Stage 8 generated module scope helper modules, smoke, integration, boundary, and compiler candidate files only.
- No real bytecode expected output was generated in Stage 8.
- No sendable-specific cases were generated (all sendable goes to 07_decorator_with_sendable/).
- No PR 10632 original sendable shape was generated here — only ordinary module-binding contrast.
- Multi-file import uses relative sibling paths (`./modules/decorator_module_basic`) — XTS stability pending.
- Method decorator uses 2-param form (descriptor/equivalent structure pending).
- Fixed decorator/module initialization order pending confirmation — boundary files do not write strong assertions.
- Default export/import decorator patterns are boundary only (pending target support).

## Stage 9 Class Features Completion

| Rank | Global ID | Source Directory | Candidate | Status | Generated Artifact |
|---|---|---|---|---|---|
| 49 | DECORATOR-TOTAL-0246 | 08_decorator_with_class_features | static property + property decorator | pass created | 08_decorator_with_class_features/xts/pass/decorator_class_feature_static_property_pass.ets |
| 50 | DECORATOR-TOTAL-0824 | 08_decorator_with_class_features | readonly property + decorator | pass + fail_compile created | 08_decorator_with_class_features/xts/pass/decorator_class_feature_readonly_property_pass.ets; 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_readonly_assignment_fail.ets |

Stage 9 pass .ets files:

| File | Coverage IDs | Status |
|---|---|---|
| 08_decorator_with_class_features/xts/pass/decorator_class_feature_static_property_pass.ets | DECORATOR-CLASS-FEATURE-0001 | pass created |
| 08_decorator_with_class_features/xts/pass/decorator_class_feature_static_method_pass.ets | DECORATOR-CLASS-FEATURE-0002 | pass created |
| 08_decorator_with_class_features/xts/pass/decorator_class_feature_readonly_property_pass.ets | DECORATOR-CLASS-FEATURE-0019 | pass created |
| 08_decorator_with_class_features/xts/pass/decorator_class_feature_constructor_pass.ets | DECORATOR-CLASS-FEATURE-0054 | pass created |
| 08_decorator_with_class_features/xts/pass/decorator_class_feature_field_initializer_pass.ets | DECORATOR-CLASS-FEATURE-0020/0027 | pass created (ordinary contrast) |

Stage 9 smoke .ets files:

| File | Coverage IDs | Status |
|---|---|---|
| 08_decorator_with_class_features/xts/smoke/decorator_class_feature_override_method_smoke.ets | DECORATOR-CLASS-FEATURE-0087 | smoke created; override stability pending |
| 08_decorator_with_class_features/xts/smoke/decorator_class_feature_implements_smoke.ets | DECORATOR-CLASS-FEATURE-0131 | smoke created; implements stability pending |

Stage 9 integration .ets files:

| File | Coverage IDs | Status |
|---|---|---|
| 08_decorator_with_class_features/xts/integration/decorator_class_feature_inherited_property_integration.ets | DECORATOR-CLASS-FEATURE-0074 | integration created |
| 08_decorator_with_class_features/xts/integration/decorator_class_feature_inherited_method_integration.ets | DECORATOR-CLASS-FEATURE-0076 | integration created |

Stage 9 fail_compile .ets files:

| File | Coverage IDs | Expected Error | Status |
|---|---|---|---|
| 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_readonly_assignment_fail.ets | DECORATOR-CLASS-FEATURE-0019 | Cannot assign to readonly property | fail_compile created |
| 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_override_parameter_mismatch_fail.ets | DECORATOR-CLASS-FEATURE-0087 | Override parameter type mismatch | fail_compile created |
| 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_override_return_mismatch_fail.ets | DECORATOR-CLASS-FEATURE-0087 | Override return type mismatch | fail_compile created |
| 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_implements_missing_method_fail.ets | DECORATOR-CLASS-FEATURE-0131 | Class does not implement interface | fail_compile created |
| 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_field_type_mismatch_fail.ets | DECORATOR-CLASS-FEATURE-0027 | String not assignable to number | fail_compile created |
| 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_method_return_mismatch_fail.ets | DECORATOR-CLASS-FEATURE-0076 | String not assignable to return type number | fail_compile created |

Stage 9 boundary .ets files:

| File | Coverage IDs | Uncertainty | Status |
|---|---|---|---|
| 08_decorator_with_class_features/xts/boundary/decorator_class_feature_abstract_class_boundary.ets | DECORATOR-CLASS-FEATURE-0064 | abstract class decorator support unclear | boundary created |
| 08_decorator_with_class_features/xts/boundary/decorator_class_feature_accessor_boundary.ets | DECORATOR-CLASS-FEATURE-0029 | accessor decorator not confirmed | boundary created |
| 08_decorator_with_class_features/xts/boundary/decorator_class_feature_overload_method_boundary.ets | DECORATOR-CLASS-FEATURE-0088 | overload + decorator not confirmed | boundary created |
| 08_decorator_with_class_features/xts/boundary/decorator_class_feature_nested_class_boundary.ets | DECORATOR-CLASS-FEATURE-0135 | nested class decorator not confirmed | boundary created |
| 08_decorator_with_class_features/xts/boundary/decorator_class_feature_class_expression_boundary.ets | DECORATOR-CLASS-FEATURE-0134 | class expression decorator not confirmed | boundary created |
| 08_decorator_with_class_features/xts/boundary/decorator_class_feature_private_member_boundary.ets | DECORATOR-CLASS-FEATURE-0063 | private + decorator not confirmed | boundary created |

Stage 9 compiler expected candidates:

| File | Coverage IDs | Status |
|---|---|---|
| 08_decorator_with_class_features/compiler_expected_candidates/static_property_decorator_compiler_candidate.md | 0001 | candidate created |
| 08_decorator_with_class_features/compiler_expected_candidates/readonly_visibility_decorator_compiler_candidate.md | 0019 | candidate created |
| 08_decorator_with_class_features/compiler_expected_candidates/inheritance_override_decorator_compiler_candidate.md | 0087/0074/0076 | candidate created |
| 08_decorator_with_class_features/compiler_expected_candidates/generic_class_decorator_compiler_candidate.md | 0066 | candidate created (pending, no .ets yet) |
| 08_decorator_with_class_features/compiler_expected_candidates/interface_implements_decorator_compiler_candidate.md | 0131 | candidate created |

Notes:

- Stage 9 generated class features pass, smoke, integration, fail_compile, boundary, and compiler candidate files only.
- No real bytecode expected output was generated in Stage 9.
- No sendable-specific cases were generated (all sendable goes to 07_decorator_with_sendable/).
- No PR 10632 original sendable shape was generated here — only ordinary class feature coverage.
- Override syntax stability pending — may downgrade smoke to boundary.
- Implements + decorator stability pending — may downgrade smoke to boundary.
- Method decorator descriptor/equivalent structure pending — uses 2-param form.
- Generic class + decorator not generated as .ets — only tracked in compiler candidate as pending.
- Field initializer = ordinary class feature contrast, not PR10632 regression.
