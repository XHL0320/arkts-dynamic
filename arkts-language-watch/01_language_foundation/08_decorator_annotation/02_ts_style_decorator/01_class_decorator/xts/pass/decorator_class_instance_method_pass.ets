/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0015, DECORATOR-CLASS-0075
 * Related Spec: class decorator coexists with instance method and this access.
 * Expected: Instance method remains callable and `this` access remains valid.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecorator(target: Object): void {
}

@classDecorator
class ClassDecoratorInstanceMethodPass {
  public value: number = 4

  public getValue(): number {
    return this.value
  }
}

export function testDecoratorClass_InstanceMethodPass(): void {
  let obj: ClassDecoratorInstanceMethodPass = new ClassDecoratorInstanceMethodPass()
  assertEqualNumber(obj.getValue(), 4, "class decorator should keep instance method usable")
}

testDecoratorClass_InstanceMethodPass()
