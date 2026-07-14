/*
 * Case ID: FUNC-FAILR-003
 * Coverage ID:
 *   - FUNCTION-TOTAL-0053
 *   - FUNCTION-TYPE-0008
 * Feature: function
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify calling a non-function value.. runtime exception is thrown.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    eval('let value = 1; value()')
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'calling non-function should throw')
}

main()
