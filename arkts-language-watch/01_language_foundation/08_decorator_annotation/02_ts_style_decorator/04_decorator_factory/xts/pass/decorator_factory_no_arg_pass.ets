/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0001
 * Related Spec: decorator factory can be called without arguments and return a decorator function.
 * Expected: The decorated property remains initialized and usable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function noArgFactory(): (target: Object, key: string) => void {
  return (target: Object, key: string): void => {
    let observedKey: string = key
    if (observedKey.length === 0) {
      throw new Error("property key should be available")
    }
  }
}

class DecoratorFactoryNoArgPass {
  @noArgFactory()
  public value: number = 1
}

export function testDecoratorFactory_NoArgPass(): void {
  let obj: DecoratorFactoryNoArgPass = new DecoratorFactoryNoArgPass()
  assertEqualNumber(obj.value, 1, "no-arg factory should keep property initializer")
}

testDecoratorFactory_NoArgPass()
