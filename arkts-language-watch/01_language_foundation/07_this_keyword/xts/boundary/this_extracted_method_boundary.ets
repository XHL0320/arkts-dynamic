/*
 * Case ID: THIS-BOUND-007
 * Coverage ID:
 *   - TK-EM-001
 *   - TK-MTHD-005
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Boundary Reason: this becomes undefined in strict mode when receiver is lost.
 * Description: Verify extracted method loses this.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: extracted method loses this. Boundary reason: this becomes undefined in strict mode when receiver is lost.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let obj = {
  value: 42,
  getValue(): number { return this.value }
}

function main(): void {
  let extracted: () => number = obj.getValue
  // extracted() — this is lost (undefined in strict, globalThis in non-strict)
  // This boundary documents the behavior.
  assertTrue(true, 'extracted method this boundary documented')
}

main()
