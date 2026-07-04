/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0013, DECORATOR-CLASS-0068
 * Related Spec: class decorator coexists with constructor parameter and constructor body.
 * Expected: Constructor arguments are passed normally and constructor body executes.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecorator(target: Object): void {
}

@classDecorator
class ClassDecoratorConstructorPass {
  public value: number

  constructor(value: number) {
    this.value = value
  }
}

export function testDecoratorClass_ConstructorPass(): void {
  let obj: ClassDecoratorConstructorPass = new ClassDecoratorConstructorPass(3)
  assertEqualNumber(obj.value, 3, "class decorator should not break constructor")
}

testDecoratorClass_ConstructorPass()
