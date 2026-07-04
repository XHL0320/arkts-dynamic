/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0035, DECORATOR-METHOD-0092
 * Related Spec: multiple method decorators can be placed on the same method.
 * Expected: Multiple decorators coexist and the method remains callable. Execution order is out of scope.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodDecoratorOne(target: Object, key: string, descriptor: Object): void {
  if (key.length === 0) {
    throw new Error("first decorator should receive key")
  }
}

function methodDecoratorTwo(target: Object, key: string, descriptor: Object): void {
  if (key.length === 0) {
    throw new Error("second decorator should receive key")
  }
}

class MethodDecoratorMultipleDecoratorsPass {
  @methodDecoratorOne
  @methodDecoratorTwo
  public add(left: number, right: number): number {
    return left + right
  }
}

export function testDecoratorMethod_MultipleDecoratorsPass(): void {
  let obj: MethodDecoratorMultipleDecoratorsPass = new MethodDecoratorMultipleDecoratorsPass()
  assertEqualNumber(obj.add(3, 4), 7, "multiple method decorators should keep method callable")
}

testDecoratorMethod_MultipleDecoratorsPass()
