/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: fail_runtime
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-FACTORY-0013, DECORATOR-FACTORY-0108
 * Related Spec: factory throw behavior should be stable.
 * Expected: The factory throws during decorator evaluation.
 */

function throwingFactory(): (target: Object, key: string) => void {
  throw new Error("decorator factory throws")
}

class DecoratorFactoryThrowFailRuntime {
  @throwingFactory()
  public value: number = 1
}

export function testDecoratorFactory_ThrowFailRuntime(): void {
  let obj: DecoratorFactoryThrowFailRuntime = new DecoratorFactoryThrowFailRuntime()
  if (obj.value !== 1) {
    throw new Error("unreachable")
  }
}

testDecoratorFactory_ThrowFailRuntime()
