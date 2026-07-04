/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0001, DECORATOR-CLASS-0002, DECORATOR-CLASS-0017
 * Related Spec: class decorator identifier form on ordinary class declaration.
 * Expected: The decorated class remains instantiable and instance members remain usable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecorator(target: Object): void {
  let observed: Object = target
  if (observed === null) {
    throw new Error("class decorator target should be available")
  }
}

@classDecorator
class ClassDecoratorBasicPass {
  public value: number = 1

  public getValue(): number {
    return this.value
  }
}

export function testDecoratorClass_BasicPass(): void {
  let obj: ClassDecoratorBasicPass = new ClassDecoratorBasicPass()
  assertEqualNumber(obj.getValue(), 1, "class decorator should keep instance member usable")
}

testDecoratorClass_BasicPass()
