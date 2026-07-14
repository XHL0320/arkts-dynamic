/*
 * Case ID: FUNC-FAILR-001
 * Coverage ID:
 *   - FUNCTION-CALL-0002
 *   - FUNCTION-TOTAL-0042
 * Feature: function
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify function behavior. runtime TypeError or equivalent runtime exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let value: any = 1
    value()
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'calling non-callable value should throw')
}

main()
