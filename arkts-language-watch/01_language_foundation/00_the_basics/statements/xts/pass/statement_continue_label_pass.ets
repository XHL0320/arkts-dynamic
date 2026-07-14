/*
 * Case ID: STMT-PASS-004
 * Coverage ID:
 *   - STMT-CONTINUE-002
 *   - STMT-LABEL-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify continue with label jumps to outer loop next iteration.. continue label skips to the next iteration of the labelled loop.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  outer: for (let i: number = 0; i < 3; i++) {
    for (let j: number = 0; j < 3; j++) {
      if (j === 1) {
        continue outer
      }
      count++
    }
  }
  assertTrue(count === 3, 'continue outer should skip j=1 for each i, count=3')
}

main()
