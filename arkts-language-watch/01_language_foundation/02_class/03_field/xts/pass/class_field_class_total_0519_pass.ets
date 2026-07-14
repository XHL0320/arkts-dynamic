/*
 * Case ID: CLASS-PASS-053
 * Coverage ID:
 *   - CLASS-TOTAL-0519
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify 方法内读取实例字段通过
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

export function testClassCLASS_TOTAL_0519(): void {
  class GenericPassCase519 {
    public value: number = 34
  }
  let obj: GenericPassCase519 = new GenericPassCase519()
  assertEqualNumber(obj.value, 34, "class pass case should run")
}

testClassCLASS_TOTAL_0519();
