# Compiler Expected Candidate — Generic Class + Class Decorator

## Coverage IDs
- DECORATOR-CLASS-FEATURE-0066
- DECORATOR-CLASS-FEATURE-TD-0066

## Source File
None — generic class + decorator is not generated as a separate .ets file in this stage.
Coverage is tracked as boundary/pending only.

## Expected Compiler Behavior

### Potential Compilation
- Generic class `<T>` with `@classDec` may or may not be supported
- If supported → should compile and allow `new A<number>(1)`
- If not supported → compile error on decorator + generic combination

### Semantic Uncertainty
- ArkTS generic class decorator support range is not confirmed
- No smoke created — only boundary candidate tracking
- If confirmed supported in future, create smoke .ets

### Bytecode Candidate Notes
- No bytecode candidate generated for this coverage ID yet
- Generic instantiation behavior with decorator is speculative

## Status
- compiler: candidate (pending confirmation)
- bytecode: not generated (pending)
