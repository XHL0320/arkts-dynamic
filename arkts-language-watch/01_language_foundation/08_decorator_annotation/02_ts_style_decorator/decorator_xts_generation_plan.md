# Decorator XTS Generation Plan

## Goal

本计划用于指导后续将 TS style decorator 测试设计转化为 ArkTS XTS、compiler expected、bytecode expected 测试。

## Current Strategy

普通 decorator 主线优先，sendable-specific 只保留在 `07_decorator_with_sendable/`。

## Generation Stages

| Stage | 名称 | 来源目录 | 测试类型 | 建议数量 | 优先级 | 说明 |
|---|---|---|---|---|---|---|
| Stage 0 | Parser/Checker Syntax Baseline | 00_decorator_syntax | pass / fail_compile | 20 | P0/P1 | invalid syntax/target 优先 |
| Stage 1 | Property Decorator Core | 02_property_decorator | pass / fail_compile / compiler expected | 25 | P0/P1 | property target/key |
| Stage 2 | Decorator Factory Core | 04_decorator_factory | pass / fail_compile / boundary | 20 | P1 | factory args/return |
| Stage 3 | Method Decorator Core | 03_method_decorator | pass / fail_compile / compiler expected | 18 | P1 | target/key/descriptor |
| Stage 4 | Class Decorator Core | 01_class_decorator | pass / fail_compile / compiler expected | 18 | P1 | target/return/export |
| Stage 5 | Transform / Lowering Regression | 05_decorator_transform | compiler expected / bytecode expected | 20 | P0 | AST/binder/codegen |
| Stage 6 | PR 10632 Bytecode Regression | 07_decorator_with_sendable, 05_decorator_transform, 02_property_decorator | bytecode expected / XTS smoke | 8 | P0 | sendable-specific 主归属 |
| Stage 7 | Execution Order Smoke | 06_decorator_execution_order | runtime smoke / compiler expected | 12 | P1/P2 | multiple/factory order |
| Stage 8 | Module Scope Multi-file | 09_decorator_module_scope | integration / multi-file XTS | 12 | P1/P2 | import/export binding |
| Stage 9 | Class Features Integration | 08_decorator_with_class_features | integration / boundary | 15 | P1/P2 | class features 组合 |

## First Batch Candidate List

| Rank | Global ID | 来源目录 | 测试点 | 建议测试方式 | 建议用例类型 | 建议文件路径 | 优先级 | 备注 |
|---|---|---|---|---|---|---|---|---|
| 1 | DECORATOR-TOTAL-0033 | 00_decorator_syntax | class 前 @decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_class_pass.ets | P0 | Related: 01_class_decorator; Not from test262 |
| 2 | DECORATOR-TOTAL-0037 | 00_decorator_syntax | property 前 @decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_property_pass.ets | P0 | Related: 02_property_decorator; Not from test262 |
| 3 | DECORATOR-TOTAL-0036 | 00_decorator_syntax | method 前 @decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_method_pass.ets | P0 | Related: 03_method_decorator; Not from test262 |
| 4 | DECORATOR-TOTAL-0032 | 00_decorator_syntax | @decorator() call expression | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/pass/decorator_syntax_basic_pass.ets | P0 | Related: 04_decorator_factory; Not from test262 |
| 5 | DECORATOR-TOTAL-0012 | 00_decorator_syntax | parser error: bare @ | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_bare_fail_compile.ets | P0 | Not from test262 |
| 6 | DECORATOR-TOTAL-0013 | 00_decorator_syntax | parser error: decorator without declaration | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_basic_fail_compile.ets | P0 | Not from test262 |
| 7 | DECORATOR-TOTAL-0006 | 00_decorator_syntax | local variable | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_local_var_fail_compile.ets | P0 | Not from test262 |
| 8 | DECORATOR-TOTAL-0016 | 00_decorator_syntax | type alias | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/00_decorator_syntax/xts/fail_compile/decorator_syntax_type_alias_fail_compile.ets | P0 | Not from test262 |
| 9 | DECORATOR-TOTAL-0048 | 02_property_decorator | instance field property decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_instance_pass.ets | P0 | Not from test262 |
| 10 | DECORATOR-TOTAL-0058 | 02_property_decorator | static field property decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_static_pass.ets | P0 | Not from test262 |
| 11 | DECORATOR-TOTAL-0209 | 02_property_decorator | instance property target | compiler expected | integration | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/integration/decorator_property_instance_target_integration.ets | P0 | Not from test262 |
| 12 | DECORATOR-TOTAL-0049 | 02_property_decorator | property decorator 为 factory call | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_factory_pass.ets | P0 | Related: 04_decorator_factory; Not from test262 |
| 13 | DECORATOR-TOTAL-0052 | 02_property_decorator | property decorator 参数为 literal | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_basic_pass.ets | P0 | Not from test262 |
| 14 | DECORATOR-TOTAL-0053 | 02_property_decorator | property decorator 参数为函数 | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_basic_pass.ets | P0 | Not from test262 |
| 15 | DECORATOR-TOTAL-0022 | 02_property_decorator | field type mismatch + decorator | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/fail_compile/decorator_property_basic_fail_compile.ets | P0 | Not from test262 |
| 16 | DECORATOR-TOTAL-0021 | 02_property_decorator | field initializer mismatch + decorator | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/fail_compile/decorator_property_initializer_fail_compile.ets | P0 | Not from test262 |
| 17 | DECORATOR-TOTAL-0066 | 04_decorator_factory | 无参 factory | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_factory_pass.ets | P0 | Not from test262 |
| 18 | DECORATOR-TOTAL-0064 | 04_decorator_factory | 单参 factory | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_factory_pass.ets | P0 | Not from test262 |
| 19 | DECORATOR-TOTAL-0065 | 04_decorator_factory | 多参 factory | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_factory_pass.ets | P0 | Not from test262 |
| 20 | DECORATOR-TOTAL-0521 | 04_decorator_factory | IIFE | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_iife_pass.ets | P1 | Not from test262 |
| 21 | DECORATOR-TOTAL-0028 | 04_decorator_factory | factory 非函数 | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/fail_compile/decorator_factory_factory_fail_compile.ets | P0 | Not from test262 |
| 22 | DECORATOR-TOTAL-0540 | 04_decorator_factory | imported binding | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/04_decorator_factory/xts/pass/decorator_factory_import_pass.ets | P1 | Related: 09_decorator_module_scope; Not from test262 |
| 23 | DECORATOR-TOTAL-0059 | 03_method_decorator | instance method decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/pass/decorator_method_instance_pass.ets | P0 | Not from test262 |
| 24 | DECORATOR-TOTAL-0060 | 03_method_decorator | static method decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/pass/decorator_method_static_pass.ets | P0 | Not from test262 |
| 25 | DECORATOR-TOTAL-0222 | 03_method_decorator | descriptor 是否存在 | compiler expected | integration | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/integration/decorator_method_descriptor_integration.ets | P0 | Not from test262 |
| 26 | DECORATOR-TOTAL-0025 | 03_method_decorator | parameter type mismatch + decorator | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/fail_compile/decorator_method_basic_fail_compile.ets | P0 | Not from test262 |
| 27 | DECORATOR-TOTAL-0026 | 03_method_decorator | return type mismatch + decorator | parser/checker | fail_compile | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/fail_compile/decorator_method_basic_fail_compile.ets | P0 | Not from test262 |
| 28 | DECORATOR-TOTAL-0041 | 01_class_decorator | class decorator | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0001_class_decorator_pass.ets | P0 | Related: 00_decorator_syntax; Not from test262 |
| 29 | DECORATOR-TOTAL-0044 | 01_class_decorator | class decorator 为 factory call | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0003_class_decorator_factory_call_pass.ets | P0 | Related: 04_decorator_factory; Not from test262 |
| 30 | DECORATOR-TOTAL-0042 | 01_class_decorator | class decorator target | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0019_class_decorator_target_pass.ets | P0 | Related: 05_decorator_transform; Not from test262 |
| 31 | DECORATOR-TOTAL-0635 | 01_class_decorator | decorated exported class | compiler expected | integration | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/integration/decorator_class_0054_decorated_exported_class_integration.ets | P1 | Related: 00_decorator_syntax; Not from test262 |
| 32 | DECORATOR-TOTAL-0391 | 01_class_decorator | class decorator 返回原 class | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/01_class_decorator/xts/pass/decorator_class_0103_class_decorator_class_pass.ets | P1 | Related: 04_decorator_factory; Not from test262 |
| 33 | DECORATOR-TOTAL-0110 | 05_decorator_transform | property decorator call 生成正确 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0071.ts | P0 | bytecode regression; transform/lowering; Not from test262 |
| 34 | DECORATOR-TOTAL-0104 | 05_decorator_transform | factory 调用正确 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0075.ts | P0 | bytecode regression; Not from test262 |
| 35 | DECORATOR-TOTAL-0106 | 05_decorator_transform | instance property target 正确 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0072.ts | P0 | bytecode regression; Not from test262 |
| 36 | DECORATOR-TOTAL-0102 | 05_decorator_transform | decorator function 调用正确 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0076.ts | P0 | bytecode regression; transform/lowering; Not from test262 |
| 37 | DECORATOR-TOTAL-0101 | 05_decorator_transform | class definition 与 decorator call 顺序正确 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0079.ts | P0 | bytecode regression; transform/lowering; Not from test262 |
| 38 | DECORATOR-TOTAL-0114 | 05_decorator_transform | shared pointer 不污染 checker/type 状态 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0060.ts | P0 | PR 10632; bytecode regression; AST state pollution; Not from test262 |
| 39 | DECORATOR-TOTAL-0146 | 07_decorator_with_sendable | PR 10632 原始 bytecode expected | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0069.ts | P0 | PR 10632; bytecode regression; Not from test262 |
| 40 | DECORATOR-TOTAL-0147 | 07_decorator_with_sendable | arrow function 参数不生成 sendable function 字节码 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0070.ts | P0 | PR 10632; bytecode regression; Not from test262 |
| 41 | DECORATOR-TOTAL-0167 | 07_decorator_with_sendable | sendable class 本体仍生成 sendable class 字节码 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0006.ts | P0 | PR 10632; bytecode regression; Not from test262 |
| 42 | DECORATOR-TOTAL-0595 | 07_decorator_with_sendable | 普通 class + decorator 参数 arrow function | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/xts/pass/decorator_sendable_decorator_arrow_function_pass.ets | P1 | PR 10632; Not from test262 |
| 43 | DECORATOR-TOTAL-0579 | 06_decorator_execution_order | property 上两个 decorators | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/06_decorator_execution_order/xts/pass/decorator_order_0018_property_decorators_pass.ets | P1 | Related: 02_property_decorator; Not from test262 |
| 44 | DECORATOR-TOTAL-0570 | 06_decorator_execution_order | factory side effect 与 returned decorator side effect 顺序 | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/06_decorator_execution_order/xts/pass/decorator_order_0062_factory_side_effect_returned_decorator_side_pass.ets | P1 | Related: 04_decorator_factory; Not from test262 |
| 45 | DECORATOR-TOTAL-0740 | 06_decorator_execution_order | class + property + method decorators 混合 | compiler expected | integration | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/06_decorator_execution_order/xts/integration/decorator_order_0037_class_property_method_decorators_integration.ets | P1 | Related: 05_decorator_transform; Not from test262 |
| 46 | DECORATOR-TOTAL-0858 | 09_decorator_module_scope | imported decorator from sibling module | compiler expected | integration | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/09_decorator_module_scope/xts/integration/decorator_module_0008_imported_decorator_from_sibling_module_integration.ets | P1 | Related: 05_decorator_transform; Not from test262 |
| 47 | DECORATOR-TOTAL-0614 | 09_decorator_module_scope | imported factory 无参 | XTS smoke | pass | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/09_decorator_module_scope/xts/pass/decorator_module_0026_imported_factory_pass.ets | P1 | Related: 04_decorator_factory; Not from test262 |
| 48 | DECORATOR-TOTAL-0194 | 09_decorator_module_scope | lowering 后 decorator 参数 imported binding 正确 | bytecode expected | bytecode regression | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/09_decorator_module_scope/compiler_expected/decorator_module_0113_lowering_decorator_imported_binding.ts | P0 | bytecode regression; Related: 05_decorator_transform; Not from test262 |
| 49 | DECORATOR-TOTAL-0246 | 08_decorator_with_class_features | static property + property decorator | compiler expected | integration | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/08_decorator_with_class_features/xts/integration/decorator_class_feature_0001_static_property_property_decorator_integration.ets | P0 | Related: 02_property_decorator; Not from test262 |
| 50 | DECORATOR-TOTAL-0824 | 08_decorator_with_class_features | readonly property + decorator | compiler expected | integration | arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/08_decorator_with_class_features/xts/integration/decorator_class_feature_0019_readonly_property_decorator_integration.ets | P1 | Related: 02_property_decorator; Not from test262 |

## Stage 3 Generation Status

| Stage | Source Directory | Status | Generated XTS | Compiler Expected Candidates | Notes |
|---|---|---|---:|---:|---|
| Stage 3 | 03_method_decorator | completed for first batch | 18 | 2 | No real compiler expected output, no bytecode expected, no sendable-specific case. |

### Stage 3 Generated First Batch Items

| Global ID | Source Directory | Test Point | Status | Generated Path |
|---|---|---|---|---|
| DECORATOR-TOTAL-0059 | 03_method_decorator | instance method decorator | completed | 03_method_decorator/xts/pass/decorator_method_instance_pass.ets |
| DECORATOR-TOTAL-0060 | 03_method_decorator | static method decorator | completed | 03_method_decorator/xts/pass/decorator_method_static_pass.ets |
| DECORATOR-TOTAL-0222 | 03_method_decorator | method descriptor/equivalent structure | candidate created | 03_method_decorator/compiler_expected_candidates/method_decorator_target_key_descriptor_candidates.md |
| DECORATOR-TOTAL-0025 | 03_method_decorator | parameter type mismatch + decorator | completed | 03_method_decorator/xts/fail_compile/decorator_method_parameter_mismatch_fail_compile.ets |
| DECORATOR-TOTAL-0026 | 03_method_decorator | return type mismatch + decorator | completed | 03_method_decorator/xts/fail_compile/decorator_method_return_mismatch_fail_compile.ets |

## Stage 4 Generation Status

| Stage | Source Directory | Status | Generated XTS | Compiler Expected Candidates | Notes |
|---|---|---|---:|---:|---|
| Stage 4 | 01_class_decorator | completed for first batch | 21 | 3 | No real compiler expected output, no bytecode expected, no sendable-specific case. |

### Stage 4 Generated First Batch Items

| Global ID | Source Directory | Test Point | Status | Generated Path |
|---|---|---|---|---|
| DECORATOR-TOTAL-0041 | 01_class_decorator | class decorator | completed | 01_class_decorator/xts/pass/decorator_class_basic_pass.ets |
| DECORATOR-TOTAL-0044 | 01_class_decorator | class decorator factory call | completed | 01_class_decorator/xts/pass/decorator_class_factory_pass.ets |
| DECORATOR-TOTAL-0042 | 01_class_decorator | class decorator target / constructor value | candidate created | 01_class_decorator/compiler_expected_candidates/class_decorator_target_constructor_candidates.md |
| DECORATOR-TOTAL-0635 | 01_class_decorator | decorated exported class | completed | 01_class_decorator/xts/integration/decorator_class_export_integration.ets |
| DECORATOR-TOTAL-0391 | 01_class_decorator | class decorator return value boundary | candidate created | 01_class_decorator/compiler_expected_candidates/class_decorator_return_value_candidates.md |

## Stage 5 Generation Status

| Stage | Source Directory | Status | Generated Smoke/Integration/Boundary XTS | Compiler Expected Candidates | Bytecode Expected Candidates | Notes |
|---|---|---|---:|---:|---:|---|
| Stage 5 | 05_decorator_transform | completed for first batch candidates | 13 | 6 | 1 | No real compiler expected output, no real bytecode expected output, no sendable-specific case. |

### Stage 5 Generated First Batch Items

| Global ID | Source Directory | Test Point | Status | Generated Path |
|---|---|---|---|---|
| DECORATOR-TOTAL-0110 | 05_decorator_transform | property decorator call lowering/codegen | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_property_lowering_candidates.md |
| DECORATOR-TOTAL-0104 | 05_decorator_transform | factory call lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_factory_lowering_candidates.md |
| DECORATOR-TOTAL-0106 | 05_decorator_transform | instance property target lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_property_lowering_candidates.md |
| DECORATOR-TOTAL-0102 | 05_decorator_transform | decorator function call lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_factory_lowering_candidates.md |
| DECORATOR-TOTAL-0101 | 05_decorator_transform | class definition and decorator call lowering | candidate created | 05_decorator_transform/compiler_expected_candidates/decorator_transform_class_lowering_candidates.md |
| DECORATOR-TOTAL-0114 | 05_decorator_transform | AST state / binder context pollution risk | candidate created | 05_decorator_transform/bytecode_expected_candidates/decorator_transform_bytecode_risk_candidates.md |

## Stage 6 Generation Status

| Stage | Source Directory | Status | Generated Smoke/Regression/Boundary XTS | Compiler Expected Candidates | Bytecode Expected Candidates | Notes |
|---|---|---|---:|---:|---:|---|
| Stage 6 | 07_decorator_with_sendable | completed for sendable-specific first batch candidates | 7 | 3 | 3 | No real bytecode expected output. PR 10632 original shape uses local binding (degraded). Imported binding deferred. |

### Stage 6 Generated Items

| Global ID | Source Directory | Test Point | Status | Generated Path |
|---|---|---|---|---|
| DECORATOR-TOTAL-0146 | 07_decorator_with_sendable | PR 10632 original bytecode expected | candidate created | 07_decorator_with_sendable/compiler_expected_candidates/decorator_sendable_property_transform_candidates.md; 07_decorator_with_sendable/bytecode_expected_candidates/decorator_sendable_pr10632_bytecode_candidates.md |
| DECORATOR-TOTAL-0147 | 07_decorator_with_sendable | arrow function argument not sendable bytecode | candidate created | 07_decorator_with_sendable/compiler_expected_candidates/decorator_sendable_factory_argument_candidates.md; 07_decorator_with_sendable/bytecode_expected_candidates/decorator_sendable_inSendable_flag_candidates.md |
| DECORATOR-TOTAL-0167 | 07_decorator_with_sendable | sendable class body still sendable bytecode | candidate created | 07_decorator_with_sendable/bytecode_expected_candidates/decorator_sendable_pr10632_bytecode_candidates.md |
| DECORATOR-SENDABLE-0001 | 07_decorator_with_sendable | PR 10632 original shape | source candidate created | 07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_original_shape.ets |
| DECORATOR-SENDABLE-0005 | 07_decorator_with_sendable | local binding smoke | smoke created | 07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_local_binding_smoke.ets |
| DECORATOR-SENDABLE-0009 | 07_decorator_with_sendable | property decorator basic on sendable class | smoke created | 07_decorator_with_sendable/xts/smoke/decorator_sendable_property_basic_smoke.ets |
| DECORATOR-SENDABLE-0029 | 07_decorator_with_sendable | property decorator factory on sendable class | smoke created | 07_decorator_with_sendable/xts/smoke/decorator_sendable_property_factory_smoke.ets |
| DECORATOR-SENDABLE-0035 | 07_decorator_with_sendable | arrow function argument on sendable class | smoke created | 07_decorator_with_sendable/xts/regression/decorator_sendable_arrow_function_argument_smoke.ets |
| DECORATOR-SENDABLE-0010 | 07_decorator_with_sendable | non-sendable control | smoke created | 07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_non_sendable_control.ets |
| DECORATOR-SENDABLE-0006/0007 | 07_decorator_with_sendable | sendable class context boundary | boundary candidate created | 07_decorator_with_sendable/xts/boundary/decorator_sendable_class_context_boundary.ets |

## Stage 7 Generation Status

| Stage | Source Directory | Status | Generated Smoke/Integration/Boundary XTS | Compiler Expected Candidates | Bytecode Expected Candidates | Notes |
|---|---|---|---:|---:|---:|---|
| Stage 7 | 06_decorator_execution_order | completed for first batch candidates | 13 | 5 | 0 | No real compiler expected output, no bytecode expected, no sendable-specific case, no PR10632 reference. Fixed order pending. |

### Stage 7 Generated First Batch Items

| Global ID | Source Directory | Test Point | Status | Generated Path |
|---|---|---|---|---|
| DECORATOR-TOTAL-0579 | 06_decorator_execution_order | property 上两个 decorators | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_property_same_target_smoke.ets |
| DECORATOR-TOTAL-0570 | 06_decorator_execution_order | factory side effect 与 returned decorator side effect 顺序 | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_factory_eval_call_smoke.ets |
| DECORATOR-TOTAL-0740 | 06_decorator_execution_order | class + property + method decorators 混合 | integration created | 06_decorator_execution_order/xts/integration/decorator_order_class_property_method_mixed_smoke.ets |
| DECORATOR-ORDER-0016 | 06_decorator_execution_order | class 上两个 decorators | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_class_same_target_smoke.ets |
| DECORATOR-ORDER-0018 | 06_decorator_execution_order | property 上两个 decorators | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_property_same_target_smoke.ets |
| DECORATOR-ORDER-0020 | 06_decorator_execution_order | method 上两个 decorators | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_method_same_target_smoke.ets |
| DECORATOR-ORDER-0003/0004/0005 | 06_decorator_execution_order | factory eval vs decorator call order | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_factory_eval_call_smoke.ets |
| DECORATOR-ORDER-0024/0025/0026 | 06_decorator_execution_order | multiple factory decorators | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_multiple_factories_smoke.ets |
| DECORATOR-ORDER-0005/0006 | 06_decorator_execution_order | factory argument eval order | smoke created | 06_decorator_execution_order/xts/smoke/decorator_order_factory_argument_eval_smoke.ets |
| DECORATOR-ORDER-0037 | 06_decorator_execution_order | class + property + method mixed | integration created | 06_decorator_execution_order/xts/integration/decorator_order_class_property_method_mixed_smoke.ets |
| DECORATOR-ORDER-0031/0032/0040/0042 | 06_decorator_execution_order | static/instance member order | integration created | 06_decorator_execution_order/xts/integration/decorator_order_static_instance_member_smoke.ets |
| DECORATOR-ORDER-0025/0026 | 06_decorator_execution_order | fixed decorator call order | boundary candidate created | 06_decorator_execution_order/xts/boundary/decorator_order_fixed_order_boundary.ets |
| DECORATOR-ORDER-0046 | 06_decorator_execution_order | mixed member order | boundary candidate created | 06_decorator_execution_order/xts/boundary/decorator_order_mixed_member_boundary.ets |
| DECORATOR-ORDER-0010 | 06_decorator_execution_order | decorator throw boundary | boundary record only | 06_decorator_execution_order/xts/boundary/decorator_order_decorator_throw_boundary.ets |
| DECORATOR-ORDER-0011 | 06_decorator_execution_order | factory throw boundary | boundary record only | 06_decorator_execution_order/xts/boundary/decorator_order_factory_throw_boundary.ets |
| DECORATOR-ORDER-0029 | 06_decorator_execution_order | class decorator return value order | boundary record only | 06_decorator_execution_order/xts/boundary/decorator_order_class_return_boundary.ets |

## Stage 8 Generation Status

| Stage | Source Directory | Status | Generated Helper Modules | Smoke/Integration/Boundary XTS | Compiler Expected Candidates | Bytecode Expected Candidates | Notes |
|---|---|---|---:|---:|---:|---:|---|
| Stage 8 | 09_decorator_module_scope | completed for first batch candidates | 10 | 16 | 5 | 0 | No real compiler expected output, no bytecode expected, no sendable-specific case. Multi-file import uses relative sibling paths. Fixed order pending. |

### Stage 8 Generated Items

| Global ID / Coverage ID | Source Directory | Test Point | Status | Generated Path |
|---|---|---|---|---|
| DECORATOR-TOTAL-0858 | 09_decorator_module_scope | imported decorator from sibling module | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0001_import_class_decorator_function_integration.ets |
| DECORATOR-TOTAL-0614 | 09_decorator_module_scope | imported factory no-arg | smoke created | 09_decorator_module_scope/xts/smoke/decorator_module_import_class_decorator_smoke.ets |
| DECORATOR-TOTAL-0194 | 09_decorator_module_scope | lowering decorator imported binding | candidate created | 09_decorator_module_scope/compiler_expected_candidates/decorator_module_imported_binding_candidates.md |
| DECORATOR-MODULE-0001 | 09_decorator_module_scope | import class decorator function | smoke + integration created | 09_decorator_module_scope/xts/smoke/decorator_module_import_class_decorator_smoke.ets; 09_decorator_module_scope/xts/integration/decorator_module_0001_import_class_decorator_function_integration.ets |
| DECORATOR-MODULE-0002 | 09_decorator_module_scope | import property decorator function | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0002_import_property_decorator_function_integration.ets |
| DECORATOR-MODULE-0003 | 09_decorator_module_scope | import method decorator function | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0003_import_method_decorator_function_integration.ets |
| DECORATOR-MODULE-0005 | 09_decorator_module_scope | default import decorator | boundary created | 09_decorator_module_scope/xts/boundary/decorator_module_0005_default_import_decorator_boundary.ets |
| DECORATOR-MODULE-0013 | 09_decorator_module_scope | imported decorator side effect | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0013_imported_decorator_side_effect_integration.ets |
| DECORATOR-MODULE-0019 | 09_decorator_module_scope | import class decorator factory | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0019_import_class_decorator_factory_integration.ets |
| DECORATOR-MODULE-0049 | 09_decorator_module_scope | arrow function captures imported binding | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0049_arrow_function_imported_binding_integration.ets |
| DECORATOR-MODULE-0059 | 09_decorator_module_scope | imported factory captures module variable | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0059_imported_factory_captures_module_var_integration.ets |
| DECORATOR-MODULE-0075 | 09_decorator_module_scope | export class + class decorator | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0075_export_class_class_decorator_integration.ets |
| DECORATOR-MODULE-0076 | 09_decorator_module_scope | export class + property decorator | helper module created | 09_decorator_module_scope/xts/modules/decorator_export_property_class_module.ets |
| DECORATOR-MODULE-0077 | 09_decorator_module_scope | export class + method decorator | helper module created | 09_decorator_module_scope/xts/modules/decorator_export_method_class_module.ets |
| DECORATOR-MODULE-0078 | 09_decorator_module_scope | default export + class decorator | boundary created | 09_decorator_module_scope/xts/boundary/decorator_module_0078_default_export_class_class_decorator_boundary.ets |
| DECORATOR-MODULE-0083 | 09_decorator_module_scope | decorated class instance member accessible | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0083_decorated_class_instance_member_accessible_integration.ets |
| DECORATOR-MODULE-0100 | 09_decorator_module_scope | multiple modules initialization order | integration created | 09_decorator_module_scope/xts/integration/decorator_module_0100_multiple_modules_initialization_order_integration.ets |
| DECORATOR-MODULE-0105 | 09_decorator_module_scope | circular import order | boundary created | 09_decorator_module_scope/xts/boundary/decorator_module_0105_circular_import_order_boundary.ets |
| DECORATOR-MODULE-0106 | 09_decorator_module_scope | imported decorator throw | boundary created | 09_decorator_module_scope/xts/boundary/decorator_module_0106_imported_decorator_throw_boundary.ets |
| DECORATOR-MODULE-0108 | 09_decorator_module_scope | imported binding TDZ-like | boundary created | 09_decorator_module_scope/xts/boundary/decorator_module_0108_imported_binding_tdz_like_boundary.ets |

## Stage 9 Generation Status

| Stage | Source Directory | Status | Generated Pass/Smoke/Integration/Fail/Boundary XTS | Compiler Expected Candidates | Bytecode Expected Candidates | Notes |
|---|---|---|---:|---:|---:|---|
| Stage 9 | 08_decorator_with_class_features | completed for first batch candidates | 21 | 5 | 0 | No real compiler expected output, no bytecode expected, no sendable-specific case. Override/implements stability pending. Method descriptor 2-param form. |

### Stage 9 Generated Items

| Coverage ID | Source Directory | Test Point | Status | Generated Path |
|---|---|---|---|---|
| DECORATOR-CLASS-FEATURE-0001 | 08_decorator_with_class_features | static property + property decorator | pass created | 08_decorator_with_class_features/xts/pass/decorator_class_feature_static_property_pass.ets |
| DECORATOR-CLASS-FEATURE-0002 | 08_decorator_with_class_features | static method + method decorator | pass created | 08_decorator_with_class_features/xts/pass/decorator_class_feature_static_method_pass.ets |
| DECORATOR-CLASS-FEATURE-0019 | 08_decorator_with_class_features | readonly property + decorator | pass + fail_compile created | 08_decorator_with_class_features/xts/pass/decorator_class_feature_readonly_property_pass.ets; 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_readonly_assignment_fail.ets |
| DECORATOR-CLASS-FEATURE-0020/0027 | 08_decorator_with_class_features | field initializer + property decorator | pass created | 08_decorator_with_class_features/xts/pass/decorator_class_feature_field_initializer_pass.ets |
| DECORATOR-CLASS-FEATURE-0029 | 08_decorator_with_class_features | accessor (getter/setter) + property decorator | boundary created | 08_decorator_with_class_features/xts/boundary/decorator_class_feature_accessor_boundary.ets |
| DECORATOR-CLASS-FEATURE-0054 | 08_decorator_with_class_features | decorated class constructor one arg | pass created | 08_decorator_with_class_features/xts/pass/decorator_class_feature_constructor_pass.ets |
| DECORATOR-CLASS-FEATURE-0063 | 08_decorator_with_class_features | private member + decorator | boundary created | 08_decorator_with_class_features/xts/boundary/decorator_class_feature_private_member_boundary.ets |
| DECORATOR-CLASS-FEATURE-0064 | 08_decorator_with_class_features | abstract class + class decorator | boundary created | 08_decorator_with_class_features/xts/boundary/decorator_class_feature_abstract_class_boundary.ets |
| DECORATOR-CLASS-FEATURE-0074 | 08_decorator_with_class_features | decorated property in base class | integration created | 08_decorator_with_class_features/xts/integration/decorator_class_feature_inherited_property_integration.ets |
| DECORATOR-CLASS-FEATURE-0076 | 08_decorator_with_class_features | decorated method in base class | integration + fail_compile created | 08_decorator_with_class_features/xts/integration/decorator_class_feature_inherited_method_integration.ets; 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_method_return_mismatch_fail.ets |
| DECORATOR-CLASS-FEATURE-0087 | 08_decorator_with_class_features | override method + decorator | smoke + fail_compile created | 08_decorator_with_class_features/xts/smoke/decorator_class_feature_override_method_smoke.ets; 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_override_parameter_mismatch_fail.ets; 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_override_return_mismatch_fail.ets |
| DECORATOR-CLASS-FEATURE-0088 | 08_decorator_with_class_features | overload method + decorator | boundary created | 08_decorator_with_class_features/xts/boundary/decorator_class_feature_overload_method_boundary.ets |
| DECORATOR-CLASS-FEATURE-0131 | 08_decorator_with_class_features | decorated class implements interface | smoke + fail_compile created | 08_decorator_with_class_features/xts/smoke/decorator_class_feature_implements_smoke.ets; 08_decorator_with_class_features/xts/fail_compile/decorator_class_feature_implements_missing_method_fail.ets |
| DECORATOR-CLASS-FEATURE-0134 | 08_decorator_with_class_features | class expression + decorator | boundary created | 08_decorator_with_class_features/xts/boundary/decorator_class_feature_class_expression_boundary.ets |
| DECORATOR-CLASS-FEATURE-0135 | 08_decorator_with_class_features | nested class + decorator | boundary created | 08_decorator_with_class_features/xts/boundary/decorator_class_feature_nested_class_boundary.ets |
