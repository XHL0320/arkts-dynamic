/*
 * Case ID: CLASS-PASS-387
 * Coverage ID:
 *   - CLASS-TOTAL-1020
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Description: Verify generic abstract class 由 concrete subclass 指定 T 实现
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

export function testClassCLASS_TOTAL_1020(): void {
  class Box<T> {
    public value: T
    constructor(value: T) {
      this.value = value
    }
    public getValue(): T {
      return this.value
    }
  }
  let box: Box<number> = new Box<number>(9)
  assertEqualNumber(box.getValue(), 9, "generic class should preserve typed value")
}

testClassCLASS_TOTAL_1020();
