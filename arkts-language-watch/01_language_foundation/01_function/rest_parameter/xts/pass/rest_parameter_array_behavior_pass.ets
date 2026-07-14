/*
 * Case ID: FUNC-PASS-035
 * Coverage ID:
 *   - FUNCTION-TOTAL-0093
 *   - REST-PARAMETER-0009
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

function firstRest(...values: number[]): number {
  values.push(4)
  return values[0] + values.length
}

function main(): void {
  assertNumberEqual(firstRest(10, 20), 13, 'rest parameter should support array operations')
}

main()
