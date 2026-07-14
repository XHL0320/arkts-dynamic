/*
 * Case ID: FUNC-PASS-010
 * Coverage ID:
 *   - FUNCTION-TOTAL-0069
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify nested closure captures multiple lexical levels.. innermost function can read both outer and middle bindings.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function outer(): () => string {
  let a: string = 'A'
  function middle(): () => string {
    let b: string = 'B'
    return function(): string {
      return a + b
    }
  }
  return middle()
}

function main(): void {
  let read: () => string = outer()
  assertStringEqual(read(), 'AB', 'nested closure should capture multiple levels')
}

main()
