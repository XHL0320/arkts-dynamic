/*
 * Case ID: THIS-PASS-011
 * Coverage ID:
 *   - TK-MTHD-001
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_call_receiver_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function, builtin_api_watch
 * Spec Source: pending
 * Description: Verify method call receiver this.
 * Notes: Original expected behavior: obj.method() has this === obj.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let obj = {
  value: 42,
  getValue(): number { return this.value }
}

function main(): void {
  assertTrue(obj.getValue() === 42, 'method call this is receiver')
}

main()
