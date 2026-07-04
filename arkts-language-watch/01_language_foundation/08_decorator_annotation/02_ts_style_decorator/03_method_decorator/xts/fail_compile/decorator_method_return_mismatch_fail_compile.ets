/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0057
 * Related Spec: method decorator must not bypass return type checking.
 * Expected: ArkTS checker reports method return type mismatch.
 */

// Expected error: value declares number but returns string.

function methodDecorator(target: Object, key: string, descriptor: Object): void {
}

class MethodDecoratorReturnMismatchFailCompile {
  @methodDecorator
  public value(): number {
    return "wrong"
  }
}
