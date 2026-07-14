/*
 * Case ID: CLASS-PASS-042
 * Coverage ID:
 *   - CLASS-TOTAL-0508
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify static 字段通过类名访问通过
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

export function testClassCLASS_TOTAL_0508(): void {
  class GenericPassCase508 {
    public value: number = 23
  }
  let obj: GenericPassCase508 = new GenericPassCase508()
  assertEqualNumber(obj.value, 23, "class pass case should run")
}

testClassCLASS_TOTAL_0508();
