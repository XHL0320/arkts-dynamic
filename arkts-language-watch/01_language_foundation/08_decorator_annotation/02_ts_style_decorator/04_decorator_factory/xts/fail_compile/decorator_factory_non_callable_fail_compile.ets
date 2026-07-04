/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0011
 * Related Spec: decorator factory expression must be callable.
 * Expected: ArkTS checker reports that a non-callable value cannot be called as a factory.
 */

// Expected error: notFactory is a number and cannot be called as a decorator factory.

let notFactory: number = 1

class DecoratorFactoryNonCallableFailCompile {
  @notFactory()
  public value: number = 1
}
