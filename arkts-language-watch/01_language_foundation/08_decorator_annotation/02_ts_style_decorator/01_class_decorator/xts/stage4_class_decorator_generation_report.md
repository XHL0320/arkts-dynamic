# Stage 4 Class Decorator Generation Report

## Summary

| Metric | Count |
|---|---:|
| Added pass cases | 8 |
| Added fail_compile cases | 6 |
| Added boundary cases | 6 |
| Added integration cases | 1 |
| Added compiler expected candidate files | 3 |
| Covered coverage IDs | 52 |
| PR 10632 references | 0 |
| sendable-specific cases | 0 |

## Generated Files

| File | Type | Coverage Point | Related Coverage ID | Notes |
|---|---|---|---|---|
| xts/pass/decorator_class_basic_pass.ets | pass | class decorator identifier form | DECORATOR-CLASS-0001, DECORATOR-CLASS-0002, DECORATOR-CLASS-0017 | ordinary class |
| xts/pass/decorator_class_factory_pass.ets | pass | class decorator factory | DECORATOR-CLASS-0003, DECORATOR-CLASS-0045 | Related: 04_decorator_factory |
| xts/pass/decorator_class_argument_literal_pass.ets | pass | literal factory args | DECORATOR-CLASS-0007, DECORATOR-CLASS-0036, DECORATOR-CLASS-0037, DECORATOR-CLASS-0038, DECORATOR-CLASS-0039 | string/number/boolean |
| xts/pass/decorator_class_argument_function_pass.ets | pass | arrow function factory arg | DECORATOR-CLASS-0009, DECORATOR-CLASS-0040 | ordinary class only |
| xts/pass/decorator_class_multiple_decorators_pass.ets | pass | multiple class decorators | DECORATOR-CLASS-0025, DECORATOR-CLASS-0050 | order not asserted |
| xts/pass/decorator_class_constructor_pass.ets | pass | class decorator + constructor | DECORATOR-CLASS-0013, DECORATOR-CLASS-0068 | constructor smoke |
| xts/pass/decorator_class_static_member_pass.ets | pass | static field/method | DECORATOR-CLASS-0016, DECORATOR-CLASS-0073, DECORATOR-CLASS-0076 | static smoke |
| xts/pass/decorator_class_instance_method_pass.ets | pass | instance method | DECORATOR-CLASS-0015, DECORATOR-CLASS-0075 | this access smoke |
| xts/integration/decorator_class_export_integration.ets | integration | export class + decorator | DECORATOR-CLASS-0054, DECORATOR-CLASS-0136 | single-file export smoke |
| xts/fail_compile/decorator_class_constructor_parameter_mismatch_fail_compile.ets | fail_compile | constructor parameter mismatch | DECORATOR-CLASS-0070 | checker negative |
| xts/fail_compile/decorator_class_field_type_mismatch_fail_compile.ets | fail_compile | field initializer mismatch | DECORATOR-CLASS-0072 | checker negative |
| xts/fail_compile/decorator_class_method_return_mismatch_fail_compile.ets | fail_compile | method return mismatch | DECORATOR-CLASS-0015, DECORATOR-CLASS-0086 | checker negative |
| xts/fail_compile/decorator_class_unresolved_fail_compile.ets | fail_compile | unresolved class decorator | DECORATOR-CLASS-0010 | checker negative |
| xts/fail_compile/decorator_class_non_callable_fail_compile.ets | fail_compile | non-callable class decorator | DECORATOR-CLASS-0011 | checker negative |
| xts/fail_compile/decorator_class_implements_mismatch_fail_compile.ets | fail_compile | implements mismatch | DECORATOR-CLASS-0079, DECORATOR-CLASS-0094 | checker negative |
| xts/boundary/decorator_class_default_export_boundary.ets | boundary | default export class decorator | DECORATOR-CLASS-0028, DECORATOR-CLASS-0055, DECORATOR-CLASS-0137 | Pending |
| xts/boundary/decorator_class_target_boundary.ets | boundary | target / constructor value | DECORATOR-CLASS-0019, DECORATOR-CLASS-0020, DECORATOR-CLASS-0034 | no strong target assertion |
| xts/boundary/decorator_class_return_value_boundary.ets | boundary | return value behavior | DECORATOR-CLASS-0012, DECORATOR-CLASS-0101, DECORATOR-CLASS-0103, DECORATOR-CLASS-0104, DECORATOR-CLASS-0105, DECORATOR-CLASS-0109 | replacement pending |
| xts/boundary/decorator_class_abstract_boundary.ets | boundary | abstract class decorator | DECORATOR-CLASS-0033, DECORATOR-CLASS-0155 | Pending |
| xts/boundary/decorator_class_generic_boundary.ets | boundary | generic class decorator | DECORATOR-CLASS-0032, DECORATOR-CLASS-0156 | Pending |
| xts/boundary/decorator_class_expression_boundary.ets | boundary | class expression decorator | DECORATOR-CLASS-0151, DECORATOR-CLASS-0158 | Pending |
| compiler_expected_candidates/class_decorator_target_constructor_candidates.md | candidate | target / constructor | DECORATOR-CLASS-0019, DECORATOR-CLASS-0020, DECORATOR-CLASS-0021, DECORATOR-CLASS-0022, DECORATOR-CLASS-0025 | no expected output |
| compiler_expected_candidates/class_decorator_return_value_candidates.md | candidate | return value | DECORATOR-CLASS-0101, DECORATOR-CLASS-0103, DECORATOR-CLASS-0104, DECORATOR-CLASS-0105, DECORATOR-CLASS-0109 | no expected output |
| compiler_expected_candidates/class_decorator_export_lowering_candidates.md | candidate | export lowering | DECORATOR-CLASS-0123, DECORATOR-CLASS-0124, DECORATOR-CLASS-0136, DECORATOR-CLASS-0137 | no expected output |

## Coverage Mapping

| Coverage ID | Test Point | Generated File | Status |
|---|---|---|---|
| DECORATOR-CLASS-0001 | class decorator | xts/pass/decorator_class_basic_pass.ets | generated |
| DECORATOR-CLASS-0003 | class decorator factory | xts/pass/decorator_class_factory_pass.ets | generated |
| DECORATOR-CLASS-0010 | unresolved class decorator | xts/fail_compile/decorator_class_unresolved_fail_compile.ets | generated |
| DECORATOR-CLASS-0011 | non-callable class decorator | xts/fail_compile/decorator_class_non_callable_fail_compile.ets | generated |
| DECORATOR-CLASS-0019 | class decorator target | compiler_expected_candidates/class_decorator_target_constructor_candidates.md | candidate created |
| DECORATOR-CLASS-0054 | export class + decorator | xts/integration/decorator_class_export_integration.ets | generated |
| DECORATOR-CLASS-0103 | return original class | compiler_expected_candidates/class_decorator_return_value_candidates.md | candidate created |
| DECORATOR-CLASS-0123 | export binding lowering | compiler_expected_candidates/class_decorator_export_lowering_candidates.md | candidate created |

## Boundary / Need Review

| Item | Reason | Suggestion |
|---|---|---|
| class decorator target / constructor value | ArkTS behavior pending | follow-up compiler expected |
| class decorator return new class | support status pending | follow-up boundary/runtime smoke |
| default export class decorator | export/default syntax and lowering pending | follow-up multi-file integration |
| abstract class decorator | abstract + decorator support pending | follow-up boundary |
| generic class decorator | generic + decorator support pending | follow-up boundary |
| class expression decorator | class expression / anonymous class support pending | confirm unsupported/pass behavior |

## Next Stage Suggestion

Next stage:

`05_decorator_transform`

Reason:

- syntax / property / factory / method / class mainlines now have first batch coverage;
- decorator lowering, target/key/descriptor passing, and factory call lowering need compiler-chain coverage;
- PR 10632 real risk belongs to transform/binder/codegen;
- covering transform/lowering first makes the later sendable-specific bytecode regression safer.
