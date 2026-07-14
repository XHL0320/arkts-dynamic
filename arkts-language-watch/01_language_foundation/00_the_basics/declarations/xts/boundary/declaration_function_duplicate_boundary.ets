/*
 * Case ID: DECL-BOUND-002
 * Coverage ID:
 *   - DECL-FUNC-005
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify duplicate function declaration in the same scope.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function value(): number {
  return 1
}

function value(): number {
  return 2
}

function main(): void {
  assertTrue(value() === 2, 'duplicate function declaration boundary expects later declaration')
}

main()
