/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-METHOD-0004, DECORATOR-METHOD-0087
 * Related Spec: method decorator factory returns a method decorator function.
 * Expected: The decorated method remains callable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodDecoratorFactory(name: string): (target: Object, key: string, descriptor: Object) => void {
  return (target: Object, key: string, descriptor: Object): void => {
    if (name !== key) {
      throw new Error("factory argument should match method key")
    }
  }
}

class MethodDecoratorFactoryPass {
  @methodDecoratorFactory("add")
  public add(left: number, right: number): number {
    return left + right
  }
}

export function testDecoratorMethod_FactoryPass(): void {
  let obj: MethodDecoratorFactoryPass = new MethodDecoratorFactoryPass()
  assertEqualNumber(obj.add(2, 3), 5, "method decorator factory should keep method callable")
}

testDecoratorMethod_FactoryPass()
