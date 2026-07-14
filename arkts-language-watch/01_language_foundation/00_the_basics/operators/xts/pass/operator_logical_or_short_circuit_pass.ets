/*
 * Case ID: OPER-PASS-017
 * Coverage ID:
 *   - OP-LOGICAL-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify logical OR short-circuit evaluation.. true || expr does not evaluate expr.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: boolean = false
  let result: boolean = true || (sideEffect = true)
  assertFalse(sideEffect, 'right side should not be evaluated when left is true')
  assertTrue(result, 'result should be true')
  assertTrue(false || true === true, 'false || true is true')
  assertTrue(false || false === false, 'false || false is false')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
