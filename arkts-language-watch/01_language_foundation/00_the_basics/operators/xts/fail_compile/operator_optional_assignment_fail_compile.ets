/*
 * Case ID: OPER-FAILC-001
 * Coverage ID:
 *   - OP-OPTIONAL-CHAINING-006
 * Feature: language_basics
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify operators behavior
 */
function main(): void {
  let obj: Record<string, number> = { value: 1 }
  obj?.value = 2
}
