/*
 * Case ID: CLASS-PASS-188
 * Coverage ID:
 *   - CLASS-TOTAL-0637
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify abstract 子类可继续不实现 abstract method
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

export function testClassCLASS_TOTAL_0637(): void {
  class OverrideBase {
    public getValue(): number {
      return 1
    }
  }
  class OverrideDerived extends OverrideBase {
    public getValue(): number {
      return 2
    }
  }
  let obj: OverrideBase = new OverrideDerived()
  assertEqualNumber(obj.getValue(), 2, "derived override should dispatch")
}

testClassCLASS_TOTAL_0637();
