/*
 * Case ID: FUNC-PASS-041
 * Coverage ID:
 *   - FUNCTION-TOTAL-0026
 *   - RETURN-TYPE-0002
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
  return 7
}

function main(): void {
  assertNumberEqual(value(), 7, 'return should produce a value')
}

main()
