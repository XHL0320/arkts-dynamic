/*
 * Case ID: DECL-FAILR-003
 * Coverage ID:
 *   - DECL-CONST-003
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify const temporal dead zone.. reading a const binding before initialization throws a runtime exception.
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
  const value: number = 1
  assertTrue(thrown, 'expected TDZ runtime exception for const')
  assertTrue(value === 1, 'const should be initialized after declaration')
}

main()
