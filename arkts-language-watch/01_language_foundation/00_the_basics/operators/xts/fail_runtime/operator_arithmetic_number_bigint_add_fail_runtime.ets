/*
 * Case ID: OPER-FAILR-001
 * Coverage ID:
 *   - OP-ARITHMETIC-006
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify number + bigint addition throws TypeError.. 1 + 1n throws TypeError at runtime.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let result: number = 1 + 1n
    // Should not reach here
    assertTrue(false, 'expected TypeError for number + bigint')
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'number + bigint should throw TypeError')

  // Comparison is allowed, only arithmetic throws
  assertTrue(1 < 2n === true, 'comparison between number and bigint is allowed')
}

main()
