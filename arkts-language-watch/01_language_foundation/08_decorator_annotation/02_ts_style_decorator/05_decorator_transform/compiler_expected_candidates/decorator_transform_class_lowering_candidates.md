# Decorator Transform Class Lowering Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-TRANSFORM-0033
- DECORATOR-TRANSFORM-0034
- DECORATOR-TRANSFORM-0035
- DECORATOR-TRANSFORM-0036
- DECORATOR-TRANSFORM-0037
- DECORATOR-TRANSFORM-0041
- DECORATOR-TRANSFORM-0079

## Candidate 1: class decorator lowering

Test points:

- class decorator
- target is class constructor / class value or ArkTS equivalent structure
- class binding should not be lost
- constructor should not be executed automatically by decorator application

## Candidate 2: class decorator factory lowering

Test points:

- factory call lowering
- class decorator function call
- class target correctness
- class static/instance members remain usable

## Candidate 3: class decorator return value boundary

Test points:

- return void
- return original class
- return new class boundary
- return non-class value boundary
