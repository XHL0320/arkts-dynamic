/*
 * Case ID: OPER-FAILR-003
 * Coverage ID:
 *   - OP-INSTANCEOF-005
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify instanceof with non-callable right-hand side throws TypeError.. x instanceof 42 throws TypeError.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Dummy {}

function main(): void {
  let thrown: boolean = false
  try {
    let nonCallable: number = 42
    let result: boolean = (new Dummy()) instanceof (nonCallable as Function)
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'instanceof with non-callable RHS should throw TypeError')

  // Valid usage for contrast
  let d: Dummy = new Dummy()
  assertTrue(d instanceof Dummy, 'valid instanceof usage')
}

main()
