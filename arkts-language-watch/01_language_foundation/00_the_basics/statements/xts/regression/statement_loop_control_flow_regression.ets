/*
 * Case ID: STMT-REGR-001
 * Coverage ID:
 *   - STMT-BREAK-006
 * Feature: language_basics
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify loop control flow with nested loops and break/continue.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let outerCount: number = 0
  let innerCount: number = 0

  for (let i: number = 0; i < 3; i++) {
    outerCount++
    for (let j: number = 0; j < 3; j++) {
      if (j === 1) {
        break
      }
      innerCount++
    }
  }

  assertTrue(outerCount === 3, 'outer loop should run 3 times')
  assertTrue(innerCount === 3, 'inner loop should accumulate 3 total (1 per outer iteration)')
}

main()
