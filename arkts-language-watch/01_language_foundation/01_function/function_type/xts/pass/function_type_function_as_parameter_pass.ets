/*
 * Case ID: FUNC-PASS-026
 * Coverage ID:
 *   - FUNCTION-TOTAL-0050
 *   - FUNCTION-TYPE-0002
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function passed as parameter.. callee can invoke the callback parameter.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function applyTwice(value: number, fn: (v: number) => number): number {
  return fn(fn(value))
}

function inc(value: number): number {
  return value + 1
}

function main(): void {
  assertNumberEqual(applyTwice(1, inc), 3, 'function parameter should be callable')
}

main()
