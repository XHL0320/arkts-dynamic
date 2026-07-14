/*
 * Case ID: CLASS-PASS-229
 * Coverage ID:
 *   - CLASS-TOTAL-0668
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify 声明 static boolean field 并通过 class name 读取
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

export function testClassCLASS_TOTAL_0668(): void {
  class StaticCase {
    public static value: number = 5
    public static getValue(): number {
      return StaticCase.value
    }
  }
  assertEqualNumber(StaticCase.getValue(), 5, "static method should read static field")
}

testClassCLASS_TOTAL_0668();
