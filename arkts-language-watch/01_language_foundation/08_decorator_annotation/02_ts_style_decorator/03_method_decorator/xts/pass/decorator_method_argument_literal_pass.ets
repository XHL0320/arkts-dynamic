/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0008, DECORATOR-METHOD-0078, DECORATOR-METHOD-0079, DECORATOR-METHOD-0080
 * Related Spec: method decorator factory accepts string, number, and boolean literal arguments.
 * Expected: Literal factory arguments are parsed and the decorated method remains callable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodLiteralFactory(name: string, id: number, enabled: boolean): (target: Object, key: string, descriptor: Object) => void {
  return (target: Object, key: string, descriptor: Object): void => {
    if (name !== key || id !== 1 || enabled !== true) {
      throw new Error("literal factory arguments should be available")
    }
  }
}

class MethodDecoratorArgumentLiteralPass {
  @methodLiteralFactory("value", 1, true)
  public value(): number {
    return 10
  }
}

export function testDecoratorMethod_ArgumentLiteralPass(): void {
  let obj: MethodDecoratorArgumentLiteralPass = new MethodDecoratorArgumentLiteralPass()
  assertEqualNumber(obj.value(), 10, "literal factory arguments should keep method callable")
}

testDecoratorMethod_ArgumentLiteralPass()
