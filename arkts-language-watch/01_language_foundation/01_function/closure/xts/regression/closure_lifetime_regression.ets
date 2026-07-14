/*
 * Case ID: FUNC-REGR-002
 * Coverage ID:
 *   - FUNCTION-TOTAL-0067
 * Feature: function
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify closure lifetime regression.. captured environment survives after the creator function returns.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createAppender(prefix: string): (value: string) => string {
  let suffix: string = '-done'
  return function(value: string): string {
    return prefix + value + suffix
  }
}

function main(): void {
  let append: (value: string) => string = createAppender('start-')
  assertStringEqual(append('work'), 'start-work-done', 'closure environment should survive outer return')
}

main()
