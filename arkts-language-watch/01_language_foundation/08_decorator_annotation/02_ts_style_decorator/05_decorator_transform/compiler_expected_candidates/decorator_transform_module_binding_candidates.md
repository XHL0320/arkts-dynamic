# Decorator Transform Module Binding Candidates

This file records compiler expected candidates only. It does not include generated expected output.

## Related Coverage IDs

- DECORATOR-TRANSFORM-0010
- DECORATOR-TRANSFORM-0051
- DECORATOR-TRANSFORM-0067
- DECORATOR-TRANSFORM-0083

## Candidate 1: imported decorator

Test points:

- decorator function imported from another module
- imported binding remains correct after lowering
- imported binding should not be rebound to a local binding

## Candidate 2: imported factory

Test points:

- factory imported from another module
- factory call lowering
- returned decorator function call
- module initialization order remains pending

## Candidate 3: factory argument imported binding

Test points:

- factory argument references imported binding
- argument function captures imported binding
- IIFE captures imported binding
- PR 10632-like moduleVar reference, without the original sendable scenario
