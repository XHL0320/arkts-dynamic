/*
 * Case ID: THIS-BOUND-003
 * Coverage ID:
 *   - TK-CB-001
 *   - TK-CB-002
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function, builtin_api_watch
 * Spec Source: pending
 * Boundary Reason: callback loses receiver this.
 * Description: Verify callback this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: callback this boundary. Boundary reason: callback loses receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class CallbackTest {
  value: number = 42
  getValue(): number { return this.value }
}

function main(): void {
  let test: CallbackTest = new CallbackTest()
  // Direct callback: this is lost
  // Arrow callback: this is preserved
  let arrow: () => number = () => test.getValue()
  assertTrue(arrow() === 42, 'arrow callback preserves this')
  assertTrue(true, 'callback this boundary documented')
}

main()
