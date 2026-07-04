/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-TRANSFORM-0053, DECORATOR-TRANSFORM-0098
 * Related Spec: factory invalid return lowering.
 * Expected: Checker/runtime behavior for non-function factory return remains pending.
 */

// Boundary note only:
// A future fail_compile or fail_runtime case should confirm whether a factory returning
// a non-callable value is rejected by the checker or at runtime. This file intentionally
// does not use the invalid decorator expression as an active decorator.

function invalidReturnFactoryBoundary(): number {
  return 1
}

export function testDecoratorTransform_FactoryInvalidReturnBoundary(): void {
  let value: number = invalidReturnFactoryBoundary()
  if (value !== 1) {
    throw new Error("boundary helper should be callable")
  }
}

testDecoratorTransform_FactoryInvalidReturnBoundary()
