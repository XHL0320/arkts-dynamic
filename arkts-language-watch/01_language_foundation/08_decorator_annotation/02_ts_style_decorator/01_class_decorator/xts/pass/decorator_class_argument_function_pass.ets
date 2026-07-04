/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0009, DECORATOR-CLASS-0040
 * Related Spec: class decorator factory accepts an arrow function argument in an ordinary class scenario.
 * Expected: Function argument is parsed and the decorated class remains instantiable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function functionArgClassFactory(readValue: () => number): (target: Object) => void {
  let captured: number = readValue()
  return (target: Object): void => {
    if (captured !== 1) {
      throw new Error("function argument should be available")
    }
  }
}

@functionArgClassFactory((): number => { return 1 })
class ClassDecoratorArgumentFunctionPass {
  public value(): number {
    return 1
  }
}

export function testDecoratorClass_ArgumentFunctionPass(): void {
  let obj: ClassDecoratorArgumentFunctionPass = new ClassDecoratorArgumentFunctionPass()
  assertEqualNumber(obj.value(), 1, "function class decorator argument should keep method callable")
}

testDecoratorClass_ArgumentFunctionPass()
