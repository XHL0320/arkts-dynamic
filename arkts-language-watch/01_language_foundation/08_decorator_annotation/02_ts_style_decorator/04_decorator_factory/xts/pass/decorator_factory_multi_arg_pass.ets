/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0003
 * Related Spec: decorator factory accepts multiple primitive arguments.
 * Expected: The decorated property remains initialized and usable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function multiArgFactory(name: string, seed: number, enabled: boolean): (target: Object, key: string) => void {
  return (target: Object, key: string): void => {
    if (enabled !== true || seed !== 3 || name !== key) {
      throw new Error("factory primitive arguments should be available")
    }
  }
}

class DecoratorFactoryMultiArgPass {
  @multiArgFactory("value", 3, true)
  public value: number = 30
}

export function testDecoratorFactory_MultiArgPass(): void {
  let obj: DecoratorFactoryMultiArgPass = new DecoratorFactoryMultiArgPass()
  assertEqualNumber(obj.value, 30, "multi-arg factory should keep property initializer")
}

testDecoratorFactory_MultiArgPass()
