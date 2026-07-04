/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-CLASS-0151, DECORATOR-CLASS-0158
 * Related Spec: class expression, anonymous class, and local class decorator support is pending confirmation.
 * Expected: Boundary marker only; no class expression decorator support is asserted here.
 */

export function testDecoratorClass_ClassExpressionBoundary(): void {
  let pending: boolean = true
  if (pending !== true) {
    throw new Error("unreachable")
  }
}

testDecoratorClass_ClassExpressionBoundary()
