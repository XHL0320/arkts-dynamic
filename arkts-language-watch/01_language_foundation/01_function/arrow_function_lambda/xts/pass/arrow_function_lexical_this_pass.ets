/*
 * Case ID: FUNC-PASS-004
 * Coverage ID:
 *   - ARROW-FUNCTION-LAMBDA-0006
 *   - FUNCTION-TOTAL-0059
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify arrow function lexical this.. arrow callback reads this from the surrounding method.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

class Counter {
  value: number = 9

  readWithArrow(): number {
    let read: () => number = (): number => this.value
    return read()
  }
}

function main(): void {
  let counter: Counter = new Counter()
  assertNumberEqual(counter.readWithArrow(), 9, 'arrow should capture lexical this')
}

main()
