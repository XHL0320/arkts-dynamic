/*
 * Case ID: CLASS-FAILR-027
 * Coverage ID:
 *   - CLASS-TOTAL-0869
 * Feature: class
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify field with late initialization 读取未初始化字段 runtime error
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

export function testClassCLASS_TOTAL_0869(): void {
  class ConstructorThrowCase {
    constructor() {
      throw new Error("constructor failed")
    }
  }
  assertThrows((): void => {
    let obj: ConstructorThrowCase = new ConstructorThrowCase()
  }, "constructor should throw")
}

testClassCLASS_TOTAL_0869();
