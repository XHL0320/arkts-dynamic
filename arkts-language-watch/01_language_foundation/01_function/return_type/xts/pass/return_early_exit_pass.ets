/*
 * Case ID: FUNC-PASS-039
 * Coverage ID:
 *   - FUNCTION-TOTAL-0027
 *   - RETURN-TYPE-0003
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

function value(): number {
  let result: number = 1
  return result
  result = 2
}

function main(): void {
  assertNumberEqual(value(), 1, 'return should stop later statements')
}

main()
