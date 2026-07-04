/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: TS-compatible
 * Source Coverage ID: DECORATOR-CLASS-0016, DECORATOR-CLASS-0073, DECORATOR-CLASS-0076
 * Related Spec: class decorator coexists with static field and static method.
 * Expected: Static members remain accessible.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecorator(target: Object): void {
}

@classDecorator
class ClassDecoratorStaticMemberPass {
  public static version: number = 1

  public static getVersion(): number {
    return ClassDecoratorStaticMemberPass.version
  }
}

export function testDecoratorClass_StaticMemberPass(): void {
  assertEqualNumber(ClassDecoratorStaticMemberPass.getVersion(), 1, "class decorator should keep static members usable")
}

testDecoratorClass_StaticMemberPass()
