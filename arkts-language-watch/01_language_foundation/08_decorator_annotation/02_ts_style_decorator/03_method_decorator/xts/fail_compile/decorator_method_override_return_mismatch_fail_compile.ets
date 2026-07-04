/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-METHOD-0065
 * Related Spec: decorated override method must still satisfy return type compatibility.
 * Expected: ArkTS checker reports override return type mismatch.
 */

// Expected error: override method return type does not match the base method.

function methodDecorator(target: Object, key: string, descriptor: Object): void {
}

class MethodDecoratorOverrideReturnBase {
  public foo(): number {
    return 1
  }
}

class MethodDecoratorOverrideReturnDerived extends MethodDecoratorOverrideReturnBase {
  @methodDecorator
  public override foo(): string {
    return "wrong"
  }
}
