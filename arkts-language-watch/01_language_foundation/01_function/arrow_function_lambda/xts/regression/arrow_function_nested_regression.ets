/*
 * Case ID: FUNC-REGR-001
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0008
 *   - FUNCTION-TOTAL-0062
 * Feature: function
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify nested arrow function regression.. nested arrows preserve captured lexical bindings.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createAdder(base: number): (value: number) => number {
  let outer: (step: number) => (value: number) => number = (step: number): (value: number) => number => {
    return (value: number): number => base + step + value
  }
  return outer(2)
}

function main(): void {
  let add: (value: number) => number = createAdder(3)
  assertNumberEqual(add(4), 9, 'nested arrow should preserve lexical bindings')
}

main()
