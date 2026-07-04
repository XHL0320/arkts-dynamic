/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0011
 * Related Spec: class decorator expression must be callable.
 * Expected: ArkTS checker reports non-callable class decorator expression.
 */

// Expected error: classDecoratorValue is a number and cannot be used as a decorator.

let classDecoratorValue: number = 1

@classDecoratorValue
class ClassDecoratorNonCallableFailCompile {
  public value: number = 1
}
