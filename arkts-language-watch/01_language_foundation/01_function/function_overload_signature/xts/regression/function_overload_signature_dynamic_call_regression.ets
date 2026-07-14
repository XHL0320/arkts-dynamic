/*
 * Case ID: FUNC-REGR-003
 * Coverage ID:
 *   - FUNCTION-OVERLOAD-SIGNATURE-0007
 * Feature: function
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify dynamic call to overload implementation.. if overload syntax is accepted, runtime behavior comes from the implementation function.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function convert(value: number): string
function convert(value: string): string
function convert(value: number | string): string {
  return '' + value
}

function main(): void {
  assertStringEqual(convert(3), '3', 'number overload call should use implementation')
  assertStringEqual(convert('x'), 'x', 'string overload call should use implementation')
}

main()
