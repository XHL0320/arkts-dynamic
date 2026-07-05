# Stage 3 Method Decorator Generation Report

## Summary

| Metric | Count |
|---|---:|
| Added pass cases | 8 |
| Added fail_compile cases | 6 |
| Added boundary cases | 3 |
| Added integration cases | 1 |
| Added compiler expected candidate files | 2 |
| Covered coverage IDs | 43 |
| PR 10632 references | 0 |
| sendable-specific cases | 0 |

## Generated Files

| File | Type | Coverage Point | Related Coverage ID | Notes |
|---|---|---|---|---|
| xts/pass/decorator_method_instance_pass.ets | pass | instance method decorator | DECORATOR-METHOD-0001, DECORATOR-METHOD-0003 | identifier form |
| xts/pass/decorator_method_static_pass.ets | pass | static method decorator | DECORATOR-METHOD-0002, DECORATOR-METHOD-0059, DECORATOR-METHOD-0067 | class static call |
| xts/pass/decorator_method_factory_pass.ets | pass | method decorator factory | DECORATOR-METHOD-0004, DECORATOR-METHOD-0087 | Related: 04_decorator_factory |
| xts/pass/decorator_method_argument_literal_pass.ets | pass | literal factory args | DECORATOR-METHOD-0008, DECORATOR-METHOD-0078, DECORATOR-METHOD-0079, DECORATOR-METHOD-0080 | string/number/boolean |
| xts/pass/decorator_method_argument_function_pass.ets | pass | arrow function factory arg | DECORATOR-METHOD-0010, DECORATOR-METHOD-0082 | ordinary class only |
| xts/pass/decorator_method_multiple_decorators_pass.ets | pass | multiple decorators same method | DECORATOR-METHOD-0035, DECORATOR-METHOD-0092 | order not asserted |
| xts/pass/decorator_method_multiple_methods_pass.ets | pass | multiple decorated methods | DECORATOR-METHOD-0034, DECORATOR-METHOD-0033 | key isolation smoke |
| xts/pass/decorator_method_inheritance_smoke_pass.ets | pass | inherited decorated method | DECORATOR-METHOD-0069 | inheritance smoke |
| xts/fail_compile/decorator_method_parameter_mismatch_fail_compile.ets | fail_compile | parameter mismatch | DECORATOR-METHOD-0056 | checker negative |
| xts/fail_compile/decorator_method_return_mismatch_fail_compile.ets | fail_compile | return mismatch | DECORATOR-METHOD-0057 | checker negative |
| xts/fail_compile/decorator_method_unresolved_fail_compile.ets | fail_compile | unresolved decorator | DECORATOR-METHOD-0011 | checker negative |
| xts/fail_compile/decorator_method_non_callable_fail_compile.ets | fail_compile | non-callable decorator | DECORATOR-METHOD-0012 | checker negative |
| xts/fail_compile/decorator_method_override_parameter_mismatch_fail_compile.ets | fail_compile | override parameter mismatch | DECORATOR-METHOD-0064 | override checker |
| xts/fail_compile/decorator_method_override_return_mismatch_fail_compile.ets | fail_compile | override return mismatch | DECORATOR-METHOD-0065 | override checker |
| xts/boundary/decorator_method_descriptor_boundary.ets | boundary | descriptor/equivalent structure | DECORATOR-METHOD-0025, DECORATOR-METHOD-0027, DECORATOR-METHOD-0028, DECORATOR-METHOD-0038 | no descriptor internals asserted |
| xts/boundary/decorator_method_overload_boundary.ets | boundary | overloaded method decorator | DECORATOR-METHOD-0116 | pending |
| xts/boundary/decorator_method_accessor_boundary.ets | boundary | getter/setter/accessor decorator | DECORATOR-METHOD-0117, DECORATOR-METHOD-0118, DECORATOR-METHOD-0119 | pending |
| xts/integration/decorator_method_override_smoke_integration.ets | integration | override and super smoke | DECORATOR-METHOD-0063, DECORATOR-METHOD-0070, DECORATOR-METHOD-0071 | no lowering assertion |
| compiler_expected_candidates/method_decorator_target_key_descriptor_candidates.md | candidate | target/key/descriptor | DECORATOR-METHOD-0019, DECORATOR-METHOD-0020, DECORATOR-METHOD-0021, DECORATOR-METHOD-0025 | no expected output |
| compiler_expected_candidates/method_decorator_lowering_candidates.md | candidate | lowering | DECORATOR-METHOD-0095, DECORATOR-METHOD-0096, DECORATOR-METHOD-0097, DECORATOR-METHOD-0099, DECORATOR-METHOD-0100 | no expected output |

## Coverage Mapping

| Coverage ID | Test Point | Generated File | Status |
|---|---|---|---|
| DECORATOR-METHOD-0001 | instance method decorator | xts/pass/decorator_method_instance_pass.ets | generated |
| DECORATOR-METHOD-0002 | static method decorator | xts/pass/decorator_method_static_pass.ets | generated |
| DECORATOR-METHOD-0004 | factory call | xts/pass/decorator_method_factory_pass.ets | generated |
| DECORATOR-METHOD-0056 | parameter type mismatch | xts/fail_compile/decorator_method_parameter_mismatch_fail_compile.ets | generated |
| DECORATOR-METHOD-0057 | return type mismatch | xts/fail_compile/decorator_method_return_mismatch_fail_compile.ets | generated |
| DECORATOR-METHOD-0019 | instance target | compiler_expected_candidates/method_decorator_target_key_descriptor_candidates.md | candidate created |
| DECORATOR-METHOD-0020 | static target | compiler_expected_candidates/method_decorator_target_key_descriptor_candidates.md | candidate created |
| DECORATOR-METHOD-0025 | descriptor existence | compiler_expected_candidates/method_decorator_target_key_descriptor_candidates.md | candidate created |
| DECORATOR-METHOD-0095 | method decorator lowering | compiler_expected_candidates/method_decorator_lowering_candidates.md | candidate created |

## Boundary / Need Review

| Item | Reason | Suggestion |
|---|---|---|
| method decorator descriptor/equivalent structure | ArkTS behavior pending | follow-up compiler expected |
| overload method decorator | overload signature/implementation placement pending | follow-up boundary |
| accessor decorator | support status pending | confirm unsupported/pass behavior |
| override + decorator | override rules need alignment with current ArkTS syntax | follow-up fail_compile/pass pair |

## Next Stage Suggestion

Next stage:

`01_class_decorator`

Reason:

- property / factory / method mainlines now have first batch coverage;
- class decorator is the remaining core target;
- class target, export/default, and return value boundary should be covered before transform/lowering and PR10632 bytecode regression work.

## Stage 11 Validation Note

Representative positive coverage from this stage was migrated into consolidated DevEco ohosTest Hypium suites and validated with official hvigor build plus `aa test` class-filter execution. Boundary/candidate items were not executed. `fail_compile` files were validated separately through a temporary imported probe and official hvigor compile failure checks.
