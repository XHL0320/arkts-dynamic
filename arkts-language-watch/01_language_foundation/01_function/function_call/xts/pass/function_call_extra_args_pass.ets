/*
 * Case ID: FUNC-PASS-017
 * Coverage ID:
 *   - FUNCTION-CALL-0009
 *   - FUNCTION-TOTAL-0094
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify function behavior
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function first(a: number): number {
  return a
}

function main(): void {
  assertNumberEqual(first(1, 2, 3), 1, 'extra arguments should not change first parameter')
}

main()
