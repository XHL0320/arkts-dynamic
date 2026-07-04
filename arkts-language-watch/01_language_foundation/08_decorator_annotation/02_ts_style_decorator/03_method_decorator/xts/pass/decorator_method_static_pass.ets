/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0002, DECORATOR-METHOD-0059, DECORATOR-METHOD-0067
 * Related Spec: static method decorator identifier form.
 * Expected: The decorated static method remains callable through the class.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodDecorator(target: Object, key: string, descriptor: Object): void {
  if (key.length === 0) {
    throw new Error("static method key should be available")
  }
}

class MethodDecoratorStaticPass {
  @methodDecorator
  public static getVersion(): number {
    return 1
  }
}

export function testDecoratorMethod_StaticPass(): void {
  assertEqualNumber(MethodDecoratorStaticPass.getVersion(), 1, "decorated static method should remain callable")
}

testDecoratorMethod_StaticPass()
