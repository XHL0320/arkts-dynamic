/*
 * Case ID: OPER-PASS-021
 * Coverage ID:
 *   - OP-RELATIONAL-005
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify NaN relational comparison is always false.. NaN < 1 === false, NaN > 1 === false, NaN <= 1 === false, NaN >= 1 === false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let nan: number = NaN
  assertFalse(nan < 1, 'NaN < 1 is false')
  assertFalse(nan > 1, 'NaN > 1 is false')
  assertFalse(nan <= 1, 'NaN <= 1 is false')
  assertFalse(nan >= 1, 'NaN >= 1 is false')
  assertFalse(nan < nan, 'NaN < NaN is false')
  assertFalse(nan > nan, 'NaN > NaN is false')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
