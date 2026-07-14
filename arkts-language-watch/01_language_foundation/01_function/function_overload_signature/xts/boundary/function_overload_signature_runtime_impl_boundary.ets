/*
 * Case ID: FUNC-BOUND-006
 * Coverage ID:
 *   - FUNCTION-OVERLOAD-SIGNATURE-0002
 *   - FUNCTION-TOTAL-0075
 * Feature: function
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic function behavior has not been verified.
 * Description: Verify overload signatures with one implementation.
 */
function choose(value: number): number
function choose(value: string): string
function choose(value: number | string): number | string {
  return value
}

function main(): void {
  choose(2)
  choose('two')
}

main()
