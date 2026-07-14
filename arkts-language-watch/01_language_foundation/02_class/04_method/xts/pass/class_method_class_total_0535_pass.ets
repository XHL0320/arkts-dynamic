/*
 * Case ID: CLASS-PASS-069
 * Coverage ID:
 *   - CLASS-TOTAL-0535
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify 方法省略返回类型并由返回值推断通过
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

export function testClassCLASS_TOTAL_0535(): void {
  class MethodCase {
    private value: number = 1
    public getValue(delta: number): number {
      return this.value + delta
    }
  }
  let obj: MethodCase = new MethodCase()
  assertEqualNumber(obj.getValue(2), 3, "method should return typed value")
}

testClassCLASS_TOTAL_0535();
