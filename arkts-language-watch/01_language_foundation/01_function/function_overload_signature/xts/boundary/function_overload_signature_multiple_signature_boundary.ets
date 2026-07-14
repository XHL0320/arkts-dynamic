/*
 * Case ID: FUNC-BOUND-004
 * Coverage ID:
 *   - FUNCTION-OVERLOAD-SIGNATURE-0003
 * Feature: function
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic function behavior has not been verified.
 * Description: Verify multiple overload signatures and one implementation.
 */
function format(value: number): string
function format(value: boolean): string
function format(value: string): string
function format(value: number | boolean | string): string {
  return '' + value
}

function main(): void {
  format(1)
  format(true)
  format('ok')
}

main()
