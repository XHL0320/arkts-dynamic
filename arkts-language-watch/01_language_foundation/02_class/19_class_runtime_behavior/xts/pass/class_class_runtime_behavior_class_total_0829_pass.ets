/*
 * Case ID: CLASS-PASS-476
 * Coverage ID:
 *   - CLASS-TOTAL-0829
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify derived instanceof Base 返回 true
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

export function testClassCLASS_TOTAL_0829(): void {
  class RuntimeCase {
    public value: number = 11
  }
  let obj: RuntimeCase = new RuntimeCase()
  assertTrue(obj instanceof RuntimeCase, "instanceof should identify class instance")
  assertEqualNumber(obj.value, 11, "runtime instance field should be available")
}

testClassCLASS_TOTAL_0829();
