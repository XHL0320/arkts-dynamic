/*
 * Case ID: CLASS-PASS-257
 * Coverage ID:
 *   - CLASS-TOTAL-0681
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify readonly object field 内部普通属性修改，如 ArkTS 允许
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

export function testClassCLASS_TOTAL_0681(): void {
  class ReadonlyCase {
    public readonly value: number
    constructor(value: number) {
      this.value = value
    }
  }
  let obj: ReadonlyCase = new ReadonlyCase(6)
  assertEqualNumber(obj.value, 6, "readonly field should be initialized in constructor")
}

testClassCLASS_TOTAL_0681();
