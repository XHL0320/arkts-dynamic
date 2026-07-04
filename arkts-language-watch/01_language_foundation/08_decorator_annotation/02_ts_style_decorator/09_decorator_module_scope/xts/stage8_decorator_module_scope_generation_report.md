# Stage 8 Decorator Module Scope Generation Report

## Summary

| Metric | Value |
|--------|-------|
| Stage | 8 (module scope) |
| Directory | `09_decorator_module_scope/` |
| Helper module .ets files created | 10 |
| Smoke .ets files created | 1 |
| Integration .ets files created | 10 |
| Boundary .ets files created | 5 |
| Compiler expected candidate .md files created | 5 |
| Stage 8 report | 1 (this file) |
| Total new files | 31 |
| Real bytecode .expected.txt | 0 (not generated per constraints) |
| Sendable-specific .ets files | 0 (all sendable goes to 07_decorator_with_sendable/) |
| PR 10632 original sendable .ets | 0 (sendable goes to 07_decorator_with_sendable/) |
| Coverage IDs covered | DECORATOR-MODULE-0001, 0002, 0003, 0005, 0013, 0019, 0049, 0059, 0075, 0076, 0077, 0078, 0083, 0100, 0105, 0106, 0108 |
| Coverage TD IDs covered | DECORATOR-MODULE-TD-0001, 0002, 0003, 0005, 0013, 0019, 0049, 0059, 0075, 0076, 0077, 0078, 0083, 0100, 0105, 0106, 0108 |

## Generated Files

### Helper Modules (xts/modules/)

| File | Type | Exports | Coverage IDs | Notes |
|------|------|---------|-------------|-------|
| `xts/modules/decorator_module_basic.ets` | helper module | classDec, classDecLog | DECORATOR-MODULE-0001 | Class decorator function |
| `xts/modules/decorator_module_property.ets` | helper module | propDec, propDecLog | DECORATOR-MODULE-0002 | Property decorator function |
| `xts/modules/decorator_module_method.ets` | helper module | methodDec, methodDecLog | DECORATOR-MODULE-0003 | Method decorator function (2-param) |
| `xts/modules/decorator_factory_module.ets` | helper module | classFactory, classFactoryLog | DECORATOR-MODULE-0019 | Class decorator factory |
| `xts/modules/decorator_factory_property_module.ets` | helper module | propFactory, propFactoryLog | DECORATOR-MODULE-0020 | Property decorator factory |
| `xts/modules/decorator_factory_method_module.ets` | helper module | methodFactory, methodFactoryLog | DECORATOR-MODULE-0021 | Method decorator factory (2-param) |
| `xts/modules/decorator_class_factory_module.ets` | helper module | classFactoryWithCapture, moduleVar, classFactoryCaptureLog | DECORATOR-MODULE-0059 | Factory with module variable capture |
| `xts/modules/decorator_export_class_module.ets` | helper module | DecoratedA | DECORATOR-MODULE-0075 | Exported decorated class (class decorator) |
| `xts/modules/decorator_export_property_class_module.ets` | helper module | DecoratedPropA | DECORATOR-MODULE-0076 | Exported decorated class (property decorator) |
| `xts/modules/decorator_export_method_class_module.ets` | helper module | DecoratedMethodA | DECORATOR-MODULE-0077 | Exported decorated class (method decorator) |

### Smoke (xts/smoke/)

| File | Type | Coverage IDs | Notes |
|------|------|-------------|-------|
| `xts/smoke/decorator_module_import_class_decorator_smoke.ets` | smoke | DECORATOR-MODULE-0001 | Import class decorator, apply to local class |

### Integration (xts/integration/)

| File | Type | Coverage IDs | Notes |
|------|------|-------------|-------|
| `xts/integration/decorator_module_0001_import_class_decorator_function_integration.ets` | integration | DECORATOR-MODULE-0001 | Import class decorator, multiple classes |
| `xts/integration/decorator_module_0002_import_property_decorator_function_integration.ets` | integration | DECORATOR-MODULE-0002 | Import property decorator, two properties |
| `xts/integration/decorator_module_0003_import_method_decorator_function_integration.ets` | integration | DECORATOR-MODULE-0003 | Import method decorator (2-param), two methods |
| `xts/integration/decorator_module_0013_imported_decorator_side_effect_integration.ets` | integration | DECORATOR-MODULE-0013 | Imported decorator side effect order |
| `xts/integration/decorator_module_0019_import_class_decorator_factory_integration.ets` | integration | DECORATOR-MODULE-0019 | Import class decorator factory, two classes |
| `xts/integration/decorator_module_0049_arrow_function_imported_binding_integration.ets` | integration | DECORATOR-MODULE-0049 | Arrow function captures imported binding; PR10632 ordinary contrast |
| `xts/integration/decorator_module_0059_imported_factory_captures_module_var_integration.ets` | integration | DECORATOR-MODULE-0059 | Imported factory captures definition module variable |
| `xts/integration/decorator_module_0075_export_class_class_decorator_integration.ets` | integration | DECORATOR-MODULE-0075 | Import decorated exported class |
| `xts/integration/decorator_module_0083_decorated_class_instance_member_accessible_integration.ets` | integration | DECORATOR-MODULE-0083 | Decorated class instance members accessible |
| `xts/integration/decorator_module_0100_multiple_modules_initialization_order_integration.ets` | integration | DECORATOR-MODULE-0100 | Multiple modules initialization order |

### Boundary (xts/boundary/)

| File | Type | Coverage IDs | Notes |
|------|------|-------------|-------|
| `xts/boundary/decorator_module_0005_default_import_decorator_boundary.ets` | boundary | DECORATOR-MODULE-0005 | Default import decorator, pending target support |
| `xts/boundary/decorator_module_0078_default_export_class_class_decorator_boundary.ets` | boundary | DECORATOR-MODULE-0078 | Default export + class decorator, pending |
| `xts/boundary/decorator_module_0105_circular_import_order_boundary.ets` | boundary | DECORATOR-MODULE-0105 | Circular import order, pending (self-contained fallback) |
| `xts/boundary/decorator_module_0106_imported_decorator_throw_boundary.ets` | boundary | DECORATOR-MODULE-0106 | Imported decorator throw, pending |
| `xts/boundary/decorator_module_0108_imported_binding_tdz_like_boundary.ets` | boundary | DECORATOR-MODULE-0108 | TDZ-like imported binding, pending |

### Compiler Expected Candidates (compiler_expected_candidates/)

| File | Coverage IDs | Notes |
|------|-------------|-------|
| `compiler_expected_candidates/decorator_module_imported_decorator_candidates.md` | DECORATOR-MODULE-0001/0002/0003 | Imported decorator function candidates |
| `compiler_expected_candidates/decorator_module_imported_factory_candidates.md` | DECORATOR-MODULE-0019/0020/0021 | Imported factory candidates |
| `compiler_expected_candidates/decorator_module_imported_binding_candidates.md` | DECORATOR-MODULE-0049/0050/0051 | Imported binding capture candidates |
| `compiler_expected_candidates/decorator_module_export_decorated_class_candidates.md` | DECORATOR-MODULE-0075/0076/0077 | Export decorated class candidates |
| `compiler_expected_candidates/decorator_module_initialization_order_candidates.md` | DECORATOR-MODULE-0100/0101/0102 | Module initialization order candidates |

## Coverage Mapping

| Coverage ID | Test Point | Generated File | Status |
|-------------|-----------|---------------|--------|
| DECORATOR-MODULE-0001 | import class decorator function | xts/smoke + xts/integration | smoke + integration created |
| DECORATOR-MODULE-0002 | import property decorator function | xts/integration | integration created |
| DECORATOR-MODULE-0003 | import method decorator function | xts/integration | integration created (2-param) |
| DECORATOR-MODULE-0005 | default import decorator | xts/boundary | boundary created, pending support |
| DECORATOR-MODULE-0013 | imported decorator side effect | xts/integration | integration created |
| DECORATOR-MODULE-0019 | import class decorator factory | xts/integration | integration created |
| DECORATOR-MODULE-0049 | arrow function captures imported binding | xts/integration | integration created; PR10632 ordinary contrast |
| DECORATOR-MODULE-0059 | imported factory captures module variable | xts/integration | integration created; PR10632 ordinary contrast |
| DECORATOR-MODULE-0075 | export class + class decorator | xts/integration | integration created |
| DECORATOR-MODULE-0076 | export class + property decorator | helper module | module created (used in 0083) |
| DECORATOR-MODULE-0077 | export class + method decorator | helper module | module created (used in 0083) |
| DECORATOR-MODULE-0078 | default export + class decorator | xts/boundary | boundary created, pending support |
| DECORATOR-MODULE-0083 | decorated class instance member accessible | xts/integration | integration created |
| DECORATOR-MODULE-0100 | multiple modules initialization order | xts/integration | integration created; fixed order pending |
| DECORATOR-MODULE-0105 | circular import order | xts/boundary | boundary created (self-contained fallback), pending |
| DECORATOR-MODULE-0106 | imported decorator throw | xts/boundary | boundary created, pending |
| DECORATOR-MODULE-0108 | imported binding TDZ-like | xts/boundary | boundary created, pending |

## Module Scope Risk Matrix

| Risk Point | Current Handling | Future Recommendation |
|------------|-----------------|----------------------|
| Multi-file import stability | helper modules + integration | Verify XTS multi-file support |
| Import resolution correctness | compiler candidate | Compiler expected verification |
| Imported binding capture (arrow/normal/IIFE) | integration + compiler candidate | Lowering bytecode verification |
| Export binding integrity after decorator | integration + compiler candidate | Compiler expected verification |
| Module initialization order | integration + compiler candidate | Lowering bytecode verification |
| Default export/import decorator | boundary | Pending target support |
| Circular import | boundary (self-contained fallback) | Pending multi-file XTS |
| Decorator throw | boundary | Pending runtime verification |
| TDZ-like imported binding | boundary | Pending runtime verification |
| Method descriptor (3-param) | deferred | Pending method decorator descriptor confirmation |

## Boundary / Need Review

| Item | Reason | Recommendation |
|------|--------|----------------|
| Default import decorator | ArkTS default export/import support pending | Verify default export/import support |
| Default export + class decorator | Default export binding may be broken by decorator | Compiler expected verification |
| Circular import order | Multi-file circular import may be unstable | Multi-file XTS stability verification |
| Imported decorator throw | Runtime behavior needs verification | Runtime/fail_runtime case |
| Imported binding TDZ-like | Module initialization timing needs verification | Runtime case |
| Method descriptor (3-param) | Descriptor/equivalent structure pending | Future method decorator compiler expected |

## PR 10632 Reference

| Item | Handling | Notes |
|------|----------|-------|
| DECORATOR-MODULE-0049 (arrow function imported binding) | PR10632 ordinary module-binding contrast | NOT full PR10632 regression; sendable goes to 07 |
| DECORATOR-MODULE-0059 (factory captures module variable) | PR10632 ordinary module-binding contrast | NOT full PR10632 regression |
| DECORATOR-MODULE-0108 (TDZ-like imported binding) | PR10632 ordinary module-binding contrast reference | Boundary only |
| DECORATOR-MODULE-TD-0093/0094/0095/0096 | Regression reference only | No sendable XTS generated here |

## Non-goals Check

| Non-goal | Status |
|----------|--------|
| Generate real bytecode .expected.txt | ✅ Not generated (0 files) |
| Modify ArkCompiler source | ✅ Not modified |
| Spread sendable variants outside 07_decorator_with_sendable | ✅ 0 sendable .ets files in 09_decorator_module_scope |
| Classify PR 10632 as class/method/syntax/module/order bug | ✅ Classified as transform/sendable/codegen; only ordinary contrast here |
| Generate ArkUI decorator | ✅ Not generated |
| Generate @interface annotation | ✅ Not generated |
| Generate "use sendable" | ✅ Not used |
| Generate .expected.txt | ✅ Not generated |
| Mark bytecode candidates as completed | ✅ All marked as "candidate created" |
| Write strong order assertions | ✅ Fixed order noted as "pending" |

## Next Stage Suggestion

Suggested next stage: `08_decorator_with_class_features`

Reason:

- syntax / property / factory / method / class / transform / sendable / order / module scope now have first-batch coverage;
- class features (accessor, static member, readonly, abstract, generic, visibility) are remaining core dimensions;
- these class features interact with decorators and need integration testing.

Alternatively, if compiler expected verification is available, the next priority should be:
- Running compiler expected verification on Stage 8 candidates
- Generating bytecode regression candidates for DECORATOR-MODULE-0058/0069-0072/0089/0110-0128
