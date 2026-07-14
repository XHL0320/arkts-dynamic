/*
 * Case ID: STMT-PASS-010
 * Coverage ID:
 *   - STMT-CONTINUE-001
 *   - STMT-FOR-004
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify for loop with continue skips current iteration.. continue jumps to update, skipping remaining body.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sum: number = 0
  for (let i: number = 0; i < 5; i++) {
    if (i === 2) {
      continue
    }
    sum += i
  }
  assertTrue(sum === 10, 'sum should be 0+1+3+4=10 (skipping 2)')
}

main()
