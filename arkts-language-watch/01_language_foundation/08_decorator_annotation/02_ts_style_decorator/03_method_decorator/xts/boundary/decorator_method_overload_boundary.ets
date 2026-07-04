/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-METHOD-0116
 * Related Spec: overloaded method plus method decorator placement is pending confirmation.
 * Expected: This file records the boundary without asserting overload support.
 */

// Boundary note:
// If ArkTS supports overload signatures, follow-up tests should confirm whether the decorator
// is placed on the overload signature or only on the implementation.

export function testDecoratorMethod_OverloadBoundary(): void {
  let pending: boolean = true
  if (pending !== true) {
    throw new Error("unreachable")
  }
}

testDecoratorMethod_OverloadBoundary()
