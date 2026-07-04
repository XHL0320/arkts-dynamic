/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-TRANSFORM-0041, DECORATOR-TRANSFORM-0098
 * Related Spec: class decorator return value lowering.
 * Expected: Return-void smoke is covered; class replacement behavior remains pending.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function returnBoundaryClassDecorator(target: Object): void {
  // Boundary: returning a new class or non-class value is intentionally not asserted here.
}

@returnBoundaryClassDecorator
class TransformClassReturnBoundary {
  public value: number = 10
}

export function testDecoratorTransform_ClassReturnBoundary(): void {
  let obj: TransformClassReturnBoundary = new TransformClassReturnBoundary()
  assertEqualNumber(obj.value, 10, "return-void class decorator should keep original class usable")
}

testDecoratorTransform_ClassReturnBoundary()
