/*
 * Case ID: THIS-PASS-004
 * Coverage ID:
 *   - TK-CAB-001
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_call_changes_this_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function, builtin_api_watch
 * Spec Source: pending
 * Description: Verify call changes this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: call changes this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj = { value: 42 }
  let result: number = getValue.call(obj)
  assertTrue(result === 42, 'call changes this to obj')
}

main()
