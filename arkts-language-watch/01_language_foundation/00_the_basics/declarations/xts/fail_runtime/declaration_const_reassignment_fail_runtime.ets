/*
 * Case ID: DECL-FAILR-002
 * Coverage ID:
 *   - DECL-CONST-002
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify const binding cannot be reassigned.. reassignment throws a runtime exception in dynamic ArkTS.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  const value: number = 1
  let thrown: boolean = false
  try {
    value = 2
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'expected runtime exception for const reassignment')
  assertTrue(value === 1, 'const binding value should remain unchanged')
}

main()
