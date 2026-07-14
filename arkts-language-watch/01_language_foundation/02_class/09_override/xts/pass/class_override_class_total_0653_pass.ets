/*
 * Case ID: CLASS-PASS-204
 * Coverage ID:
 *   - CLASS-TOTAL-0653
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify 覆盖方法返回 void 与 void 一致
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

export function testClassCLASS_TOTAL_0653(): void {
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

testClassCLASS_TOTAL_0653();
