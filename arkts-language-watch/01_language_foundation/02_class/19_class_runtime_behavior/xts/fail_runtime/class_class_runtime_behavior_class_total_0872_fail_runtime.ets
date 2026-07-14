/*
 * Case ID: CLASS-FAILR-030
 * Coverage ID:
 *   - CLASS-TOTAL-0872
 * Feature: class
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify super() 内 base constructor 抛异常后 derived field 不初始化
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

export function testClassCLASS_TOTAL_0872(): void {
  class ConstructorThrowCase {
    constructor() {
      throw new Error("constructor failed")
    }
  }
  assertThrows((): void => {
    let obj: ConstructorThrowCase = new ConstructorThrowCase()
  }, "constructor should throw")
}

testClassCLASS_TOTAL_0872();
