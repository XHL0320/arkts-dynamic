/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: integration
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-TRANSFORM-0021, DECORATOR-TRANSFORM-0033, DECORATOR-TRANSFORM-0101, DECORATOR-TRANSFORM-0102
 * Related Spec: mixed class/property/method decorator lowering smoke.
 * Expected: Each target decorator is called once; cross-target execution order is not asserted.
 */

let mixedClassCallCount: number = 0
let mixedPropertyCallCount: number = 0
let mixedMethodCallCount: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function mixedClassDecorator(target: Object): void {
  mixedClassCallCount++
}

function mixedPropertyDecorator(target: Object, key: string): void {
  mixedPropertyCallCount++
}

function mixedMethodDecorator(target: Object, key: string, descriptor: Object): void {
  mixedMethodCallCount++
}

@mixedClassDecorator
class TransformClassPropertyMethodSmoke {
  @mixedPropertyDecorator
  public value: number = 8

  @mixedMethodDecorator
  public getValue(): number {
    return this.value
  }
}

export function testDecoratorTransform_ClassPropertyMethodSmoke(): void {
  let obj: TransformClassPropertyMethodSmoke = new TransformClassPropertyMethodSmoke()
  assertEqualNumber(obj.getValue(), 8, "decorated class should keep property and method usable")
  assertEqualNumber(mixedClassCallCount, 1, "class decorator should be called once")
  assertEqualNumber(mixedPropertyCallCount, 1, "property decorator should be called once")
  assertEqualNumber(mixedMethodCallCount, 1, "method decorator should be called once")
}

testDecoratorTransform_ClassPropertyMethodSmoke()
