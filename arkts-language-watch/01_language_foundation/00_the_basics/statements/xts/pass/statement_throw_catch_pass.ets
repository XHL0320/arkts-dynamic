/*
 * Case ID: STMT-PASS-021
 * Coverage ID:
 *   - STMT-THROW-001
 *   - STMT-THROW-005
 *   - STMT-TRY-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify throw statement and catch clause.. throw inside try is caught by catch.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let caught: boolean = false
  let errorMsg: string = ""
  try {
    throw new Error("test error")
  } catch (e) {
    caught = true
    errorMsg = (e as Error).message
  }
  assertTrue(caught, 'exception should be caught')
  assertTrue(errorMsg === "test error", 'error message should match')
}

main()
