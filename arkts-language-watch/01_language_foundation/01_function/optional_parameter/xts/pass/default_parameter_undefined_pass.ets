/*
 * Case ID: FUNC-PASS-034
 * Coverage ID:
 *   - FUNCTION-TOTAL-0011
 *   - OPTIONAL-PARAMETER-0003
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function behavior. passing undefined uses the default initializer.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function value(v: number = 20): number {
  return v
}

function main(): void {
  assertNumberEqual(value(undefined), 20, 'undefined should trigger default parameter')
}

main()
