/*
 * Case ID: FUNC-PASS-037
 * Coverage ID:
 *   - FUNCTION-TOTAL-0018
 *   - REST-PARAMETER-0002
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
  assertNumberEqual(count(), 0, 'rest parameter should be empty')
}

main()
