/*
 * Case ID: CLASS-PASS-425
 * Coverage ID:
 *   - CLASS-SUPP-9014
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify class member scope and local scope are distinct
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

export function testClassCLASS_SUPP_9014(): void {
  class ScopeCase {
    public value: number = 1
    public read(): number {
      let value: number = 2
      return value + this.value
    }
  }
  let obj: ScopeCase = new ScopeCase()
  assertEqualNumber(obj.read(), 3, "class member and local scope should be distinct")
}

testClassCLASS_SUPP_9014();
