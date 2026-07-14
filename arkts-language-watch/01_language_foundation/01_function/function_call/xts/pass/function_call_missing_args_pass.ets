/*
 * Case ID: FUNC-PASS-018
 * Coverage ID:
 *   - FUNCTION-CALL-0010
 *   - FUNCTION-TOTAL-0095
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify function behavior
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function missing(a: number, b?: number): boolean {
  return b === undefined
}

function main(): void {
  assertTrue(missing(1), 'missing argument should be undefined')
}

main()
