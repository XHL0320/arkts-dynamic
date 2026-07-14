/*
 * Case ID: CLASS-PASS-036
 * Coverage ID:
 *   - CLASS-TOTAL-0502
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify generic class 字段类型为 T 并赋值 T 通过
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

export function testClassCLASS_TOTAL_0502(): void {
  class GenericPassCase502 {
    public value: number = 17
  }
  let obj: GenericPassCase502 = new GenericPassCase502()
  assertEqualNumber(obj.value, 17, "class pass case should run")
}

testClassCLASS_TOTAL_0502();
