/*
 * Case ID: STMT-PASS-024
 * Coverage ID:
 *   - STMT-WHILE-001
 *   - STMT-WHILE-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify while loop basic execution.. loop body executes while condition is true.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  let sum: number = 0
  while (count < 5) {
    sum += count
    count++
  }
  assertTrue(count === 5, 'count should reach 5')
  assertTrue(sum === 10, 'sum should be 0+1+2+3+4=10')
}

main()
