/*
 * Case ID: KEYW-BOUND-006
 * Coverage ID:
 *   - KW-FUT-003
 *   - KW-STRICT-002
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify interface strict mode reserved word boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If interface is supported as TS type declaration:
interface MyInterface {
  value: number
  method(): string
}

function main(): void {
  // If interface works, it should be usable as a type.
  // If not supported, this file should fail to compile.
  assertTrue(true, 'interface strict reserved word boundary documented')
}

main()
