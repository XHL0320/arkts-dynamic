# Class Decorator Return Value Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-CLASS-0101
- DECORATOR-CLASS-0103
- DECORATOR-CLASS-0104
- DECORATOR-CLASS-0105
- DECORATOR-CLASS-0109

## Candidate 1: return void

Test points:

- class decorator returns void
- class binding keeps original class
- instance member remains accessible

## Candidate 2: return original class

Test points:

- class decorator returns original class
- class binding remains stable
- constructor remains stable

## Candidate 3: return new class boundary

Test points:

- whether class decorator can return a new class
- whether static members are retained
- whether instance members are retained
- `instanceof` behavior is pending
- ArkTS checker/runtime behavior is pending

## Candidate 4: return non-class value boundary

Test points:

- return object / number / string / null / undefined
- whether checker or runtime reports the invalid value is pending
