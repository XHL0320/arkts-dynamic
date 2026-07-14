/*
 * Case ID: CLASS-PASS-420
 * Coverage ID:
 *   - CLASS-TOTAL-1033
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify generic class method 中 this 访问 T 字段
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

export function testClassCLASS_TOTAL_1033(): void {
  class ThisCase {
    public value: number = 10
    public getThis(): ThisCase {
      return this
    }
    public getValue(): number {
      return this.value
    }
  }
  let obj: ThisCase = new ThisCase()
  assertTrue(obj.getThis() === obj, "method should return current this")
  assertEqualNumber(obj.getValue(), 10, "this should access instance field")
}

testClassCLASS_TOTAL_1033();
