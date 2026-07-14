/*
 * Case ID: DECL-FAILR-005
 * Coverage ID:
 *   - DECL-LET-003
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify let temporal dead zone.. reading a let binding before initialization throws a runtime exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let ignored = value
  } catch (e) {
    thrown = true
  }
  let value: number = 1
  assertTrue(thrown, 'expected TDZ runtime exception for let')
  assertTrue(value === 1, 'let should be initialized after declaration')
}

main()
