# Decorator Transform Factory Lowering Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-TRANSFORM-0043
- DECORATOR-TRANSFORM-0044
- DECORATOR-TRANSFORM-0045
- DECORATOR-TRANSFORM-0046
- DECORATOR-TRANSFORM-0048
- DECORATOR-TRANSFORM-0050
- DECORATOR-TRANSFORM-0051
- DECORATOR-TRANSFORM-0052
- DECORATOR-TRANSFORM-0053
- DECORATOR-TRANSFORM-0075
- DECORATOR-TRANSFORM-0076

## Candidate 1: factory call once

Test points:

- factory call executes once
- returned decorator function executes once
- no duplicate lowering

## Candidate 2: factory argument expression

Test points:

- literal argument
- function argument
- IIFE argument
- imported binding argument
- argument evaluation order is preserved

## Candidate 3: invalid factory return

Test points:

- factory returns non-function
- checker/runtime behavior remains pending
- transform should not generate an invalid context
