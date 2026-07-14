/*
 * Case ID: FUNC-PASS-027
 * Coverage ID:
 *   - FUNCTION-TOTAL-0051
 *   - FUNCTION-TYPE-0003
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function returned as value.. returned function can be stored and called.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function makePrefixer(prefix: string): (value: string) => string {
  return function(value: string): string {
    return prefix + value
  }
}

function main(): void {
  let prefix: (value: string) => string = makePrefixer('ark')
  assertStringEqual(prefix('ts'), 'arkts', 'returned function should be callable')
}

main()
