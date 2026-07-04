/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: smoke
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0021, DECORATOR-TRANSFORM-0023, DECORATOR-TRANSFORM-0024, DECORATOR-TRANSFORM-0025
 * Related Spec: method decorator lowering smoke.
 * Expected: The method decorator is called once and the method remains callable.
 */

let methodCallCount: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodDecorator(target: Object, key: string, descriptor: Object): void {
  methodCallCount++
  if (key.length === 0) {
    throw new Error("method decorator key should be available")
  }
}

class TransformMethodCallOnceSmoke {
  @methodDecorator
  public value(): number {
    return 3
  }
}

export function testDecoratorTransform_MethodCallOnceSmoke(): void {
  let obj: TransformMethodCallOnceSmoke = new TransformMethodCallOnceSmoke()
  assertEqualNumber(obj.value(), 3, "decorated method should remain callable")
  assertEqualNumber(methodCallCount, 1, "method decorator should be called once")
}

testDecoratorTransform_MethodCallOnceSmoke()
