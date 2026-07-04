/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0070
 * Related Spec: class decorator must not bypass constructor parameter type checking.
 * Expected: ArkTS checker reports constructor argument type mismatch.
 */

// Expected error: constructor requires a number argument.

function classDecorator(target: Object): void {
}

@classDecorator
class ClassDecoratorConstructorParameterMismatchFailCompile {
  constructor(value: number) {
  }
}

function testDecoratorClass_ConstructorParameterMismatchFailCompile(): void {
  let obj: ClassDecoratorConstructorParameterMismatchFailCompile = new ClassDecoratorConstructorParameterMismatchFailCompile("wrong")
}
