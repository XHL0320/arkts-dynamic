/*
 * Case ID: FUNC-PASS-005
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0004
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify arrow function with multiple parameters.. all parameters are bound in order.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let calc: (a: number, b: number, c: number) => number = (a: number, b: number, c: number): number => a + b * c
  assertNumberEqual(calc(1, 2, 3), 7, 'multiple parameter arrow should bind arguments in order')
}

main()
