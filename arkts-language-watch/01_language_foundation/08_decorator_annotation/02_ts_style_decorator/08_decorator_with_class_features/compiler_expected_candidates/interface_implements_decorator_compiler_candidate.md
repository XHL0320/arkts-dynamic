# Compiler Expected Candidate â€?Interface Implements + Class Decorator

## Coverage IDs
- DECORATOR-CLASS-FEATURE-0131
- DECORATOR-CLASS-FEATURE-TD-0131

## Source Files
- `xts/smoke/decorator_class_feature_implements_smoke.ets`
- `xts/fail_compile/decorator_class_feature_implements_missing_method_fail_compile.ets`

## Expected Compiler Behavior

### Smoke Compilation
- `@classDec class A implements I` should compile
- Interface contract should be satisfied after decorator
- Interface/implements stability pending â€?may need boundary fallback

### Fail Compile Compilation
- `@classDec class A implements I` without `value()` method â†?error: does not implement interface
- Single expected error point only

### Potential Compiler Issues
- If interface/implements + decorator combination is unstable â†?downgrade smoke to boundary
- If decorator alters class prototype and breaks interface check â†?semantic bug
- If `implements` keyword is not fully supported with decorators â†?compile error

### Bytecode Candidate Notes
- Decorated class should satisfy interface contract at runtime
- Missing method should cause runtime error if compiler doesn't catch it

## Status
- compiler: candidate
- bytecode: candidate (not marked as completed)
