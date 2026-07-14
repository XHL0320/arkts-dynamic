/*
 * Case ID: FUNC-PASS-015
 * Coverage ID:
 *   - FUNCTION-CALL-0011
 *   - FUNCTION-TOTAL-0096
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

function addOne(v: number): number {
  return v + 1
}

function main(): void {
  let fn = addOne
  assertNumberEqual(fn(1), 2, 'function value should be callable')
}

main()
