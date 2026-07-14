/*
 * Case ID: OPER-FAILR-004
 * Coverage ID:
 *   - OP-TYPEOF-OPERATOR-006
 *   - OP-UNARY-006
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify typeof on TDZ variable throws ReferenceError.. typeof x where x is in TDZ throws ReferenceError.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    // Accessing x before its declaration line — x is in TDZ
    let type: string = typeof x
  } catch (e) {
    thrown = true
  }
  let x: number = 42
  assertTrue(thrown, 'typeof TDZ variable should throw ReferenceError')
  assertTrue(typeof x === "number", 'typeof after declaration works')
}

main()
