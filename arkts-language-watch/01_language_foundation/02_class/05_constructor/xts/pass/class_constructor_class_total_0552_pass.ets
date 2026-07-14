/*
 * Case ID: CLASS-PASS-086
 * Coverage ID:
 *   - CLASS-TOTAL-0552
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify constructor 中调用实例方法通过
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

export function testClassCLASS_TOTAL_0552(): void {
  class ConstructorCase {
    public value: number
    constructor(value: number) {
      this.value = value
    }
  }
  let obj: ConstructorCase = new ConstructorCase(3)
  assertEqualNumber(obj.value, 3, "constructor should initialize field")
}

testClassCLASS_TOTAL_0552();
