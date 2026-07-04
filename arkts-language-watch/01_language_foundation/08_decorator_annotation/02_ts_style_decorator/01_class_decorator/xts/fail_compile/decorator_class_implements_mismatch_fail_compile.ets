/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-CLASS-0079, DECORATOR-CLASS-0094
 * Related Spec: class decorator must not bypass implements checking.
 * Expected: ArkTS checker reports missing interface member.
 */

// Expected error: class does not implement required value method.

function classDecorator(target: Object): void {
}

interface ClassDecoratorRequiredInterface {
  value(): number
}

@classDecorator
class ClassDecoratorImplementsMismatchFailCompile implements ClassDecoratorRequiredInterface {
}
