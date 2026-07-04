# Method Decorator Lowering Compiler Expected Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Candidate 1: method decorator lowering

Test points:

- method decorator lowering
- whether decorator call is moved outside the class
- target/key/descriptor are passed correctly
- duplicate decorator calls are not generated

## Candidate 2: method decorator factory lowering

Test points:

- factory call lowering
- factory argument expression evaluation
- returned decorator function call
- method descriptor or ArkTS equivalent structure remains correct

## Candidate 3: static method lowering

Test points:

- static method decorator lowering
- static target should not use prototype
- static method key should not be lost
