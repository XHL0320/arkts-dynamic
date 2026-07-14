/*
 * Case ID: OPER-PASS-013
 * Coverage ID:
 *   - OP-IN-OPERATOR-001
 *   - OP-IN-OPERATOR-002
 *   - OP-IN-OPERATOR-003
 *   - OP-IN-OPERATOR-004
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify in operator property existence.. "x" in {x:1} === true, "z" in {x:1} === false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = { x: 1, y: 2 }
  assertTrue("x" in obj, 'own property in object')
  assertTrue("y" in obj, 'another own property')
  assertFalse("z" in obj, 'missing property not in object')
  assertTrue("0" in [10, 20], 'array index in array')
  assertTrue("1" in [10, 20], 'second array index in array')
  assertFalse("5" in [10, 20], 'out of range index not in array')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
