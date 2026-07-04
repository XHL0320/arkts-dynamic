/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0001, DECORATOR-METHOD-0003
 * Related Spec: instance method decorator identifier form.
 * Expected: The decorated instance method remains callable with normal parameter and return types.
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

class MethodDecoratorInstancePass {
  @methodDecorator
  public add(left: number, right: number): number {
    return left + right
  }
}

export function testDecoratorMethod_InstancePass(): void {
  let obj: MethodDecoratorInstancePass = new MethodDecoratorInstancePass()
  assertEqualNumber(obj.add(1, 2), 3, "decorated instance method should remain callable")
}

testDecoratorMethod_InstancePass()
