/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-METHOD-0069
 * Related Spec: decorated method in base class remains inherited by derived class.
 * Expected: Derived class can call the inherited decorated method.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodDecorator(target: Object, key: string, descriptor: Object): void {
  if (key !== "value") {
    throw new Error("decorated base method key should be available")
  }
}

class MethodDecoratorBase {
  @methodDecorator
  public value(): number {
    return 1
  }
}

class MethodDecoratorDerived extends MethodDecoratorBase {
}

export function testDecoratorMethod_InheritanceSmokePass(): void {
  let obj: MethodDecoratorDerived = new MethodDecoratorDerived()
  assertEqualNumber(obj.value(), 1, "decorated base method should remain inherited")
}

testDecoratorMethod_InheritanceSmokePass()
