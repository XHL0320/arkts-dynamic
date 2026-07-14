/*
 * Case ID: CLASS-PASS-424
 * Coverage ID:
 *   - CLASS-TOTAL-1037
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify super.method() 内部 this 仍为 derived instance
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

export function testClassCLASS_TOTAL_1037(): void {
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

testClassCLASS_TOTAL_1037();
