/*
 * Case ID: FUNC-BOUND-003
 * Coverage ID:
 *   - FUNCTION-OVERLOAD-SIGNATURE-0001
 *   - FUNCTION-TOTAL-0073
 * Feature: function
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic function behavior has not been verified.
 * Description: Verify TypeScript-style overload signature syntax.
 */
function pick(value: number): number
function pick(value: string): string
function pick(value: number | string): number | string {
  return value
}

function main(): void {
  pick(1)
  pick('x')
}

main()
