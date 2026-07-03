/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0981
 * Related Spec: generic class readonly field 类型为 T 并由 constructor 初始化
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

export function testClassCLASS_TOTAL_0981(): void {
  class ReadonlyCase {
    public readonly value: number
    constructor(value: number) {
      this.value = value
    }
  }
  let obj: ReadonlyCase = new ReadonlyCase(6)
  assertEqualNumber(obj.value, 6, "readonly field should be initialized in constructor")
}

testClassCLASS_TOTAL_0981();
