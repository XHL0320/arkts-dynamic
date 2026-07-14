/*
 * Case ID: FUNC-PASS-012
 * Coverage ID:
 *   - FUNCTION-TOTAL-0066
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify closure updates outer variable.. repeated calls observe the same captured binding.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createCounter(): () => number {
  let count: number = 0
  return function(): number {
    count = count + 1
    return count
  }
}

function main(): void {
  let next: () => number = createCounter()
  assertNumberEqual(next(), 1, 'first closure update')
  assertNumberEqual(next(), 2, 'second closure update')
}

main()
