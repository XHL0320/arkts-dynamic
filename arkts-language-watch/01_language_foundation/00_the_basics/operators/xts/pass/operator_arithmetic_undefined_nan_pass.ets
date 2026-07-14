/*
 * Case ID: OPER-PASS-004
 * Coverage ID:
 *   - OP-ARITHMETIC-005
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify undefined arithmetic produces NaN.. undefined + 1 is NaN.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let result: number = undefined + 1
  assertTrue(result !== result, 'undefined + 1 should be NaN')
  let product: number = undefined * 2
  assertTrue(product !== product, 'undefined * 2 should be NaN')
}

main()
