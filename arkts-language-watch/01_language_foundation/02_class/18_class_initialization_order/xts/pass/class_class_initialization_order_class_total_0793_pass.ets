/*
 * Case ID: CLASS-PASS-427
 * Coverage ID:
 *   - CLASS-TOTAL-0793
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify constructor 中调用方法读取字段
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

export function testClassCLASS_TOTAL_0793(): void {
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

testClassCLASS_TOTAL_0793();
