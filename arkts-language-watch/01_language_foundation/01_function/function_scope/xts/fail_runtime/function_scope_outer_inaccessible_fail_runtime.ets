/*
 * Case ID: FUNC-FAILR-002
 * Coverage ID:
 *   - FUNCTION-SCOPE-0006
 *   - FUNCTION-TOTAL-0036
 * Feature: function
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: declarations
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify function local binding is inaccessible outside the function.. reading the internal binding outside its function throws a runtime exception.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function createLocal(): void {
  let hiddenValue: number = 1
}

function main(): void {
  let thrown: boolean = false
  createLocal()
  try {
    eval('hiddenValue')
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'function local binding should not be visible outside function')
}

main()
