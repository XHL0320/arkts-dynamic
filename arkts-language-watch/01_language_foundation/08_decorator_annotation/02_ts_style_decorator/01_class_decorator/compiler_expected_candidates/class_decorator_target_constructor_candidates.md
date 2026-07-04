# Class Decorator Target / Constructor Compiler Expected Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-CLASS-0019
- DECORATOR-CLASS-0020
- DECORATOR-CLASS-0021
- DECORATOR-CLASS-0022
- DECORATOR-CLASS-0025

## Candidate 1: class decorator target

Test points:

- class decorator
- target should be class constructor / class value or ArkTS equivalent structure
- target should not be class instance
- target should not be prototype

Suggested follow-up file:

`compiler_expected/decorator_class_target_constructor.ts`

## Candidate 2: class decorator target with static members

Test points:

- class decorator + static field
- class decorator + static method
- target should be associated with static members
- static members should not be lost

Suggested follow-up file:

`compiler_expected/decorator_class_target_static.ts`

## Candidate 3: multiple class decorators target

Test points:

- same class multiple decorators
- multiple class decorators should receive the same target
- target should not be mismatched to another class
