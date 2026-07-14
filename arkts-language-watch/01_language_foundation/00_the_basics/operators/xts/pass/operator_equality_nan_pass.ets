/*
 * Case ID: OPER-PASS-011
 * Coverage ID:
 *   - OP-EQUALITY-004
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify NaN equality is always false.. NaN !== NaN, NaN != NaN.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let nan: number = NaN
  assertFalse(nan === nan, 'NaN is not strictly equal to itself')
  assertFalse(nan == nan, 'NaN is not loosely equal to itself')
  assertTrue(nan !== nan, 'NaN is strictly not equal to itself')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
