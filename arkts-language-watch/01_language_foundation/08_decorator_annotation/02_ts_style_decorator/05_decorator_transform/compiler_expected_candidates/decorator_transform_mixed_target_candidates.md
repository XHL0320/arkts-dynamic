# Decorator Transform Mixed Target Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-TRANSFORM-0016
- DECORATOR-TRANSFORM-0017
- DECORATOR-TRANSFORM-0021
- DECORATOR-TRANSFORM-0022
- DECORATOR-TRANSFORM-0033
- DECORATOR-TRANSFORM-0077
- DECORATOR-TRANSFORM-0078
- DECORATOR-TRANSFORM-0082
- DECORATOR-TRANSFORM-0101
- DECORATOR-TRANSFORM-0102

## Candidate 1: class + property + method decorators

Test points:

- class decorator
- property decorator
- method decorator
- mixed lowering
- no duplicate call
- no missing call

## Candidate 2: static + instance decorators

Test points:

- static property
- instance property
- static method
- instance method
- target distinction is correct

## Candidate 3: multiple decorators same target

Test points:

- multiple decorators on the same target
- each decorator call happens once
- order is not asserted in this candidate
