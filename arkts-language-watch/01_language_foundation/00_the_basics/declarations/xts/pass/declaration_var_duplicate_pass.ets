/*
 * Case ID: DECL-PASS-005
 * Coverage ID:
 *   - DECL-VAR-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify duplicate var declaration in the same function scope.. duplicate var declarations are allowed and share one binding.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  var value: number = 1
  var value: number = 2
  assertTrue(value === 2, 'duplicate var declaration should use the same binding')
}

main()
