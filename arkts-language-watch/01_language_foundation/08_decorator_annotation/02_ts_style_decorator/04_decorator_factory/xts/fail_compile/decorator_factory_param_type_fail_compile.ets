/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-FACTORY-0040, DECORATOR-FACTORY-0110
 * Related Spec: decorator factory argument type checking should still apply.
 * Expected: ArkTS checker reports a factory argument type mismatch.
 */

// Expected error: stringFactory requires a string argument.

function stringFactory(name: string): (target: Object, key: string) => void {
  return (target: Object, key: string): void => {
  }
}

class DecoratorFactoryParamTypeFailCompile {
  @stringFactory(1)
  public value: number = 1
}
