# Class Decorator Export Lowering Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-CLASS-0123
- DECORATOR-CLASS-0124
- DECORATOR-CLASS-0136
- DECORATOR-CLASS-0137

## Candidate 1: export class + class decorator

Test points:

- export class + class decorator
- export binding is correct after lowering
- imported decorated class remains usable

Suggested follow-up file:

`compiler_expected/decorator_class_export_lowering.ts`

## Candidate 2: default export class + class decorator

Test points:

- default export class + class decorator
- default export binding is correct
- anonymous default export class boundary

Suggested follow-up file:

`compiler_expected/decorator_class_default_export_lowering.ts`

## Candidate 3: class decorator factory + export

Test points:

- factory call lowering
- export binding should not be broken
- class decorator argument expression scope is correct
