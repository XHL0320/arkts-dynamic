/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0029
 * Related Spec: decorator factory accepts an IIFE argument expression.
 * Expected: The IIFE argument is parsed and its result is passed to the factory.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function iifeFactory(seed: number): (target: Object, key: string) => void {
  return (target: Object, key: string): void => {
    if (seed !== 7 || key !== "value") {
      throw new Error("IIFE result should be available to factory")
    }
  }
}

class DecoratorFactoryIifePass {
  @iifeFactory(((): number => { return 7 })())
  public value: number = 70
}

export function testDecoratorFactory_IifePass(): void {
  let obj: DecoratorFactoryIifePass = new DecoratorFactoryIifePass()
  assertEqualNumber(obj.value, 70, "IIFE factory argument should keep property initializer")
}

testDecoratorFactory_IifePass()
