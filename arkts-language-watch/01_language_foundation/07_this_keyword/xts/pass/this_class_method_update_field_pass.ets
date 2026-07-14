/*
 * Case ID: THIS-PASS-007
 * Coverage ID:
 *   - TK-CIM-001
 *   - TK-CIM-005
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_method_update_field_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class, 01_function
 * Spec Source: pending
 * Description: Verify class method updates field via this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: class method updates field via this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Counter {
  count: number = 0
  increment(): void { this.count++ }
  decrement(): void { this.count-- }
  getCount(): number { return this.count }
}

function main(): void {
  let c: Counter = new Counter()
  c.increment()
  c.increment()
  c.increment()
  c.decrement()
  assertTrue(c.getCount() === 2, 'class method updates field via this')
}

main()
