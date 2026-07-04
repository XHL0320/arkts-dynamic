/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: integration
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-FACTORY-0006, DECORATOR-FACTORY-0008, DECORATOR-FACTORY-0009
 * Related Spec: decorator factories can be used on ordinary class, property, and method targets.
 * Expected: Basic factory syntax works across class, property, and method decorators.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classFactory(name: string): (target: Object) => void {
  return (target: Object): void => {
    if (name !== "class") {
      throw new Error("class factory argument should be available")
    }
  }
}

function propertyFactory(name: string): (target: Object, key: string) => void {
  return (target: Object, key: string): void => {
    if (name !== key) {
      throw new Error("property factory argument should match key")
    }
  }
}

function methodFactory(name: string): (target: Object, key: string, descriptor: Object) => void {
  return (target: Object, key: string, descriptor: Object): void => {
    if (name !== key) {
      throw new Error("method factory argument should match key")
    }
  }
}

@classFactory("class")
class DecoratorFactoryTargetsIntegration {
  @propertyFactory("value")
  public value: number = 100

  @methodFactory("read")
  public read(): number {
    return this.value
  }
}

export function testDecoratorFactory_TargetsIntegration(): void {
  let obj: DecoratorFactoryTargetsIntegration = new DecoratorFactoryTargetsIntegration()
  assertEqualNumber(obj.read(), 100, "factory should work on class, property, and method decorators")
}

testDecoratorFactory_TargetsIntegration()
