/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: boundary
 * Priority: P2
 * ECMA Baseline Status: Pending
 * Source Coverage ID: DECORATOR-CLASS-0012, DECORATOR-CLASS-0101, DECORATOR-CLASS-0103, DECORATOR-CLASS-0104, DECORATOR-CLASS-0105, DECORATOR-CLASS-0109
 * Related Spec: class decorator return value behavior is pending confirmation.
 * Expected: Void-return decorator is smoked; class replacement and non-class return remain candidates.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function voidReturnClassDecorator(target: Object): void {
  return
}

@voidReturnClassDecorator
class ClassDecoratorReturnValueBoundary {
  public value: number = 1
}

export function testDecoratorClass_ReturnValueBoundary(): void {
  let obj: ClassDecoratorReturnValueBoundary = new ClassDecoratorReturnValueBoundary()
  assertEqualNumber(obj.value, 1, "void-return class decorator should keep class usable")
}

testDecoratorClass_ReturnValueBoundary()
