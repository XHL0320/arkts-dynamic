# Stage 5 Decorator Transform Generation Report

## Summary

| 指标 | 数量 |
|---|---:|
| 新增 smoke 用例数量 | 7 |
| 新增 integration 用例数量 | 1 |
| 新增 boundary 用例数量 | 5 |
| 新增 compiler expected candidate 文件数量 | 6 |
| 新增 bytecode expected candidate 文件数量 | 1 |
| 覆盖 coverage ID 数量 | 61 |
| PR 10632 reference 数量 | 1 |
| sendable-specific 用例数量 | 0 |
| 真实 bytecode expected 文件数量 | 0 |

## Generated Files

| 文件 | 类型 | 覆盖点 | 关联 Coverage ID | 备注 |
|---|---|---|---|---|
| xts/smoke/decorator_transform_property_call_once_smoke.ets | smoke | property decorator call once | DECORATOR-TRANSFORM-0001, DECORATOR-TRANSFORM-0017, DECORATOR-TRANSFORM-0071, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078 | ordinary property decorator |
| xts/smoke/decorator_transform_static_property_smoke.ets | smoke | static property decorator smoke | DECORATOR-TRANSFORM-0002, DECORATOR-TRANSFORM-0073, DECORATOR-TRANSFORM-0088 | static target smoke |
| xts/smoke/decorator_transform_method_call_once_smoke.ets | smoke | method decorator call once | DECORATOR-TRANSFORM-0021, DECORATOR-TRANSFORM-0023, DECORATOR-TRANSFORM-0024, DECORATOR-TRANSFORM-0025 | descriptor not asserted |
| xts/smoke/decorator_transform_class_call_once_smoke.ets | smoke | class decorator call once | DECORATOR-TRANSFORM-0033, DECORATOR-TRANSFORM-0035, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078 | class target not asserted |
| xts/smoke/decorator_transform_factory_call_smoke.ets | smoke | factory call and returned decorator call | DECORATOR-TRANSFORM-0005, DECORATOR-TRANSFORM-0043, DECORATOR-TRANSFORM-0052, DECORATOR-TRANSFORM-0075, DECORATOR-TRANSFORM-0076 | call count smoke |
| xts/smoke/decorator_transform_factory_argument_smoke.ets | smoke | factory argument expression | DECORATOR-TRANSFORM-0009, DECORATOR-TRANSFORM-0046, DECORATOR-TRANSFORM-0050, DECORATOR-TRANSFORM-0087 | argument evaluated once |
| xts/smoke/decorator_transform_multiple_no_duplicate_smoke.ets | smoke | multiple decorators no duplicate | DECORATOR-TRANSFORM-0016, DECORATOR-TRANSFORM-0017, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078, DECORATOR-TRANSFORM-0082 | order not asserted |
| xts/integration/decorator_transform_class_property_method_smoke.ets | integration | class/property/method mixed smoke | DECORATOR-TRANSFORM-0021, DECORATOR-TRANSFORM-0033, DECORATOR-TRANSFORM-0101, DECORATOR-TRANSFORM-0102 | cross-target order not asserted |
| xts/boundary/decorator_transform_method_descriptor_boundary.ets | boundary | method descriptor/equivalent structure | DECORATOR-TRANSFORM-0025, DECORATOR-TRANSFORM-0032, DECORATOR-TRANSFORM-0090 | Pending |
| xts/boundary/decorator_transform_class_return_boundary.ets | boundary | class decorator return value lowering | DECORATOR-TRANSFORM-0041, DECORATOR-TRANSFORM-0098 | Pending |
| xts/boundary/decorator_transform_factory_invalid_return_boundary.ets | boundary | invalid factory return | DECORATOR-TRANSFORM-0053, DECORATOR-TRANSFORM-0098 | Pending |
| xts/boundary/decorator_transform_ast_state_pollution_boundary.ets | boundary | AST state pollution ordinary shape | DECORATOR-TRANSFORM-0057, DECORATOR-TRANSFORM-0062, DECORATOR-TRANSFORM-0063, DECORATOR-TRANSFORM-0064 | no bytecode output |
| xts/boundary/decorator_transform_binder_context_pollution_boundary.ets | boundary | binder context pollution ordinary shape | DECORATOR-TRANSFORM-0059, DECORATOR-TRANSFORM-0060, DECORATOR-TRANSFORM-0061, DECORATOR-TRANSFORM-0070 | no bytecode output |
| compiler_expected_candidates/decorator_transform_property_lowering_candidates.md | candidate | property lowering | DECORATOR-TRANSFORM-0001, DECORATOR-TRANSFORM-0002, DECORATOR-TRANSFORM-0003, DECORATOR-TRANSFORM-0004, DECORATOR-TRANSFORM-0005, DECORATOR-TRANSFORM-0017, DECORATOR-TRANSFORM-0071, DECORATOR-TRANSFORM-0072, DECORATOR-TRANSFORM-0073, DECORATOR-TRANSFORM-0074 | no expected output |
| compiler_expected_candidates/decorator_transform_method_lowering_candidates.md | candidate | method lowering | DECORATOR-TRANSFORM-0021, DECORATOR-TRANSFORM-0022, DECORATOR-TRANSFORM-0023, DECORATOR-TRANSFORM-0024, DECORATOR-TRANSFORM-0025, DECORATOR-TRANSFORM-0026, DECORATOR-TRANSFORM-0032 | no expected output |
| compiler_expected_candidates/decorator_transform_class_lowering_candidates.md | candidate | class lowering | DECORATOR-TRANSFORM-0033, DECORATOR-TRANSFORM-0034, DECORATOR-TRANSFORM-0035, DECORATOR-TRANSFORM-0036, DECORATOR-TRANSFORM-0037, DECORATOR-TRANSFORM-0041, DECORATOR-TRANSFORM-0079 | no expected output |
| compiler_expected_candidates/decorator_transform_factory_lowering_candidates.md | candidate | factory lowering | DECORATOR-TRANSFORM-0043, DECORATOR-TRANSFORM-0044, DECORATOR-TRANSFORM-0045, DECORATOR-TRANSFORM-0046, DECORATOR-TRANSFORM-0048, DECORATOR-TRANSFORM-0050, DECORATOR-TRANSFORM-0051, DECORATOR-TRANSFORM-0052, DECORATOR-TRANSFORM-0053, DECORATOR-TRANSFORM-0075, DECORATOR-TRANSFORM-0076 | no expected output |
| compiler_expected_candidates/decorator_transform_mixed_target_candidates.md | candidate | mixed target lowering | DECORATOR-TRANSFORM-0016, DECORATOR-TRANSFORM-0017, DECORATOR-TRANSFORM-0021, DECORATOR-TRANSFORM-0022, DECORATOR-TRANSFORM-0033, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078, DECORATOR-TRANSFORM-0082, DECORATOR-TRANSFORM-0101, DECORATOR-TRANSFORM-0102 | no expected output |
| compiler_expected_candidates/decorator_transform_module_binding_candidates.md | candidate | module binding lowering | DECORATOR-TRANSFORM-0010, DECORATOR-TRANSFORM-0051, DECORATOR-TRANSFORM-0067, DECORATOR-TRANSFORM-0083 | no expected output |
| bytecode_expected_candidates/decorator_transform_bytecode_risk_candidates.md | candidate | bytecode risk bridge | DECORATOR-TRANSFORM-0058, DECORATOR-TRANSFORM-0059, DECORATOR-TRANSFORM-0060, DECORATOR-TRANSFORM-0061, DECORATOR-TRANSFORM-0069, DECORATOR-TRANSFORM-0070, DECORATOR-TRANSFORM-0071, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078, DECORATOR-TRANSFORM-0080, DECORATOR-TRANSFORM-0083, DECORATOR-TRANSFORM-0085 | no real bytecode expected |

## Coverage Mapping

| Coverage ID | 测试点 | 生成文件 | 状态 |
|---|---|---|---|
| DECORATOR-TRANSFORM-0001 | instance property decorator lowering | xts/smoke/decorator_transform_property_call_once_smoke.ets | generated |
| DECORATOR-TRANSFORM-0002 | static property decorator lowering | xts/smoke/decorator_transform_static_property_smoke.ets | generated |
| DECORATOR-TRANSFORM-0021 | instance method decorator lowering | xts/smoke/decorator_transform_method_call_once_smoke.ets | generated |
| DECORATOR-TRANSFORM-0033 | class decorator lowering | xts/smoke/decorator_transform_class_call_once_smoke.ets | generated |
| DECORATOR-TRANSFORM-0043 | no-arg factory lowering | xts/smoke/decorator_transform_factory_call_smoke.ets | generated |
| DECORATOR-TRANSFORM-0050 | IIFE/factory argument lowering | xts/smoke/decorator_transform_factory_argument_smoke.ets | generated |
| DECORATOR-TRANSFORM-0077 | no duplicate decorator call | xts/smoke/decorator_transform_multiple_no_duplicate_smoke.ets | generated |
| DECORATOR-TRANSFORM-0078 | no missing decorator call | xts/smoke/decorator_transform_multiple_no_duplicate_smoke.ets | generated |
| DECORATOR-TRANSFORM-0025 | method descriptor/equivalent structure | compiler_expected_candidates/decorator_transform_method_lowering_candidates.md | candidate created |
| DECORATOR-TRANSFORM-0058 | AST state / bytecode risk | bytecode_expected_candidates/decorator_transform_bytecode_risk_candidates.md | candidate created |
| DECORATOR-TRANSFORM-0085 | PR 10632 bridge | bytecode_expected_candidates/decorator_transform_bytecode_risk_candidates.md | candidate created |

## Transform Risk Matrix

| 风险点 | 当前处理 | 后续建议 |
|---|---|---|
| property decorator lowering | smoke + compiler expected candidate | 后续 compiler expected |
| method decorator lowering | smoke/boundary + compiler expected candidate | descriptor 待确认 |
| class decorator lowering | smoke/boundary + compiler expected candidate | target/return value 待确认 |
| factory call lowering | smoke + compiler expected candidate | 后续 compiler expected |
| AST state pollution | boundary + bytecode candidate | 后续 bytecode expected |
| binder context pollution | boundary + bytecode candidate | 后续 bytecode expected |
| PR 10632 bridge | candidate only | Stage 6 sendable bytecode regression |

## Boundary / Need Review

| 项目 | 原因 | 建议 |
|---|---|---|
| method descriptor/equivalent structure | ArkTS 行为待确认 | 后续 compiler expected |
| class decorator return value | 是否支持替换 class 待确认 | 后续 boundary/runtime smoke |
| factory invalid return | checker/runtime 行为待确认 | 后续 fail_compile 或 fail_runtime |
| module binding lowering | 需要 multi-file integration | 后续 Stage 8 |
| AST state pollution | 需要 bytecode/codegen 观察 | 后续 Stage 6/bytecode expected |
| binder context pollution | 需要 bytecode/codegen 观察 | 后续 Stage 6/bytecode expected |

## Next Stage Suggestion

建议下一阶段进入：

`07_decorator_with_sendable`

原因：

- Stage 5 已完成普通 transform/lowering 候选；
- PR 10632 的真实风险在 sendable + property decorator + factory 参数 + imported binding + binder/codegen；
- 下一阶段应生成 sendable-specific regression candidate 和 bytecode expected 候选；
- 仍需谨慎，不把 sendable 扩散到普通主线。

## Stage 11 Validation Note

Representative positive coverage from this stage was migrated into consolidated DevEco ohosTest Hypium suites and validated with official hvigor build plus `aa test` class-filter execution. Boundary/candidate items were not executed. `fail_compile` files were validated separately through a temporary imported probe and official hvigor compile failure checks.
