/*
 * Case ID: FUNC-PASS-006
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0003
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify arrow function with a single parameter.. single parameter is bound correctly.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let wrap: (value: string) => string = (value: string): string => '[' + value + ']'
  assertStringEqual(wrap('x'), '[x]', 'single parameter arrow should bind argument')
}

main()
