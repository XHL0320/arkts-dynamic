/*
 * Case ID: FUNC-PASS-009
 * Coverage ID:
 *   - CLOSURE-0004
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify multiple closure instances are isolated.. each closure owns its captured environment.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function makeCounter(start: number): () => number {
  let value: number = start
  return function(): number {
    value = value + 1
    return value
  }
}

function main(): void {
  let first: () => number = makeCounter(0)
  let second: () => number = makeCounter(10)
  assertNumberEqual(first(), 1, 'first counter should update independently')
  assertNumberEqual(second(), 11, 'second counter should update independently')
  assertNumberEqual(first(), 2, 'first counter should keep its own environment')
}

main()
