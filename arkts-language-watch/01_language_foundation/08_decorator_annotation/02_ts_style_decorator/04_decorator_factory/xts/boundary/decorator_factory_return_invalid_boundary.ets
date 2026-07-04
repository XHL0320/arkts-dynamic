/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-FACTORY-0012, DECORATOR-FACTORY-0107
 * Related Spec: factory return value must be validated when it is not a decorator function.
 * Expected: ArkTS should reject this at checker time or fail before decorator application at runtime.
 */

// Boundary: actual diagnostic phase is pending.

function invalidReturnFactory(): number {
  return 1
}

class DecoratorFactoryReturnInvalidBoundary {
  @invalidReturnFactory()
  public value: number = 1
}
