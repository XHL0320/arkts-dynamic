# Compiler Expected Candidate — Inheritance Override + Method Decorator

## Coverage IDs
- DECORATOR-CLASS-FEATURE-0087
- DECORATOR-CLASS-FEATURE-TD-0087
- DECORATOR-CLASS-FEATURE-0074/0076
- DECORATOR-CLASS-FEATURE-TD-0074/0076

## Source Files
- `xts/smoke/decorator_class_feature_override_method_smoke.ets`
- `xts/integration/decorator_class_feature_inherited_property_integration.ets`
- `xts/integration/decorator_class_feature_inherited_method_integration.ets`
- `xts/fail_compile/decorator_class_feature_override_parameter_mismatch_fail.ets`
- `xts/fail_compile/decorator_class_feature_override_return_mismatch_fail.ets`

## Expected Compiler Behavior

### Smoke & Integration
- Override method with `@methodDec` should compile
- Inherited decorated property/method should be accessible in derived class
- Override syntax stability pending — may need boundary fallback

### Fail Compile
- `override value(x: string)` with base `value(x: number)` → parameter type mismatch error
- `override value(): string` with base `value(): number` → return type mismatch error
- Each fail_compile file has single expected error point

### Potential Compiler Issues
- If override syntax is not stable in current ArkTS → downgrade smoke to boundary
- If method decorator on override method is not supported → compile error
- If inherited decorated method resolution is incorrect → semantic bug

### Bytecode Candidate Notes
- Override method should dispatch to derived implementation
- Inherited decorated method should call base implementation correctly

## Status
- compiler: candidate
- bytecode: candidate (not marked as completed)
