/*
 * Case ID: OPER-PASS-015
 * Coverage ID:
 *   - OP-LOGICAL-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify logical AND short-circuit evaluation.. false && expr does not evaluate expr.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: boolean = false
  let result: boolean = false && (sideEffect = true)
  assertFalse(sideEffect, 'right side should not be evaluated when left is false')
  assertFalse(result, 'result should be false')
  assertTrue(true && true === true, 'true && true is true')
  assertTrue(true && false === false, 'true && false is false')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
