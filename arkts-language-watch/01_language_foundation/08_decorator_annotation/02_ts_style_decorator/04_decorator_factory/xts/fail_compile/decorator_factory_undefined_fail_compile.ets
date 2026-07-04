/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0010
 * Related Spec: decorator factory expression must resolve to a callable value.
 * Expected: ArkTS checker reports an unresolved factory compile-time error.
 */

// Expected error: missingFactory is not defined.

class DecoratorFactoryUndefinedFailCompile {
  @missingFactory()
  public value: number = 1
}
