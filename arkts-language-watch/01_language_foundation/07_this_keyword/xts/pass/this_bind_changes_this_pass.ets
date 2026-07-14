/*
 * Case ID: THIS-PASS-003
 * Coverage ID:
 *   - TK-CAB-003
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_bind_changes_this_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function, builtin_api_watch
 * Spec Source: pending
 * Description: Verify bind changes this permanently.
 * Notes: Original metadata: This Keyword Stage 1 Test point: bind changes this permanently.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj = { value: 88 }
  let bound: () => number = getValue.bind(obj)
  assertTrue(bound() === 88, 'bind changes this to obj')
}

main()
