/*
 * Case ID: CLASS-REGR-004
 * Coverage ID:
 *   - CLASS-SUPP-9019
 * Feature: class
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: declarations
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify class self-reference inside method remains stable
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

export function testClassCLASS_SUPP_9019(): void {
  class RegressionCase {
    public value: number = 1
    public getValue(): number {
      return this.value
    }
  }
  let obj: RegressionCase = new RegressionCase()
  assertEqualNumber(obj.getValue(), 1, "high-risk class regression should stay stable")
}

testClassCLASS_SUPP_9019();
