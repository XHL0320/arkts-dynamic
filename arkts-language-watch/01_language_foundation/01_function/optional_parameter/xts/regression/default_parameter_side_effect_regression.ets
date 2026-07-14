/*
 * Case ID: FUNC-REGR-006
 * Coverage ID:
 *   - FUNCTION-TOTAL-0092
 *   - OPTIONAL-PARAMETER-0010
 * Feature: function
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify function behavior
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

let count: number = 0

function next(): number {
  count++
  return count
}

function value(v: number = next()): number {
  return v
}

function main(): void {
  assertNumberEqual(value(), 1, 'first omitted argument should evaluate default once')
  assertNumberEqual(value(10), 10, 'provided argument should skip default evaluation')
  assertNumberEqual(count, 1, 'default side effect should run only once')
}

main()
