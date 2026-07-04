/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0011
 * Related Spec: method decorator expression must resolve to a callable value.
 * Expected: ArkTS checker reports unresolved decorator name.
 */

// Expected error: unknownMethodDecorator is not defined.

class MethodDecoratorUnresolvedFailCompile {
  @unknownMethodDecorator
  public value(): number {
    return 1
  }
}
