/*
 * Case ID: FUNC-PASS-030
 * Coverage ID:
 *   - FUNCTION-TOTAL-0010
 *   - OPTIONAL-PARAMETER-0002
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function behavior. default parameter is used when an argument is omitted.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function value(v: number = 10): number {
  return v
}

function main(): void {
  assertNumberEqual(value(), 10, 'default parameter should be used')
  assertNumberEqual(value(5), 5, 'explicit argument should be used')
}

main()
