/*
 * Case ID: FUNC-PASS-002
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0002
 *   - FUNCTION-TOTAL-0058
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify arrow function block body.. block body uses explicit return.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let add: (a: number, b: number) => number = (a: number, b: number): number => {
    return a + b
  }
  assertNumberEqual(add(2, 3), 5, 'arrow block body should return explicit value')
}

main()
