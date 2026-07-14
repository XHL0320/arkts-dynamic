/*
 * Case ID: FUNC-PASS-040
 * Coverage ID:
 *   - FUNCTION-TOTAL-0028
 *   - RETURN-TYPE-0004
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
  try {
    return 1
  } finally {
    return 2
  }
}

function main(): void {
  assertNumberEqual(value(), 2, 'finally return should override try return')
}

main()
