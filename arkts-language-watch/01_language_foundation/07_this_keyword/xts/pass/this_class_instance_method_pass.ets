/*
 * Case ID: THIS-PASS-006
 * Coverage ID:
 *   - TK-CIM-001
 *   - TK-CIM-004
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class, 01_function
 * Spec Source: pending
 * Description: Verify class instance method this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: class instance method this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class InstanceMethod {
  value: number = 10
  getValue(): number { return this.value }
  setValue(v: number): void { this.value = v }
}

function main(): void {
  let obj: InstanceMethod = new InstanceMethod()
  assertTrue(obj.getValue() === 10, 'instance method this is receiver')
  obj.setValue(99)
  assertTrue(obj.getValue() === 99, 'instance method updates field via this')
}

main()
