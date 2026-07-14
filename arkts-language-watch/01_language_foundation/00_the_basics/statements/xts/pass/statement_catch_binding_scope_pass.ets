/*
 * Case ID: STMT-PASS-003
 * Coverage ID:
 *   - STMT-TRY-006
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify catch binding scope is block-level.. catch parameter is only visible inside catch block.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let caughtValue: string = ""
  try {
    throw new Error("test")
  } catch (e) {
    caughtValue = (e as Error).message
  }
  // e is not accessible here (block-scoped to catch)
  assertTrue(caughtValue === "test", 'catch binding should be accessible inside catch block')
}

main()
