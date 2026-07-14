/*
 * Case ID: STMT-PASS-023
 * Coverage ID:
 *   - STMT-TRY-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify try-finally executes finally block.. finally always executes regardless of exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let finallyExecuted: boolean = false
  try {
    let x: number = 1 + 1
  } finally {
    finallyExecuted = true
  }
  assertTrue(finallyExecuted, 'finally should execute even without exception')

  let finallyAfterThrow: boolean = false
  try {
    try {
      throw new Error("inner")
    } finally {
      finallyAfterThrow = true
    }
  } catch (e) {
    // expected
  }
  assertTrue(finallyAfterThrow, 'finally should execute even when exception occurs')
}

main()
