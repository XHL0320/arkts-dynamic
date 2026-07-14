/*
 * Case ID: THIS-PASS-010
 * Coverage ID:
 *   - TK-GS-001
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_getter_receiver_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Description: Verify getter receiver this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: getter receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class GetterTest {
  _value: number = 42
  get value(): number { return this._value }
}

function main(): void {
  let obj: GetterTest = new GetterTest()
  assertTrue(obj.value === 42, 'getter this is receiver')
}

main()
