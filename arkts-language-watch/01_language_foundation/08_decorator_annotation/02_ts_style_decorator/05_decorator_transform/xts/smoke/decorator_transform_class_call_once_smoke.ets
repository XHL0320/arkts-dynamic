/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: smoke
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0033, DECORATOR-TRANSFORM-0035, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078
 * Related Spec: class decorator lowering smoke.
 * Expected: The class decorator is called once and the class remains instantiable.
 */

let classCallCount: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecorator(target: Object): void {
  classCallCount++
  let observed: Object = target
  if (observed === null) {
    throw new Error("class decorator target should be available")
  }
}

@classDecorator
class TransformClassCallOnceSmoke {
  public value: number = 4
}

export function testDecoratorTransform_ClassCallOnceSmoke(): void {
  let obj: TransformClassCallOnceSmoke = new TransformClassCallOnceSmoke()
  assertEqualNumber(obj.value, 4, "decorated class should remain instantiable")
  assertEqualNumber(classCallCount, 1, "class decorator should be called once")
}

testDecoratorTransform_ClassCallOnceSmoke()
