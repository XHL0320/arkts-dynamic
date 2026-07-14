/*
 * Case ID: THIS-PASS-008
 * Coverage ID:
 *   - TK-DCS-002
 *   - TK-DCS-004
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Description: Verify derived class this after super().
 * Notes: Original metadata: This Keyword Stage 1 Test point: derived class this after super().
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Base {
  baseValue: number
  constructor(v: number) { this.baseValue = v }
}

class Derived extends Base {
  derivedValue: number
  constructor(base: number, derived: number) {
    super(base)
    this.derivedValue = derived
  }
  getTotal(): number { return this.baseValue + this.derivedValue }
}

function main(): void {
  let d: Derived = new Derived(10, 20)
  assertTrue(d.getTotal() === 30, 'derived this after super works')
}

main()
