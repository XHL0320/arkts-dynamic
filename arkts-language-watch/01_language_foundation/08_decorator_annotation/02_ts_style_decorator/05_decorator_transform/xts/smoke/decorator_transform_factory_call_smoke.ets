/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: smoke
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0005, DECORATOR-TRANSFORM-0043, DECORATOR-TRANSFORM-0052, DECORATOR-TRANSFORM-0075, DECORATOR-TRANSFORM-0076
 * Related Spec: decorator factory call lowering smoke.
 * Expected: The factory and returned decorator are each called once.
 */

let factoryCallCount: number = 0
let returnedDecoratorCallCount: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function decoratorFactory() {
  factoryCallCount++
  return function(target: Object, key: string): void {
    returnedDecoratorCallCount++
  }
}

class TransformFactoryCallSmoke {
  @decoratorFactory()
  public value: number = 5
}

export function testDecoratorTransform_FactoryCallSmoke(): void {
  let obj: TransformFactoryCallSmoke = new TransformFactoryCallSmoke()
  assertEqualNumber(obj.value, 5, "decorated property should remain initialized")
  assertEqualNumber(factoryCallCount, 1, "decorator factory should be called once")
  assertEqualNumber(returnedDecoratorCallCount, 1, "returned decorator should be called once")
}

testDecoratorTransform_FactoryCallSmoke()
