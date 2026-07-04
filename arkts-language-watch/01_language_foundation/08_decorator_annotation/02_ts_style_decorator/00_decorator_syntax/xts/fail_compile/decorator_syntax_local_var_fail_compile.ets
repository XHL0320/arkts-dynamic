/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-SYNTAX-0031
 * Related Spec: local variable declarations are not supported decorator targets.
 * Expected: ArkTS parser/checker reports a compile-time error.
 */

// Expected error: decorator before local variable declaration is rejected.

function syntaxDecorator(target: Object): void {
  let observed: Object = target
  if (observed === null) {
    throw new Error("unreachable")
  }
}

function localVariableDecoratorTargetFail(): void {
  @syntaxDecorator
  let value: number = 1
}

localVariableDecoratorTargetFail()
