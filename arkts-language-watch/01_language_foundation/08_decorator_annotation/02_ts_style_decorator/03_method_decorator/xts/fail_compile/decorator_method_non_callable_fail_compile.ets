/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0012
 * Related Spec: method decorator expression must be callable.
 * Expected: ArkTS checker reports non-callable decorator expression.
 */

// Expected error: methodDecoratorValue is a number and cannot be used as a decorator.

let methodDecoratorValue: number = 1

class MethodDecoratorNonCallableFailCompile {
  @methodDecoratorValue
  public value(): number {
    return 1
  }
}
