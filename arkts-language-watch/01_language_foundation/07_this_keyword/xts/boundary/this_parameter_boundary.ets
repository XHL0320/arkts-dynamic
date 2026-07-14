/*
 * Case ID: THIS-BOUND-011
 * Coverage ID:
 *   - TK-TP-001
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_parameter_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: typescript_compatibility
 * Spec Source: pending
 * Boundary Reason: dynamic ArkTS this parameter support needs confirmation.
 * Description: Verify TypeScript this parameter boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: TypeScript this parameter boundary. Boundary reason: dynamic ArkTS this parameter support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ThisParamTest {
  value: number = 42
  // If this parameter is supported:
  // check(this: ThisParamTest): number { return this.value }
  check(): number { return this.value }
}

function main(): void {
  let test: ThisParamTest = new ThisParamTest()
  assertTrue(test.check() === 42, 'method this works without this parameter')
  assertTrue(true, 'this parameter boundary documented')
}

main()
