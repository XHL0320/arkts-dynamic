/*
 * Case ID: STMT-PASS-008
 * Coverage ID:
 *   - STMT-FOR-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify for loop basic execution.. init, condition, body, update execute in correct order.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sum: number = 0
  for (let i: number = 0; i < 5; i++) {
    sum += i
  }
  assertTrue(sum === 10, 'sum should be 0+1+2+3+4=10')
}

main()
