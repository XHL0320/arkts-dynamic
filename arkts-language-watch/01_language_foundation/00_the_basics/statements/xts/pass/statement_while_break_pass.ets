/*
 * Case ID: STMT-PASS-025
 * Coverage ID:
 *   - STMT-BREAK-001
 *   - STMT-WHILE-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify while loop with break exits early.. break exits the while loop immediately.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  while (true) {
    if (count >= 3) {
      break
    }
    count++
  }
  assertTrue(count === 3, 'break should exit when count reaches 3')
}

main()
