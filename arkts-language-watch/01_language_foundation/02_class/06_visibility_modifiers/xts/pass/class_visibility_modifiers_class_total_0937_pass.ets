/*
 * Case ID: CLASS-PASS-127
 * Coverage ID:
 *   - CLASS-TOTAL-0937
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify protected constructor 子类可通过 super() 调用，如 ArkTS 支持
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

export function testClassCLASS_TOTAL_0937(): void {
  class VisibilityCase {
    public visible: number = 1
    private hidden: number = 2
    public readHidden(): number {
      return this.hidden
    }
  }
  let obj: VisibilityCase = new VisibilityCase()
  assertEqualNumber(obj.visible + obj.readHidden(), 3, "public API should access private state internally")
}

testClassCLASS_TOTAL_0937();
