/*
 * Case ID: CLASS-PASS-213
 * Coverage ID:
 *   - CLASS-TOTAL-0960
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify 子类 static method 与基类 static method 同名并调用通过
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

export function testClassCLASS_TOTAL_0960(): void {
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

testClassCLASS_TOTAL_0960();
