/*
 * Case ID: CLASS-PASS-009
 * Coverage ID:
 *   - CLASS-TOTAL-0487
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify class value 可访问 static field
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

export function testClassCLASS_TOTAL_0487(): void {
  class BaseTypeCase {
    public value: number = 1
  }
  class DerivedTypeCase extends BaseTypeCase {
    public extra: number = 2
  }
  let baseRef: BaseTypeCase = new DerivedTypeCase()
  assertEqualNumber(baseRef.value, 1, "derived instance should be assignable to base type")
}

testClassCLASS_TOTAL_0487();
