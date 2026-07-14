/*
 * Case ID: THIS-PASS-014
 * Coverage ID:
 *   - TK-OLM-001
 *   - TK-OLM-002
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Description: Verify object literal method this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: object literal method this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let literal = {
  name: "test",
  getName(): string { return this.name }
}

function main(): void {
  assertTrue(literal.getName() === "test", 'object literal method this')
}

main()
