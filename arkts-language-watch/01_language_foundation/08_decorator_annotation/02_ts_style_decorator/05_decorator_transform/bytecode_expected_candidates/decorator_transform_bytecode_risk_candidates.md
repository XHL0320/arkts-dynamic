# Decorator Transform Bytecode Risk Candidates

## Scope

This file records bytecode expected candidates only. It does not generate real expected output.

Stage 5 does not generate real bytecode expected files. The original PR 10632 sendable case remains owned by Stage 6 under `07_decorator_with_sendable/`.

## Related Coverage IDs

- DECORATOR-TRANSFORM-0058
- DECORATOR-TRANSFORM-0059
- DECORATOR-TRANSFORM-0060
- DECORATOR-TRANSFORM-0061
- DECORATOR-TRANSFORM-0069
- DECORATOR-TRANSFORM-0070
- DECORATOR-TRANSFORM-0071
- DECORATOR-TRANSFORM-0077
- DECORATOR-TRANSFORM-0078
- DECORATOR-TRANSFORM-0080
- DECORATOR-TRANSFORM-0083
- DECORATOR-TRANSFORM-0085

## Candidate 1: property decorator lowering bytecode

Test points:

- codegen uses the correct context after property decorator lowering
- target/key are correct
- decorator call is not duplicated
- decorator call is not omitted

## Candidate 2: factory argument function bytecode

Test points:

- decorator factory argument is an arrow function
- argument function should not inherit the wrong context
- ordinary decorator scenario should not carry sendable-specific flags

## Candidate 3: binder context pollution non-sendable variant

Test points:

- ordinary decorator argument function
- class-external decorator call after transform
- binder context should match the lowered position
- non-sendable scenario should not retain sendable flags

## Candidate 4: PR 10632 bridge candidate

Test points:

- property decorator
- factory argument IIFE
- imported binding
- transform/lowering
- bridge candidate for Stage 6 only
- do not generate the original sendable case in Stage 5
