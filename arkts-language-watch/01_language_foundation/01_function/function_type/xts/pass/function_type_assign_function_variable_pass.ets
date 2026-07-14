/*
 * Case ID: FUNC-PASS-024
 * Coverage ID:
 *   - FUNCTION-TYPE-0004
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function variable reassignment.. a function-typed variable can point to another compatible function value.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function addOne(value: number): number {
  return value + 1
}

function addTwo(value: number): number {
  return value + 2
}

function main(): void {
  let fn: (value: number) => number = addOne
  assertNumberEqual(fn(1), 2, 'first function assignment')
  fn = addTwo
  assertNumberEqual(fn(1), 3, 'second function assignment')
}

main()
