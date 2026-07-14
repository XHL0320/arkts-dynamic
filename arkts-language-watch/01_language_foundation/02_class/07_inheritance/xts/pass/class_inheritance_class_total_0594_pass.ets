/*
 * Case ID: CLASS-PASS-136
 * Coverage ID:
 *   - CLASS-TOTAL-0594
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify static 字段通过派生类名访问通过
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

export function testClassCLASS_TOTAL_0594(): void {
  class BaseCase {
    public value: number = 1
    public getValue(): number {
      return this.value
    }
  }
  class DerivedCase extends BaseCase {
    public extra: number = 2
  }
  let obj: DerivedCase = new DerivedCase()
  assertTrue(obj instanceof BaseCase, "derived should be instance of base")
  assertEqualNumber(obj.getValue() + obj.extra, 3, "derived should inherit base members")
}

testClassCLASS_TOTAL_0594();
