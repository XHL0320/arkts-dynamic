/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0015, DECORATOR-CLASS-0086
 * Related Spec: class decorator must not bypass method return type checking.
 * Expected: ArkTS checker reports method return type mismatch.
 */

// Expected error: value declares number but returns string.

function classDecorator(target: Object): void {
}

@classDecorator
class ClassDecoratorMethodReturnMismatchFailCompile {
  public value(): number {
    return "wrong"
  }
}
