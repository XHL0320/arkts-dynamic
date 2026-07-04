/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0027, DECORATOR-FACTORY-0028
 * Related Spec: decorator factory accepts arrow function and normal function arguments.
 * Expected: Function arguments are parsed and can be used by the factory.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function normalFactoryArgument(): boolean {
  return true
}

function functionArgFactory(readNumber: () => number, readFlag: () => boolean): (target: Object, key: string) => void {
  let computed: number = readNumber()
  let enabled: boolean = readFlag()
  return (target: Object, key: string): void => {
    if (computed !== 6 || enabled !== true || key !== "value") {
      throw new Error("function arguments should be available to factory")
    }
  }
}

class DecoratorFactoryFunctionArgPass {
  @functionArgFactory((): number => { return 6 }, normalFactoryArgument)
  public value: number = 60
}

export function testDecoratorFactory_FunctionArgPass(): void {
  let obj: DecoratorFactoryFunctionArgPass = new DecoratorFactoryFunctionArgPass()
  assertEqualNumber(obj.value, 60, "function-arg factory should keep property initializer")
}

testDecoratorFactory_FunctionArgPass()
