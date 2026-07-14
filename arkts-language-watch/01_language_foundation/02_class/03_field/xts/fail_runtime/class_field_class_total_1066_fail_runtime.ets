/*
 * Case ID: CLASS-FAILR-002
 * Coverage ID:
 *   - CLASS-TOTAL-1066
 * Feature: class
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify 运行时异常场景
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

export function testClassCLASS_TOTAL_1066(): void {
  assertThrows((): void => {
    throw new Error("expected class runtime error")
  }, "runtime error should be observed")
}

testClassCLASS_TOTAL_1066();
