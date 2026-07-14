/*
 * Case ID: THIS-PASS-012
 * Coverage ID:
 *   - TK-MTHD-001
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_receiver_update_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Description: Verify method receiver this can update object state.
 * Notes: Original metadata: This Keyword Stage 1 Test point: method receiver this can update object state.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let counter = {
  count: 0,
  increment(): void { this.count++ },
  getCount(): number { return this.count }
}

function main(): void {
  counter.increment()
  counter.increment()
  counter.increment()
  assertTrue(counter.getCount() === 3, 'method this updates state')
}

main()
