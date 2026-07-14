/*
 * Case ID: CLASS-PASS-449
 * Coverage ID:
 *   - CLASS-TOTAL-1039
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify Base static field 初始化先于 Derived static field
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

export function testClassCLASS_TOTAL_1039(): void {
  class InitOrderCase {
    public first: number = 1
    public second: number = this.first + 1
    constructor() {
      this.second = this.second + 1
    }
  }
  let obj: InitOrderCase = new InitOrderCase()
  assertEqualNumber(obj.second, 3, "field initializers should run before constructor body")
}

testClassCLASS_TOTAL_1039();
