/*
 * Case ID: THIS-REGR-004
 * Coverage ID:
 *   - TK-DCS-002
 *   - TK-DCS-005
 * Feature: this_keyword
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_derived_super_regression.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify derived super/this regression.
 * Notes: Original metadata: This Keyword Stage 1 Regression test. Test point: derived super/this regression.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class BaseReg {
  base: number
  constructor(v: number) { this.base = v }
  getBase(): number { return this.base }
}

class DerivedReg extends BaseReg {
  derived: number
  constructor(b: number, d: number) {
    super(b)
    this.derived = d
  }
  getTotal(): number { return this.base + this.derived }
}

function main(): void {
  let d: DerivedReg = new DerivedReg(10, 20)
  assertTrue(d.getBase() === 10, 'regression: derived this base access')
  assertTrue(d.getTotal() === 30, 'regression: derived this total')
  assertTrue(d.base === 10, 'regression: derived this field base')
  assertTrue(d.derived === 20, 'regression: derived this field derived')
}

main()
