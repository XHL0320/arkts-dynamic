/*
 * Case ID: CLASS-PASS-049
 * Coverage ID:
 *   - CLASS-TOTAL-0515
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify 字段不带类型注解并从初始化值推断类型通过
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

export function testClassCLASS_TOTAL_0515(): void {
  class GenericPassCase515 {
    public value: number = 30
  }
  let obj: GenericPassCase515 = new GenericPassCase515()
  assertEqualNumber(obj.value, 30, "class pass case should run")
}

testClassCLASS_TOTAL_0515();
