# Decorator Transform Method Lowering Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-TRANSFORM-0021
- DECORATOR-TRANSFORM-0022
- DECORATOR-TRANSFORM-0023
- DECORATOR-TRANSFORM-0024
- DECORATOR-TRANSFORM-0025
- DECORATOR-TRANSFORM-0026
- DECORATOR-TRANSFORM-0032

## Candidate 1: instance method decorator lowering

Test points:

- instance method decorator
- target/key/descriptor or ArkTS equivalent structure
- method body should not be executed by decorator application
- method call remains correct

## Candidate 2: static method decorator lowering

Test points:

- static method decorator
- static target should not use prototype
- method key should not be lost
- descriptor/equivalent structure remains pending

## Candidate 3: method decorator factory lowering

Test points:

- factory call lowering
- returned decorator function call
- method descriptor/equivalent structure remains correct
