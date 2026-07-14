/*
 * Case ID: FUNC-PASS-023
 * Coverage ID:
 *   - FUNCTION-SCOPE-0003
 *   - FUNCTION-TOTAL-0035
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify inner binding shadows outer binding.. shadowing is local and does not mutate the outer binding.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function checkShadow(): string {
  let value: string = 'outer'
  function inner(): string {
    let value: string = 'inner'
    return value
  }
  return inner() + ':' + value
}

function main(): void {
  assertStringEqual(checkShadow(), 'inner:outer', 'inner binding should shadow only locally')
}

main()
