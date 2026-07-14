/*
 * Case ID: OPER-PASS-001
 * Coverage ID:
 *   - OP-ARITHMETIC-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify boolean numeric conversion in arithmetic.. true + true === 2, false + 1 === 1.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(true + true === 2, 'true converts to 1')
  assertTrue(false + 1 === 1, 'false converts to 0')
  assertTrue(true * 3 === 3, 'true multiplied')
  assertTrue(false * 5 === 0, 'false multiplied')
}

main()
