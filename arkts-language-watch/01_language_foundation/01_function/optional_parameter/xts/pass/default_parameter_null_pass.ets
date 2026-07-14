/*
 * Case ID: FUNC-PASS-032
 * Coverage ID:
 *   - FUNCTION-TOTAL-0091
 *   - OPTIONAL-PARAMETER-0009
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function behavior. null is passed as the actual argument.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function isNull(v: Object | null = new Object()): boolean {
  return v === null
}

function main(): void {
  assertTrue(isNull(null), 'null should not trigger default parameter')
}

main()
