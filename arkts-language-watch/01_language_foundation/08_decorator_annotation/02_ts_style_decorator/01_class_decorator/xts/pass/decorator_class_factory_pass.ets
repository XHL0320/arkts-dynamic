/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0003, DECORATOR-CLASS-0045
 * Related Spec: class decorator factory returns class decorator function.
 * Expected: The decorated class remains instantiable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecoratorFactory(name: string): (target: Object) => void {
  return (target: Object): void => {
    if (name !== "ClassDecoratorFactoryPass") {
      throw new Error("factory argument should be available")
    }
  }
}

@classDecoratorFactory("ClassDecoratorFactoryPass")
class ClassDecoratorFactoryPass {
  public value: number = 10
}

export function testDecoratorClass_FactoryPass(): void {
  let obj: ClassDecoratorFactoryPass = new ClassDecoratorFactoryPass()
  assertEqualNumber(obj.value, 10, "class decorator factory should keep class instantiable")
}

testDecoratorClass_FactoryPass()
