/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-TRANSFORM-0025, DECORATOR-TRANSFORM-0032, DECORATOR-TRANSFORM-0090
 * Related Spec: method decorator descriptor or ArkTS equivalent structure lowering.
 * Expected: Boundary smoke keeps method callable without asserting descriptor internals.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function descriptorBoundaryDecorator(target: Object, key: string, descriptor: Object): void {
  if (key.length === 0) {
    throw new Error("method key should be available")
  }
  // Boundary: descriptor shape and mutation behavior require follow-up compiler-chain tests.
}

class TransformMethodDescriptorBoundary {
  @descriptorBoundaryDecorator
  public value(): number {
    return 9
  }
}

export function testDecoratorTransform_MethodDescriptorBoundary(): void {
  let obj: TransformMethodDescriptorBoundary = new TransformMethodDescriptorBoundary()
  assertEqualNumber(obj.value(), 9, "descriptor boundary should keep method callable")
}

testDecoratorTransform_MethodDescriptorBoundary()
