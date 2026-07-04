/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-SYNTAX-0097
 * Related Spec: decorator must be followed by a supported declaration.
 * Expected: ArkTS parser/checker reports a compile-time error.
 */

// Expected error: decorator without a following declaration is rejected.

function syntaxDecorator(target: Object): void {
  let observed: Object = target
  if (observed === null) {
    throw new Error("unreachable")
  }
}

@syntaxDecorator
