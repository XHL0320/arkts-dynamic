/*
 * Case ID: FUNC-PASS-007
 * Coverage ID:
 *   - FUNCTION-TOTAL-0065
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify closure captures outer variable.. returned inner function reads the captured binding.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createReader(): () => number {
  let value: number = 11
  return function(): number {
    return value
  }
}

function main(): void {
  let read: () => number = createReader()
  assertNumberEqual(read(), 11, 'closure should capture outer variable')
}

main()
