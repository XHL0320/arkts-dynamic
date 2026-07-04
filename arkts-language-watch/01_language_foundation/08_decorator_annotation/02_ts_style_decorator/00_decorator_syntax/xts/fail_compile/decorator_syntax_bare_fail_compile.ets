/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-SYNTAX-0096
 * Related Spec: bare @ is not a valid decorator.
 * Expected: ArkTS parser/checker reports a compile-time error.
 */

// Expected error: bare @ has no decorator expression.

@
class DecoratorSyntaxBareFail {
  public value: number = 1
}
