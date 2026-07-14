/*
 * Case ID: FUNC-FAILC-001
 * Coverage ID:
 *   - FUNCTION-OVERLOAD-SIGNATURE-0006
 * Feature: function
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify function behavior. compile error.
 */
function duplicateImpl(value: number): number {
  return value
}

function duplicateImpl(value: string): string {
  return value
}
