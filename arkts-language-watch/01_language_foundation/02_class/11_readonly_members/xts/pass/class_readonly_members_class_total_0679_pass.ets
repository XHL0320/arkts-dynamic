/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0679
 * Related Spec: readonly interface type field 声明处初始化
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

export function testClassCLASS_TOTAL_0679(): void {
  class ReadonlyCase {
    public readonly value: number
    constructor(value: number) {
      this.value = value
    }
  }
  let obj: ReadonlyCase = new ReadonlyCase(6)
  assertEqualNumber(obj.value, 6, "readonly field should be initialized in constructor")
}

testClassCLASS_TOTAL_0679();
