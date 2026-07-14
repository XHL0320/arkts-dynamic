/*
 * Case ID: STMT-PASS-016
 * Coverage ID:
 *   - STMT-IF-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify if true branch executes.. when condition is true, the if body executes.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let executed: boolean = false
  if (true) {
    executed = true
  }
  assertTrue(executed, 'true branch should execute')

  let x: number = 5
  if (x > 0) {
    x = 10
  }
  assertTrue(x === 10, 'condition x > 0 is true, body executes')
}

main()
