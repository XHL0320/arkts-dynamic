/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0002
 * Related Spec: decorator factory accepts a single literal argument.
 * Expected: The decorated property remains initialized and usable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function singleArgFactory(name: string): (target: Object, key: string) => void {
  return (target: Object, key: string): void => {
    if (name !== key) {
      throw new Error("factory argument should match decorated key")
    }
  }
}

class DecoratorFactorySingleArgPass {
  @singleArgFactory("value")
  public value: number = 10
}

export function testDecoratorFactory_SingleArgPass(): void {
  let obj: DecoratorFactorySingleArgPass = new DecoratorFactorySingleArgPass()
  assertEqualNumber(obj.value, 10, "single-arg factory should keep property initializer")
}

testDecoratorFactory_SingleArgPass()
