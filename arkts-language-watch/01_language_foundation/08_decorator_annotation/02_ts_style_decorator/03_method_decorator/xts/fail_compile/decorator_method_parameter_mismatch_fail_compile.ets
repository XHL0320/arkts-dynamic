/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0056
 * Related Spec: method decorator must not bypass parameter type checking.
 * Expected: ArkTS checker reports method parameter type mismatch.
 */

// Expected error: add requires a number argument.

function methodDecorator(target: Object, key: string, descriptor: Object): void {
}

class MethodDecoratorParameterMismatchFailCompile {
  @methodDecorator
  public add(value: number): number {
    return value
  }
}

function testDecoratorMethod_ParameterMismatchFailCompile(): void {
  let obj: MethodDecoratorParameterMismatchFailCompile = new MethodDecoratorParameterMismatchFailCompile()
  obj.add("wrong")
}
