/*
 * Case ID: FUNC-PASS-003
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0001
 *   - FUNCTION-TOTAL-0057
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify arrow function expression body.. expression body value is returned.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let addOne: (value: number) => number = (value: number): number => value + 1
  assertNumberEqual(addOne(4), 5, 'arrow expression body should return expression value')
}

main()
