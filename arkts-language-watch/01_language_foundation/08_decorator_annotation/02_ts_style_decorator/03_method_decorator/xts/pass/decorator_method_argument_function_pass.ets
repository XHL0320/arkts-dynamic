/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0010, DECORATOR-METHOD-0082
 * Related Spec: method decorator factory accepts an arrow function argument in an ordinary class.
 * Expected: Function argument is parsed and the decorated method remains callable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodFunctionArgFactory(readValue: () => number): (target: Object, key: string, descriptor: Object) => void {
  let captured: number = readValue()
  return (target: Object, key: string, descriptor: Object): void => {
    if (captured !== 1 || key !== "value") {
      throw new Error("function factory argument should be available")
    }
  }
}

class MethodDecoratorArgumentFunctionPass {
  @methodFunctionArgFactory((): number => { return 1 })
  public value(): number {
    return 1
  }
}

export function testDecoratorMethod_ArgumentFunctionPass(): void {
  let obj: MethodDecoratorArgumentFunctionPass = new MethodDecoratorArgumentFunctionPass()
  assertEqualNumber(obj.value(), 1, "function factory argument should keep method callable")
}

testDecoratorMethod_ArgumentFunctionPass()
