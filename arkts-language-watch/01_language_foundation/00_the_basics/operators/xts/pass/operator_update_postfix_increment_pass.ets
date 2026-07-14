/*
 * Case ID: OPER-PASS-025
 * Coverage ID:
 *   - OP-UPDATE-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify postfix increment.. x++ returns the old value and increments after returning.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 5
  let result: number = x++
  assertTrue(result === 5, 'postfix increment returns old value')
  assertTrue(x === 6, 'x is incremented after')
  let y: number = 0
  let old: number = y++
  assertTrue(old === 0, 'postfix on zero returns old value')
  assertTrue(y === 1, 'y is now 1')
}

main()
