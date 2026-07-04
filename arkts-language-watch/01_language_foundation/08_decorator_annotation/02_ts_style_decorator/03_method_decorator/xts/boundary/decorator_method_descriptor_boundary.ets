/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-METHOD-0025, DECORATOR-METHOD-0027, DECORATOR-METHOD-0028, DECORATOR-METHOD-0038
 * Related Spec: method decorator descriptor or ArkTS equivalent structure is pending confirmation.
 * Expected: This boundary file does not assert descriptor internals.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function descriptorBoundaryDecorator(target: Object, key: string, descriptor: Object): void {
  // Boundary: descriptor shape, mutability, and equivalent ArkTS structure are compiler-expected candidates.
}

class MethodDecoratorDescriptorBoundary {
  @descriptorBoundaryDecorator
  public value(): number {
    return 1
  }
}

export function testDecoratorMethod_DescriptorBoundary(): void {
  let obj: MethodDecoratorDescriptorBoundary = new MethodDecoratorDescriptorBoundary()
  assertEqualNumber(obj.value(), 1, "descriptor boundary should not assert descriptor internals")
}

testDecoratorMethod_DescriptorBoundary()
