/*
 * Case ID: THIS-REGR-001
 * Coverage ID:
 *   - TK-ARR-001
 *   - TK-ARR-002
 * Feature: this_keyword
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_arrow_lexical_regression.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify arrow lexical this regression.
 * Notes: Original metadata: This Keyword Stage 1 Regression test. Test point: arrow lexical this regression.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class RegressionArrow {
  value: number = 42
  outer(): () => number {
    let inner = (): number => {
      let deepest = (): number => this.value
      return deepest()
    }
    return inner
  }
}

function main(): void {
  let test: RegressionArrow = new RegressionArrow()
  let fn: () => number = test.outer()
  assertTrue(fn() === 42, 'regression: deep nested arrow preserves this')
}

main()
