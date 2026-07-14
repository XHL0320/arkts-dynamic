/*
 * Case ID: FUNC-PASS-025
 * Coverage ID:
 *   - FUNCTION-TYPE-0005
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify basic callback execution.. callback receives argument and returns a value to caller.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function run(value: number, callback: (value: number) => number): number {
  return callback(value)
}

function main(): void {
  let result: number = run(4, function(value: number): number {
    return value * 2
  })
  assertNumberEqual(result, 8, 'callback should execute with argument')
}

main()
