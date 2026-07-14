/*
 * Case ID: THIS-PASS-001
 * Coverage ID:
 *   - TK-CAB-002
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_apply_changes_this_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function, builtin_api_watch
 * Spec Source: pending
 * Description: Verify apply changes this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: apply changes this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj = { value: 55 }
  let result: number = getValue.apply(obj)
  assertTrue(result === 55, 'apply changes this to obj')
}

main()
