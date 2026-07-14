/*
 * Case ID: CLASS-PASS-044
 * Coverage ID:
 *   - CLASS-TOTAL-0510
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify 单个 number 字段带类型注解和初始化值通过
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

export function testClassCLASS_TOTAL_0510(): void {
  class GenericPassCase510 {
    public value: number = 25
  }
  let obj: GenericPassCase510 = new GenericPassCase510()
  assertEqualNumber(obj.value, 25, "class pass case should run")
}

testClassCLASS_TOTAL_0510();
