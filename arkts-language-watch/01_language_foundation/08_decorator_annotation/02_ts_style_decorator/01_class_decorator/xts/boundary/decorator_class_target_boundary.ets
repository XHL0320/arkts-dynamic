/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-CLASS-0019, DECORATOR-CLASS-0020, DECORATOR-CLASS-0034
 * Related Spec: class decorator target / constructor value needs follow-up confirmation.
 * Expected: Boundary smoke does not assert target internals.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function targetBoundaryDecorator(target: Object): void {
  // Boundary: class constructor / class value shape is intentionally not asserted here.
}

@targetBoundaryDecorator
class ClassDecoratorTargetBoundary {
  public value: number = 1
}

export function testDecoratorClass_TargetBoundary(): void {
  let obj: ClassDecoratorTargetBoundary = new ClassDecoratorTargetBoundary()
  assertEqualNumber(obj.value, 1, "target boundary should not assert constructor internals")
}

testDecoratorClass_TargetBoundary()
