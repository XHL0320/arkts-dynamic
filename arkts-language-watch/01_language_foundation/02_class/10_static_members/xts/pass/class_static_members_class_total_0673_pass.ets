/*
 * Feature: Class
 * SubFeature: 10_static_members
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0673
 * Related Spec: 声明无参 static method 并通过 class name 调用
 * Expected: Class scenario compiles and runs with focused assertions.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualString(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertThrows(fn: () => void, message: string): void {
  let thrown: boolean = false
  try {
    fn()
  } catch (e) {
    thrown = true
  }
  if (!thrown) {
    throw new Error(message)
  }
}

export function testClassCLASS_TOTAL_0673(): void {
  class StaticCase {
    public static value: number = 5
    public static getValue(): number {
      return StaticCase.value
    }
  }
  assertEqualNumber(StaticCase.getValue(), 5, "static method should read static field")
}

testClassCLASS_TOTAL_0673();
