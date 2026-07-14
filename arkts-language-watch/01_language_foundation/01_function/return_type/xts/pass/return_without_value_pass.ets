/*
 * Case ID: FUNC-PASS-042
 * Coverage ID:
 *   - FUNCTION-TOTAL-0025
 *   - RETURN-TYPE-0001
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

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function value(): void {
  return
}

function main(): void {
  assertTrue(value() === undefined, 'return without value should produce undefined')
}

main()
