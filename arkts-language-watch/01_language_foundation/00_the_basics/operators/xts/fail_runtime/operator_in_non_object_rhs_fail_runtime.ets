/*
 * Case ID: OPER-FAILR-002
 * Coverage ID:
 *   - OP-IN-OPERATOR-005
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify in operator with non-object right-hand side throws TypeError.. "x" in 42 throws TypeError.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    // Using a variable to avoid compile-time type errors
    let nonObject: number = 42
    let exists: boolean = "x" in (nonObject as Object)
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'in operator with non-object RHS should throw TypeError')

  // Valid usage for contrast
  let obj: Record<string, number> = { x: 1 }
  assertTrue("x" in obj, 'valid in operator usage')
}

main()
