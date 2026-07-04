/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0072
 * Related Spec: class decorator must not bypass field initializer type checking.
 * Expected: ArkTS checker reports field initializer type mismatch.
 */

// Expected error: value declares number but is initialized with string.

function classDecorator(target: Object): void {
}

@classDecorator
class ClassDecoratorFieldTypeMismatchFailCompile {
  public value: number = "wrong"
}
