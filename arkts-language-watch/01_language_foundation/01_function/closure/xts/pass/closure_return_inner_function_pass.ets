/*
 * Case ID: FUNC-PASS-011
 * Coverage ID:
 *   - CLOSURE-0003
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify outer function returns inner function.. returned function remains callable after outer returns.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function makeGreeter(name: string): () => string {
  return function(): string {
    return 'hello ' + name
  }
}

function main(): void {
  let greet: () => string = makeGreeter('arkts')
  assertStringEqual(greet(), 'hello arkts', 'returned inner function should preserve captured parameter')
}

main()
