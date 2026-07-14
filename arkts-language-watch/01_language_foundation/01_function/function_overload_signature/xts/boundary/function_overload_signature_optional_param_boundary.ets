/*
 * Case ID: FUNC-BOUND-005
 * Coverage ID:
 *   - FUNCTION-OVERLOAD-SIGNATURE-0004
 *   - FUNCTION-TOTAL-0077
 * Feature: function
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic function behavior has not been verified.
 * Description: Verify overload signature with optional parameter.
 */
function joinText(value: string): string
function joinText(value: string, suffix?: string): string
function joinText(value: string, suffix?: string): string {
  if (suffix === undefined) {
    return value
  }
  return value + suffix
}

function main(): void {
  joinText('a')
  joinText('a', 'b')
}

main()
