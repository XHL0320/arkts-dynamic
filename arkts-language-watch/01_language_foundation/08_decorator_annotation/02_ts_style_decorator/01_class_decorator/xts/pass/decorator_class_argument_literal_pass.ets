/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0007, DECORATOR-CLASS-0036, DECORATOR-CLASS-0037, DECORATOR-CLASS-0038, DECORATOR-CLASS-0039
 * Related Spec: class decorator factory accepts string, number, and boolean literal arguments.
 * Expected: Literal factory arguments are parsed and the decorated class remains instantiable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function literalClassFactory(name: string, id: number, enabled: boolean): (target: Object) => void {
  return (target: Object): void => {
    if (name !== "class" || id !== 1 || enabled !== true) {
      throw new Error("literal class decorator arguments should be available")
    }
  }
}

@literalClassFactory("class", 1, true)
class ClassDecoratorArgumentLiteralPass {
  public value: number = 100
}

export function testDecoratorClass_ArgumentLiteralPass(): void {
  let obj: ClassDecoratorArgumentLiteralPass = new ClassDecoratorArgumentLiteralPass()
  assertEqualNumber(obj.value, 100, "literal class decorator arguments should keep class instantiable")
}

testDecoratorClass_ArgumentLiteralPass()
