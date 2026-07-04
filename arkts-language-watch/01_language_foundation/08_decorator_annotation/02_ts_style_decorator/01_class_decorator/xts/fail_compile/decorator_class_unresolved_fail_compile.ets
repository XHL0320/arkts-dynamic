/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0010
 * Related Spec: class decorator expression must resolve to a callable value.
 * Expected: ArkTS checker reports unresolved class decorator.
 */

// Expected error: unknownClassDecorator is not defined.

@unknownClassDecorator
class ClassDecoratorUnresolvedFailCompile {
  public value: number = 1
}
