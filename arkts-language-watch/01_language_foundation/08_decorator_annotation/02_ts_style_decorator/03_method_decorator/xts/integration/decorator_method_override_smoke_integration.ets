/*
 * Feature: TS Style Decorator
 * SubFeature: 03_method_decorator
 * CaseType: integration
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-METHOD-0063, DECORATOR-METHOD-0070, DECORATOR-METHOD-0071
 * Related Spec: method decorator can coexist with override and super method usage.
 * Expected: Decorated override method remains callable and can call super.method.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function methodDecorator(target: Object, key: string, descriptor: Object): void {
  if (key !== "value") {
    throw new Error("override method key should be available")
  }
}

class MethodDecoratorOverrideSmokeBase {
  public value(seed: number): number {
    return seed + 1
  }
}

class MethodDecoratorOverrideSmokeDerived extends MethodDecoratorOverrideSmokeBase {
  @methodDecorator
  public override value(seed: number): number {
    return super.value(seed) + 1
  }
}

export function testDecoratorMethod_OverrideSmokeIntegration(): void {
  let obj: MethodDecoratorOverrideSmokeDerived = new MethodDecoratorOverrideSmokeDerived()
  assertEqualNumber(obj.value(1), 3, "decorated override should keep super method dispatch")
}

testDecoratorMethod_OverrideSmokeIntegration()
