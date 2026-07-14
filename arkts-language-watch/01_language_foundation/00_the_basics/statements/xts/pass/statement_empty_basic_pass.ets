/*
 * Case ID: STMT-PASS-006
 * Coverage ID:
 *   - STMT-EMPTY-001
 *   - STMT-EMPTY-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify empty statement does not affect execution.. empty statements are no-ops.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 0
  ;
  ;
  ;
  x = 5
  assertTrue(x === 5, 'empty statements do not affect execution')

  let count: number = 0
  while (count < 3) { count++ }
  ;
  assertTrue(count === 3, 'empty statement after loop is fine')
}

main()
