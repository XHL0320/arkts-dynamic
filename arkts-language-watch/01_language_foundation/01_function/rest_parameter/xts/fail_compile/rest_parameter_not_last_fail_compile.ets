/*
 * Case ID: FUNC-FAILC-003
 * Coverage ID:
 *   - FUNCTION-TOTAL-0021
 *   - REST-PARAMETER-0005
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

function invalid(...values: number[], last: number): number {
  return last
}
