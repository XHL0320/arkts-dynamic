/*
 * Case ID: STMT-PASS-015
 * Coverage ID:
 *   - STMT-IF-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify if false branch does not execute.. when condition is false, the if body is skipped.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

function main(): void {
  let executed: boolean = false
  if (false) {
    executed = true
  }
  assertFalse(executed, 'false branch should not execute')

  let x: number = 5
  if (x > 10) {
    x = 100
  }
  assertTrue(x === 5, 'condition x > 10 is false, body skipped')
}

main()
