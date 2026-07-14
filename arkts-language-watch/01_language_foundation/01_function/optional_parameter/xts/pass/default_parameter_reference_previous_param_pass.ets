/*
 * Case ID: FUNC-PASS-033
 * Coverage ID:
 *   - FUNCTION-TOTAL-0012
 *   - OPTIONAL-PARAMETER-0004
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function behavior. later default initializer sees the previous parameter binding.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function add(a: number, b: number = a + 1): number {
  return a + b
}

function main(): void {
  assertNumberEqual(add(2), 5, 'default parameter should read previous parameter')
}

main()
