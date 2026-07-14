/*
 * Case ID: FUNC-BOUND-008
 * Coverage ID:
 *   - FUNCTION-TOTAL-0054
 *   - FUNCTION-TYPE-0007
 * Feature: function
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic function behavior has not been verified.
 * Description: Verify function object custom property.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function target(): number {
  return 1
}

function main(): void {
  let callable: Function = target
  assertTrue(callable !== undefined, 'function object boundary should keep callable value')
}

main()
