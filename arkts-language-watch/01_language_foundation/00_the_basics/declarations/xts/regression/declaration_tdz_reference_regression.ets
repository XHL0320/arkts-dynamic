/*
 * Case ID: DECL-REGR-002
 * Coverage ID:
 *   - DECL-REG-001
 * Feature: language_basics
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify TDZ reference should be observable as runtime exception and should not be optimized away.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function readBeforeInit(): boolean {
  try {
    let ignored = value
  } catch (e) {
    return true
  }
  let value: number = 1
  return false
}

function main(): void {
  assertTrue(readBeforeInit(), 'TDZ reference should throw before initialization')
}

main()
