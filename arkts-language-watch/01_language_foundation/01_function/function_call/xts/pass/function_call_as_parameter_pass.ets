/*
 * Case ID: FUNC-PASS-014
 * Coverage ID:
 *   - FUNCTION-CALL-0012
 *   - FUNCTION-TOTAL-0097
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

function run(cb: (v: number) => number): number {
  return cb(3)
}

function double(v: number): number {
  return v * 2
}

function main(): void {
  assertNumberEqual(run(double), 6, 'function parameter should be invoked')
}

main()
