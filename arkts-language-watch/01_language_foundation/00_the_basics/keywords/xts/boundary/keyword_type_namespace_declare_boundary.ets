/*
 * Case ID: KEYW-BOUND-009
 * Coverage ID:
 *   - KW-TS-001
 *   - KW-TS-002
 *   - KW-TS-003
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify type/namespace/declare keywords as TS contextual keywords.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If type alias is supported:
type MyType = number | string

// If namespace is supported:
namespace MyNamespace {
  export let value: number = 42
}

// If declare is supported:
declare var externalVar: number

function main(): void {
  // If type/namespace/declare work, they should compile.
  // If not supported, this file should fail to compile.
  assertTrue(true, 'type/namespace/declare keyword boundary documented')
}

main()
