/*
 * Case ID: FUNC-PASS-036
 * Coverage ID:
 *   - FUNCTION-TOTAL-0017
 *   - REST-PARAMETER-0001
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function behavior
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function count(...values: number[]): number {
  return values.length
}

function main(): void {
  assertNumberEqual(count(1, 2, 3), 3, 'rest parameter should collect all arguments')
}

main()
