/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0691
 * Related Spec: readonly 字段类型注解与初始化值一致
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

export function testClassCLASS_TOTAL_0691(): void {
  class ReadonlyCase {
    public readonly value: number
    constructor(value: number) {
      this.value = value
    }
  }
  let obj: ReadonlyCase = new ReadonlyCase(6)
  assertEqualNumber(obj.value, 6, "readonly field should be initialized in constructor")
}

testClassCLASS_TOTAL_0691();
