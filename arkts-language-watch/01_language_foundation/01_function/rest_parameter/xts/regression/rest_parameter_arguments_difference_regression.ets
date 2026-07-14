/*
 * Case ID: FUNC-REGR-007
 * Coverage ID:
 *   - FUNCTION-TOTAL-0020
 *   - REST-PARAMETER-0004
 * Feature: function
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify function behavior
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function check(...values: number[]): void {
  assertTrue(values.length === 2, 'rest should collect two values')
  assertTrue(arguments.length === 2, 'arguments should also observe two arguments')
  assertTrue(values !== arguments, 'rest array should not be the arguments object')
}

function main(): void {
  check(1, 2)
}

main()
