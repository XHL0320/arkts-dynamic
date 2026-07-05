# Stage 9 ‚Ä?Decorator with Class Features ‚Ä?Generation Report

## Stage Overview
Stage 9 covers TS-style decorator interaction with class features: static members, readonly, constructor, field initializer, override, implements, inheritance, visibility (private), abstract class, accessor, overload, nested class, class expression, and generics.

## Files Generated

### Pass (5 files)
| File | Coverage IDs | Test Points |
|------|-------------|-------------|
| `decorator_class_feature_static_property_pass.ets` | DECORATOR-CLASS-FEATURE-0001, TD-0001 | static property + property decorator |
| `decorator_class_feature_static_method_pass.ets` | DECORATOR-CLASS-FEATURE-0002, TD-0002 | static method + method decorator |
| `decorator_class_feature_readonly_property_pass.ets` | DECORATOR-CLASS-FEATURE-0019, TD-0019 | readonly property + property decorator |
| `decorator_class_feature_constructor_pass.ets` | DECORATOR-CLASS-FEATURE-0054, TD-0054 | decorated class constructor with argument |
| `decorator_class_feature_field_initializer_pass.ets` | DECORATOR-CLASS-FEATURE-0020/0027, TD-0020/0027 | field initializer + property decorator (ordinary contrast) |

### Smoke (2 files)
| File | Coverage IDs | Test Points |
|------|-------------|-------------|
| `decorator_class_feature_override_method_smoke.ets` | DECORATOR-CLASS-FEATURE-0087, TD-0087 | override method + method decorator |
| `decorator_class_feature_implements_smoke.ets` | DECORATOR-CLASS-FEATURE-0131, TD-0131 | decorated class implements interface |

### Integration (2 files)
| File | Coverage IDs | Test Points |
|------|-------------|-------------|
| `decorator_class_feature_inherited_property_integration.ets` | DECORATOR-CLASS-FEATURE-0074, TD-0074 | decorated base property inherited by derived |
| `decorator_class_feature_inherited_method_integration.ets` | DECORATOR-CLASS-FEATURE-0076, TD-0076 | decorated base method inherited by derived |

### Fail Compile (6 files)
| File | Coverage IDs | Expected Error |
|------|-------------|---------------|
| `decorator_class_feature_readonly_assignment_fail_compile.ets` | DECORATOR-CLASS-FEATURE-0019, TD-0019 | Cannot assign to readonly property |
| `decorator_class_feature_override_parameter_mismatch_fail_compile.ets` | DECORATOR-CLASS-FEATURE-0087, TD-0087 | Override parameter type mismatch |
| `decorator_class_feature_override_return_mismatch_fail_compile.ets` | DECORATOR-CLASS-FEATURE-0087, TD-0087 | Override return type mismatch |
| `decorator_class_feature_implements_missing_method_fail_compile.ets` | DECORATOR-CLASS-FEATURE-0131, TD-0131 | Class does not implement interface method |
| `decorator_class_feature_field_type_mismatch_fail_compile.ets` | DECORATOR-CLASS-FEATURE-0027, TD-0027 | String not assignable to number |
| `decorator_class_feature_method_return_mismatch_fail_compile.ets` | DECORATOR-CLASS-FEATURE-0076, TD-0076 | String not assignable to return type number |

### Boundary (6 files)
| File | Coverage IDs | Uncertainty |
|------|-------------|-------------|
| `decorator_class_feature_abstract_class_boundary.ets` | DECORATOR-CLASS-FEATURE-0064, TD-0064 | abstract class decorator support unclear |
| `decorator_class_feature_accessor_boundary.ets` | DECORATOR-CLASS-FEATURE-0029, TD-0029 | accessor decorator not confirmed |
| `decorator_class_feature_overload_method_boundary.ets` | DECORATOR-CLASS-FEATURE-0088, TD-0088 | overload + decorator not confirmed |
| `decorator_class_feature_nested_class_boundary.ets` | DECORATOR-CLASS-FEATURE-0135, TD-0135 | nested class decorator not confirmed |
| `decorator_class_feature_class_expression_boundary.ets` | DECORATOR-CLASS-FEATURE-0134, TD-0134 | class expression decorator not confirmed |
| `decorator_class_feature_private_member_boundary.ets` | DECORATOR-CLASS-FEATURE-0063, TD-0063 | private + decorator not confirmed |

### Compiler Expected Candidates (5 files)
| File | Coverage IDs |
|------|-------------|
| `static_property_decorator_compiler_candidate.md` | 0001 |
| `readonly_visibility_decorator_compiler_candidate.md` | 0019 |
| `inheritance_override_decorator_compiler_candidate.md` | 0087/0074/0076 |
| `generic_class_decorator_compiler_candidate.md` | 0066 (pending, no .ets yet) |
| `interface_implements_decorator_compiler_candidate.md` | 0131 |

## Statistics
- Total .ets files: 21 (5 pass + 2 smoke + 2 integration + 6 fail_compile + 6 boundary)
- Total candidate md files: 5
- Total coverage IDs touched: ~16 (DECORATOR-CLASS-FEATURE) + ~16 (TD) + speculative IDs for boundary
- No regression files generated in this stage
- No sendable variants (per constraint)
- No PR10632 original sendable scenarios
- No real bytecode expected output generated
- No `.expected.txt` files

## Design Decisions
1. **Method/property decorator form**: Uses 2-param `(target, key)` form. Descriptor/equivalent structure is pending ‚Ä?3-param support not confirmed.
2. **Override stability**: override syntax is pending ‚Ä?smoke files include fallback note. If unstable, downgrade to boundary.
3. **Implements stability**: interface/implements + decorator is pending ‚Ä?smoke includes fallback note.
4. **Generic class**: Not generated as .ets ‚Ä?only tracked in compiler candidate as pending.
5. **Abstract/accessor/overload/nested/expression/private**: All placed in boundary with no strong assertions.
6. **Field initializer**: Ordinary class feature contrast ‚Ä?not PR10632 regression.
7. **Fail_compile**: Each file contains exactly one primary expected error point.

## Coverage Matrix Updates
The following coverage IDs will be updated from "Âê? to "created":
- DECORATOR-CLASS-FEATURE-0001, 0002, 0019, 0020, 0027, 0029, 0054, 0063, 0064, 0066, 0074, 0076, 0087, 0088, 0131, 0134, 0135
- Corresponding TD IDs: TD-0001 through TD-0135

## Pending Items
- Override syntax stability confirmation ‚Ü?may downgrade smoke to boundary
- Implements + decorator stability confirmation ‚Ü?may downgrade smoke to boundary
- Method decorator descriptor/equivalent structure confirmation ‚Ü?may adjust to 3-param
- Generic class + decorator support confirmation ‚Ü?may create smoke
- Readonly + decorator support confirmation ‚Ü?may downgrade pass to boundary
- Private member + decorator support confirmation ‚Ü?may downgrade boundary to fail_compile

## Stage 11 Validation Note

Representative positive coverage from this stage was migrated into consolidated DevEco ohosTest Hypium suites and validated with official hvigor build plus `aa test` class-filter execution. Boundary/candidate items were not executed. `fail_compile` files were validated separately through a temporary imported probe and official hvigor compile failure checks.
