# Decorator Transform Property Lowering Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-TRANSFORM-0001
- DECORATOR-TRANSFORM-0002
- DECORATOR-TRANSFORM-0003
- DECORATOR-TRANSFORM-0004
- DECORATOR-TRANSFORM-0005
- DECORATOR-TRANSFORM-0017
- DECORATOR-TRANSFORM-0071
- DECORATOR-TRANSFORM-0072
- DECORATOR-TRANSFORM-0073
- DECORATOR-TRANSFORM-0074

## Candidate 1: instance property decorator lowering

Test points:

- instance property decorator
- whether decorator call is lowered outside the class or to an ArkTS equivalent position
- target/key correctness
- no duplicate decorator call
- no missing decorator call

Suggested follow-up file:

`compiler_expected/decorator_transform_property_instance_lowering.ts`

## Candidate 2: static property decorator lowering

Test points:

- static property decorator
- static target should not use prototype
- key should not be lost
- static member should not be lost

Suggested follow-up file:

`compiler_expected/decorator_transform_property_static_lowering.ts`

## Candidate 3: property decorator factory lowering

Test points:

- factory call
- returned decorator function call
- factory argument expression
- target/key passing
