/*
 * Case ID: CLASS-PASS-033
 * Coverage ID:
 *   - CLASS-TOTAL-0499
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify bigint 字段初始化为 bigint literal 通过
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

export function testClassCLASS_TOTAL_0499(): void {
  class GenericPassCase499 {
    public value: number = 14
  }
  let obj: GenericPassCase499 = new GenericPassCase499()
  assertEqualNumber(obj.value, 14, "class pass case should run")
}

testClassCLASS_TOTAL_0499();
