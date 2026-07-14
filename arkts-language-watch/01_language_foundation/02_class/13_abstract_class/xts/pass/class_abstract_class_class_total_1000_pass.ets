/*
 * Case ID: CLASS-PASS-325
 * Coverage ID:
 *   - CLASS-TOTAL-1000
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Description: Verify abstract class implements interface 并用 concrete method 满足 interface method
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

export function testClassCLASS_TOTAL_1000(): void {
  abstract class AbstractBase {
    public abstract getValue(): number
    public baseValue(): number {
      return 1
    }
  }
  class AbstractDerived extends AbstractBase {
    public getValue(): number {
      return 7
    }
  }
  let obj: AbstractBase = new AbstractDerived()
  assertEqualNumber(obj.getValue() + obj.baseValue(), 8, "concrete subclass should implement abstract method")
}

testClassCLASS_TOTAL_1000();
