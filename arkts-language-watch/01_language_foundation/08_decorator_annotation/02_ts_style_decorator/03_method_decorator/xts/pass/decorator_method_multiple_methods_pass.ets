/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0034, DECORATOR-METHOD-0033
 * Related Spec: multiple methods in the same class can each have decorators.
 * Expected: Decorators on one method do not break other decorated methods.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodDecorator(target: Object, key: string, descriptor: Object): void {
  if (key.length === 0) {
    throw new Error("method key should be available")
  }
}

class MethodDecoratorMultipleMethodsPass {
  @methodDecorator
  public add(left: number, right: number): number {
    return left + right
  }

  @methodDecorator
  public multiply(left: number, right: number): number {
    return left * right
  }
}

export function testDecoratorMethod_MultipleMethodsPass(): void {
  let obj: MethodDecoratorMultipleMethodsPass = new MethodDecoratorMultipleMethodsPass()
  assertEqualNumber(obj.add(4, 5), 9, "first decorated method should remain callable")
  assertEqualNumber(obj.multiply(4, 5), 20, "second decorated method should remain callable")
}

testDecoratorMethod_MultipleMethodsPass()
