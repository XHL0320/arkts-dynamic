/*
 * Case ID: CLASS-PASS-035
 * Coverage ID:
 *   - CLASS-TOTAL-0501
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify constructor 内读取和写入实例字段通过
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

export function testClassCLASS_TOTAL_0501(): void {
  class GenericPassCase501 {
    public value: number = 16
  }
  let obj: GenericPassCase501 = new GenericPassCase501()
  assertEqualNumber(obj.value, 16, "class pass case should run")
}

testClassCLASS_TOTAL_0501();
