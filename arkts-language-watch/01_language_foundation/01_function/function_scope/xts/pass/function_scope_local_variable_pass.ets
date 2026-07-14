/*
 * Case ID: FUNC-PASS-020
 * Coverage ID:
 *   - FUNCTION-SCOPE-0001
 *   - FUNCTION-TOTAL-0033
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify function local variable scope.. local variables are readable inside the function body.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function readLocal(): number {
  let value: number = 10
  return value
}

function main(): void {
  assertNumberEqual(readLocal(), 10, 'local variable should be visible inside function')
}

main()
