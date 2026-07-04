# Decorator Path Existence Audit

## Summary

| 指标 | 数量 |
|---|---:|
| 检查路径总数 | 1572 |
| 存在路径数量 | 152 |
| 修正路径数量 | 6 |
| missing 路径数量 | 1420 |
| candidate-only 路径数量 | 54 |

说明：decorator_total_coverage_matrix.md 中仍包含大量规划路径；这些路径不是本阶段新增目标，未被标记为 completed。

## Fixed Paths

| 文档 | 原路径 | 修正后路径 | 原因 |
|---|---|---|---|
| coverage matrices | `decorator_class_0001_class_decorator_pass.ets` | `decorator_class_basic_pass.ets` | Stage 4 real file name |
| coverage matrices | `decorator_method_basic_fail_compile.ets` | specific method fail_compile files | Stage 3 split fail_compile files |
| coverage matrices | `decorator_factory_factory_pass.ets` | `decorator_factory_no_arg/single_arg/multi_arg/import_pass.ets` | Stage 2 split factory files |
| all docs | `decorator_sendable_pr10632_original_shape.ets` | `decorator_sendable_pr10632_local_binding_source_candidate.ets` | Stage 10 PR10632 local-binding correction |
| all docs | `*_fail.ets` | `*_fail_compile.ets` | fail_compile naming normalization |
| total/first-batch docs | `01_class_decorator/xts/pass/*_boundary.ets` | `01_class_decorator/xts/boundary/*_boundary.ets` | boundary status/path correction |

## Missing Paths

| 文档 | 路径 | 建议处理 |
|---|---|---|
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_instance_pass.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_static_pass.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/integration/decorator_property_instance_target_integration.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_factory_pass.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_basic_pass.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/pass/decorator_property_basic_pass.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/fail_compile/decorator_property_basic_fail_compile.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/02_property_decorator/xts/fail_compile/decorator_property_initializer_fail_compile.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/03_method_decorator/xts/integration/decorator_method_descriptor_integration.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0071.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0075.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0072.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0076.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0079.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/05_decorator_transform/compiler_expected/decorator_transform_0060.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0069.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0070.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/compiler_expected/decorator_sendable_0006.ts` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/07_decorator_with_sendable/xts/pass/decorator_sendable_arrow_function_argument_smoke.ets` | keep as planned/generated-later path unless Stage candidate is selected |
| decorator_first_batch_candidate_index.md | `arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/06_decorator_execution_order/xts/pass/decorator_order_property_same_target_smoke.ets` | keep as planned/generated-later path unless Stage candidate is selected |