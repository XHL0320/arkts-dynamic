/*
 * Case ID: FUNC-PASS-016
 * Coverage ID:
 *   - FUNCTION-CALL-0001
 *   - FUNCTION-TOTAL-0041
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

function add(a: number, b: number): number {
  return a + b
}

function main(): void {
  assertNumberEqual(add(1, 2), 3, 'ordinary function call should return result')
}

main()
