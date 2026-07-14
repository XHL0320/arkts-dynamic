/*
 * Case ID: THIS-REGR-003
 * Coverage ID:
 *   - TK-CIM-001
 *   - TK-CIM-002
 * Feature: this_keyword
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_class_instance_regression.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify class instance this regression.
 * Notes: Original metadata: This Keyword Stage 1 Regression test. Test point: class instance this regression.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class RegressionClass {
  count: number = 0
  increment(): RegressionClass { this.count++; return this }
  decrement(): RegressionClass { this.count--; return this }
  getCount(): number { return this.count }
}

function main(): void {
  let c: RegressionClass = new RegressionClass()
  c.increment().increment().increment().decrement()
  assertTrue(c.getCount() === 2, 'regression: chained method this')
  assertTrue(c.count === 2, 'regression: field access via this')
}

main()
