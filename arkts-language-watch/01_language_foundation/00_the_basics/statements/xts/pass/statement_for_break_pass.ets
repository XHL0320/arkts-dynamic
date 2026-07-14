/*
 * Case ID: STMT-PASS-009
 * Coverage ID:
 *   - STMT-FOR-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify for loop with break exits early.. break exits the for loop immediately.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let found: number = -1
  for (let i: number = 0; i < 100; i++) {
    if (i === 5) {
      found = i
      break
    }
  }
  assertTrue(found === 5, 'break should exit when i reaches 5')
}

main()
