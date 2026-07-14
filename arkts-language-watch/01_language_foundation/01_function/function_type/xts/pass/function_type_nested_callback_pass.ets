/*
 * Case ID: FUNC-PASS-029
 * Coverage ID:
 *   - FUNCTION-TYPE-0006
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify nested callback execution.. callbacks can be composed through nested function calls.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function outer(value: number, callback: (value: number) => number): number {
  function inner(input: number): number {
    return callback(input) + 1
  }
  return inner(value)
}

function main(): void {
  let result: number = outer(5, function(value: number): number {
    return value + 2
  })
  assertNumberEqual(result, 8, 'nested callback should preserve call flow')
}

main()
