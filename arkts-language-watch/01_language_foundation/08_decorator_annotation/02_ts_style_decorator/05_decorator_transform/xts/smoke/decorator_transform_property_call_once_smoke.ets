/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: smoke
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0001, DECORATOR-TRANSFORM-0017, DECORATOR-TRANSFORM-0071, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078
 * Related Spec: property decorator lowering smoke.
 * Expected: The property decorator is called once and the field remains usable.
 */

let propertyCallCount: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function propertyDecorator(target: Object, key: string): void {
  propertyCallCount++
  if (key.length === 0) {
    throw new Error("property decorator key should be available")
  }
}

class TransformPropertyCallOnceSmoke {
  @propertyDecorator
  public value: number = 1
}

export function testDecoratorTransform_PropertyCallOnceSmoke(): void {
  let obj: TransformPropertyCallOnceSmoke = new TransformPropertyCallOnceSmoke()
  assertEqualNumber(obj.value, 1, "decorated property should remain initialized")
  assertEqualNumber(propertyCallCount, 1, "property decorator should be called once")
}

testDecoratorTransform_PropertyCallOnceSmoke()
