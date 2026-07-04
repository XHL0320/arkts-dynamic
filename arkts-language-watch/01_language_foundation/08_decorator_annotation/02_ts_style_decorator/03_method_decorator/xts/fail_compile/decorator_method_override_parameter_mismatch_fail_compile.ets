/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-METHOD-0064
 * Related Spec: decorated override method must still satisfy parameter compatibility.
 * Expected: ArkTS checker reports override parameter mismatch.
 */

// Expected error: override method parameter type does not match the base method.

function methodDecorator(target: Object, key: string, descriptor: Object): void {
}

class MethodDecoratorOverrideParameterBase {
  public foo(value: number): number {
    return value
  }
}

class MethodDecoratorOverrideParameterDerived extends MethodDecoratorOverrideParameterBase {
  @methodDecorator
  public override foo(value: string): number {
    return 1
  }
}
