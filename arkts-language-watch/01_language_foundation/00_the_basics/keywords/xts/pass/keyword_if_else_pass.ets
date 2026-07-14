/*
 * Case ID: KEYW-PASS-005
 * Coverage ID:
 *   - KW-STMT-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify if/else keywords in valid positions.. if/else keywords work as conditional statement.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 5
  if (x > 0) {
    assertTrue(true, 'if branch executed')
  } else {
    assertTrue(false, 'else should not execute')
  }
}

main()
