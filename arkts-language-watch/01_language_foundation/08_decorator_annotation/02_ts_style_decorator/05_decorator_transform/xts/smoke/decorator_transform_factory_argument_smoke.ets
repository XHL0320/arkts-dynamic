/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: smoke
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0009, DECORATOR-TRANSFORM-0046, DECORATOR-TRANSFORM-0050, DECORATOR-TRANSFORM-0087
 * Related Spec: decorator factory argument expression lowering smoke.
 * Expected: The argument expression is evaluated once and passed to the factory.
 */

let argumentCallCount: number = 0
let observedFactoryValue: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function nextDecoratorValue(): number {
  argumentCallCount++
  return 6
}

function decoratorFactoryWithArgument(value: number) {
  observedFactoryValue = value
  return function(target: Object, key: string): void {
  }
}

class TransformFactoryArgumentSmoke {
  @decoratorFactoryWithArgument(nextDecoratorValue())
  public value: number = 6
}

export function testDecoratorTransform_FactoryArgumentSmoke(): void {
  let obj: TransformFactoryArgumentSmoke = new TransformFactoryArgumentSmoke()
  assertEqualNumber(obj.value, 6, "decorated property should remain initialized")
  assertEqualNumber(argumentCallCount, 1, "factory argument should be evaluated once")
  assertEqualNumber(observedFactoryValue, 6, "factory should receive evaluated argument")
}

testDecoratorTransform_FactoryArgumentSmoke()
