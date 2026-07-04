/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0015, DECORATOR-FACTORY-0046
 * Related Spec: decorator factory can return a closure decorator function.
 * Expected: The returned closure captures factory parameters and the class remains usable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function closureFactory(expectedKey: string): (target: Object, key: string) => void {
  let capturedKey: string = expectedKey
  return (target: Object, key: string): void => {
    if (capturedKey !== key) {
      throw new Error("returned decorator should capture factory argument")
    }
  }
}

class DecoratorFactoryClosurePass {
  @closureFactory("value")
  public value: number = 80
}

export function testDecoratorFactory_ReturnClosurePass(): void {
  let obj: DecoratorFactoryClosurePass = new DecoratorFactoryClosurePass()
  assertEqualNumber(obj.value, 80, "closure-returning factory should keep property initializer")
}

testDecoratorFactory_ReturnClosurePass()
