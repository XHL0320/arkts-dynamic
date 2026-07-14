/*
 * Case ID: FUNC-PASS-038
 * Coverage ID:
 *   - FUNCTION-TOTAL-0019
 *   - REST-PARAMETER-0003
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function behavior
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function sum(first: number, ...rest: number[]): number {
  let result: number = first
  for (let i: number = 0; i < rest.length; i++) {
    result += rest[i]
  }
  return result
}

function main(): void {
  assertNumberEqual(sum(1, 2, 3), 6, 'normal and rest parameters should combine')
}

main()
