/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-SYNTAX-0037
 * Related Spec: type alias declarations are not supported decorator targets.
 * Expected: ArkTS parser/checker reports a compile-time error.
 */

// Expected error: decorator before type alias declaration is rejected.

function syntaxDecorator(target: Object): void {
  let observed: Object = target
  if (observed === null) {
    throw new Error("unreachable")
  }
}

@syntaxDecorator
type DecoratorSyntaxTypeAliasFail = number
