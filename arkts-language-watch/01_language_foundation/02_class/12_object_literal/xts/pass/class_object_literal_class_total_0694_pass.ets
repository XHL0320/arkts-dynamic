/*
 * Case ID: CLASS-PASS-277
 * Coverage ID:
 *   - CLASS-TOTAL-0694
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function property object literal
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

export function testClassCLASS_TOTAL_0694(): void {
  interface ObjectShape {
    value: number
    getValue(): number
  }
  let obj: ObjectShape = {
    value: 12,
    getValue(): number {
      return this.value
    }
  }
  assertEqualNumber(obj.getValue(), 12, "object literal should satisfy interface shape")
}

testClassCLASS_TOTAL_0694();
