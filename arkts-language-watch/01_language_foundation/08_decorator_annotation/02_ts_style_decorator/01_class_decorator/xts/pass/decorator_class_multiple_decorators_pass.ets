/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0025, DECORATOR-CLASS-0050
 * Related Spec: multiple class decorators can coexist on the same class.
 * Expected: Multiple decorators do not break class instantiation. Execution order is out of scope.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecoratorOne(target: Object): void {
}

function classDecoratorTwo(target: Object): void {
}

@classDecoratorOne
@classDecoratorTwo
class ClassDecoratorMultipleDecoratorsPass {
  public value: number = 2
}

export function testDecoratorClass_MultipleDecoratorsPass(): void {
  let obj: ClassDecoratorMultipleDecoratorsPass = new ClassDecoratorMultipleDecoratorsPass()
  assertEqualNumber(obj.value, 2, "multiple class decorators should keep class instantiable")
}

testDecoratorClass_MultipleDecoratorsPass()
