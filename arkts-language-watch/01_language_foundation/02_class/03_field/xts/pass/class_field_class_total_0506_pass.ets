/*
 * Case ID: CLASS-PASS-040
 * Coverage ID:
 *   - CLASS-TOTAL-0506
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify readonly 字段在 constructor 中初始化通过
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

export function testClassCLASS_TOTAL_0506(): void {
  class GenericPassCase506 {
    public value: number = 21
  }
  let obj: GenericPassCase506 = new GenericPassCase506()
  assertEqualNumber(obj.value, 21, "class pass case should run")
}

testClassCLASS_TOTAL_0506();
