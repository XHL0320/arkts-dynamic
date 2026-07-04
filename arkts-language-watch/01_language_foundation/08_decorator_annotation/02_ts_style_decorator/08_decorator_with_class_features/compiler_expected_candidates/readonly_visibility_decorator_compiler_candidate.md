# Compiler Expected Candidate — Readonly Property + Property Decorator

## Coverage IDs
- DECORATOR-CLASS-FEATURE-0019
- DECORATOR-CLASS-FEATURE-TD-0019

## Source Files
- `xts/pass/decorator_class_feature_readonly_property_pass.ets`
- `xts/fail_compile/decorator_class_feature_readonly_assignment_fail.ets`

## Expected Compiler Behavior

### Pass File Compilation
- Should compile successfully
- `@propDec` on `readonly value: number = 3` is valid
- Readonly constraint should persist after decorator application

### Fail Compile File Compilation
- Should fail with: `Cannot assign to readonly property`
- Single expected error point only

### Potential Compiler Issues
- If readonly + decorator combination is not supported → downgrade pass to boundary
- If decorator removes readonly constraint → semantic bug, boundary candidate

### Bytecode Candidate Notes
- Readonly property initializer should evaluate to `3`
- Assignment to readonly should be blocked at runtime if compiler doesn't catch it

## Status
- compiler: candidate
- bytecode: candidate (not marked as completed)
