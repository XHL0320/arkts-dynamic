/*
 * Case ID: OPER-PASS-002
 * Coverage ID:
 *   - OP-ARITHMETIC-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify number addition.. 1 + 2 === 3.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(1 + 2 === 3, 'number addition should return 3')
  assertTrue(0 + 0 === 0, 'zero addition')
  assertTrue(-1 + 1 === 0, 'negative plus positive')
  assertTrue(3.5 + 1.5 === 5, 'float addition')
}

main()
