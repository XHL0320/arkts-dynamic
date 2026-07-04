/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: smoke
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0002, DECORATOR-TRANSFORM-0073, DECORATOR-TRANSFORM-0088
 * Related Spec: static property decorator lowering smoke.
 * Expected: The static property remains accessible and the decorator is called once.
 */

let staticPropertyCallCount: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function staticPropertyDecorator(target: Object, key: string): void {
  staticPropertyCallCount++
  if (key.length === 0) {
    throw new Error("static property decorator key should be available")
  }
}

class TransformStaticPropertySmoke {
  @staticPropertyDecorator
  public static value: number = 2
}

export function testDecoratorTransform_StaticPropertySmoke(): void {
  assertEqualNumber(TransformStaticPropertySmoke.value, 2, "decorated static property should remain accessible")
  assertEqualNumber(staticPropertyCallCount, 1, "static property decorator should be called once")
}

testDecoratorTransform_StaticPropertySmoke()
