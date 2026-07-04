/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: smoke
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0016, DECORATOR-TRANSFORM-0017, DECORATOR-TRANSFORM-0077, DECORATOR-TRANSFORM-0078, DECORATOR-TRANSFORM-0082
 * Related Spec: multiple decorators lowering smoke.
 * Expected: Each decorator is called once; execution order is not asserted here.
 */

let firstDecoratorCallCount: number = 0
let secondDecoratorCallCount: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function firstDecorator(target: Object, key: string): void {
  firstDecoratorCallCount++
}

function secondDecorator(target: Object, key: string): void {
  secondDecoratorCallCount++
}

class TransformMultipleNoDuplicateSmoke {
  @firstDecorator
  @secondDecorator
  public value: number = 7
}

export function testDecoratorTransform_MultipleNoDuplicateSmoke(): void {
  let obj: TransformMultipleNoDuplicateSmoke = new TransformMultipleNoDuplicateSmoke()
  assertEqualNumber(obj.value, 7, "decorated property should remain initialized")
  assertEqualNumber(firstDecoratorCallCount, 1, "first decorator should be called once")
  assertEqualNumber(secondDecoratorCallCount, 1, "second decorator should be called once")
}

testDecoratorTransform_MultipleNoDuplicateSmoke()
