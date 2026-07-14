/*
 * Case ID: CLASS-PASS-045
 * Coverage ID:
 *   - CLASS-TOTAL-0511
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify 基础正向场景
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

export function testClassCLASS_TOTAL_0511(): void {
  class GenericPassCase511 {
    public value: number = 26
  }
  let obj: GenericPassCase511 = new GenericPassCase511()
  assertEqualNumber(obj.value, 26, "class pass case should run")
}

testClassCLASS_TOTAL_0511();
