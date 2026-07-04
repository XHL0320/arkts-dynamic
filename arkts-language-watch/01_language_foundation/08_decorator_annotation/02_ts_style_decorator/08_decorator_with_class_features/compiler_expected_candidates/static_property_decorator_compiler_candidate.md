# Compiler Expected Candidate — Static Property + Property Decorator

## Coverage IDs
- DECORATOR-CLASS-FEATURE-0001
- DECORATOR-CLASS-FEATURE-TD-0001

## Source File
`xts/pass/decorator_class_feature_static_property_pass.ets`

## Expected Compiler Behavior

### Compilation
- Should compile successfully
- Class `A` with `@propDec` on static property `version` is valid TS-style decorator usage
- Property decorator receives `(target, key)` — 2-param form

### Potential Compiler Issues
- If ArkTS does not support property decorator on static members → compile error
- If property decorator 3-param form `(target, key, descriptor)` is required → need adjustment

### Bytecode Candidate Notes
- Static property initializer should evaluate to `1`
- Decorator application should not alter property value
- No `.expected.txt` generated — bytecode candidate only

## Status
- compiler: candidate
- bytecode: candidate (not marked as completed)
