/*
 * Case ID: FUNC-BOUND-001
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0007
 *   - FUNCTION-TOTAL-0060
 * Feature: function
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic function behavior has not been verified.
 * Description: Verify arrow function has no own arguments object.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function outer(a: number): boolean {
  let arrow: () => boolean = (): boolean => {
    return arguments[0] === a
  }
  return arrow()
}

function main(): void {
  assertTrue(outer(6), 'arrow arguments boundary should use surrounding arguments if supported')
}

main()
