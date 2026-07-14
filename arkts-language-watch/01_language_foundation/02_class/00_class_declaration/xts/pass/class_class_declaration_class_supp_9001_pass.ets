/*
 * Case ID: CLASS-PASS-001
 * Coverage ID:
 *   - CLASS-SUPP-9001
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify class declaration creates a constructable class
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

export function testClassCLASS_SUPP_9001(): void {
  class DeclarationCase {
    public value: number = 1
  }
  let obj: DeclarationCase = new DeclarationCase()
  assertEqualNumber(obj.value, 1, "class declaration should create constructable class")
}

testClassCLASS_SUPP_9001();
