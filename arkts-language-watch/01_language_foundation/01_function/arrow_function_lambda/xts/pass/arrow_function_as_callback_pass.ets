/*
 * Case ID: FUNC-PASS-001
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0005
 *   - FUNCTION-TOTAL-0061
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify arrow function as callback.. callback arrow executes with captured outer value.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function run(value: number, callback: (v: number) => number): number {
  return callback(value)
}

function main(): void {
  let offset: number = 5
  let result: number = run(2, (v: number): number => v + offset)
  assertNumberEqual(result, 7, 'arrow callback should execute and capture outer binding')
}

main()
