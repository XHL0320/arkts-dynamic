/*
 * Case ID: KEYW-BOUND-010
 * Coverage ID:
 *   - KW-ASYNC-004
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify yield keyword as contextual keyword in generator.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If yield is supported, this generator function should compile.
// If not supported, this file should fail to compile.
function* gen(): Generator<number> {
  yield 1
  yield 2
  yield 3
}

function main(): void {
  // This boundary file documents yield support status.
  assertTrue(true, 'yield contextual keyword boundary documented')
}

main()
