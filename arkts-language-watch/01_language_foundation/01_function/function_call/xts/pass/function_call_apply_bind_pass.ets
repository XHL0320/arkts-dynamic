/*
 * Case ID: FUNC-PASS-013
 * Coverage ID:
 *   - FUNCTION-CALL-0005
 *   - FUNCTION-CALL-0006
 *   - FUNCTION-TOTAL-0045
 *   - FUNCTION-TOTAL-0046
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify function behavior
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function add(a: number, b: number): number {
  return a + b
}

function main(): void {
  assertNumberEqual(add.apply(null, [1, 2]), 3, 'apply should pass argument list')
  let addOne = add.bind(null, 1)
  assertNumberEqual(addOne(4), 5, 'bind should fix leading argument')
}

main()
