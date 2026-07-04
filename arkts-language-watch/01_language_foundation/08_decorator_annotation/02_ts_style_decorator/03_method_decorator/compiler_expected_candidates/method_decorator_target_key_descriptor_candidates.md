# Method Decorator Target/Key/Descriptor Compiler Expected Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Candidate 1: instance method target/key/descriptor

Test points:

- instance method decorator
- target should be prototype or ArkTS equivalent structure
- key should be method name
- descriptor or ArkTS equivalent structure needs confirmation

Suggested follow-up file:

`compiler_expected/decorator_method_instance_target_key_descriptor.ts`

## Candidate 2: static method target/key/descriptor

Test points:

- static method decorator
- target should be class constructor or ArkTS equivalent structure
- key should be method name
- descriptor or ArkTS equivalent structure needs confirmation

Suggested follow-up file:

`compiler_expected/decorator_method_static_target_key_descriptor.ts`

## Candidate 3: descriptor mutation boundary

Test points:

- whether method decorator can mutate descriptor
- whether descriptor mutation affects method invocation
- whether ArkTS supports TypeScript legacy descriptor behavior

Suggested follow-up file:

`compiler_expected/decorator_method_descriptor_mutation_boundary.ts`
