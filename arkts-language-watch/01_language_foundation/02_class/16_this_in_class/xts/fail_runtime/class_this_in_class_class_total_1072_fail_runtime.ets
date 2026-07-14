/*
 * Case ID: CLASS-FAILR-008
 * Coverage ID:
 *   - CLASS-TOTAL-1072
 * Feature: class
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify method extraction 后 this 为 undefined 导致 TypeError
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

export function testClassCLASS_TOTAL_1072(): void {
  class RuntimeThisCase {
    public value: number = 1
    public getValue(): number {
      return this.value
    }
  }
  let obj: RuntimeThisCase = new RuntimeThisCase()
  assertThrows((): void => {
    let fn: () => number = obj.getValue
    fn()
  }, "unbound method should throw or fail at runtime")
}

testClassCLASS_TOTAL_1072();
