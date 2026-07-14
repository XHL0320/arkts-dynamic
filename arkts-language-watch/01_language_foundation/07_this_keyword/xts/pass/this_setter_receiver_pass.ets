/*
 * Case ID: THIS-PASS-015
 * Coverage ID:
 *   - TK-GS-002
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_setter_receiver_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Description: Verify setter receiver this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: setter receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class SetterTest {
  _value: number = 0
  get value(): number { return this._value }
  set value(v: number) { this._value = v }
}

function main(): void {
  let obj: SetterTest = new SetterTest()
  obj.value = 99
  assertTrue(obj.value === 99, 'setter this is receiver')
}

main()
