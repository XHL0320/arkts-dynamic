/*
 * Case ID: DECL-BOUND-001
 * Coverage ID:
 *   - DECL-FUNC-003
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify block-level function declaration.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let result: number = 0
  if (true) {
    function blockFunction(): number {
      return 1
    }
    result = blockFunction()
  }
  assertTrue(result === 1, 'block-level function should be callable inside block')
}

main()
