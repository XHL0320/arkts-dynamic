/*
 * Case ID: FUNC-PASS-028
 * Coverage ID:
 *   - FUNCTION-TOTAL-0049
 *   - FUNCTION-TYPE-0001
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function stored as a value.. function value can be assigned to a variable and called.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function add(a: number, b: number): number {
  return a + b
}

function main(): void {
  let fn: (a: number, b: number) => number = add
  assertNumberEqual(fn(2, 3), 5, 'function value should be callable')
}

main()
