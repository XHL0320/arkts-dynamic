/*
 * Case ID: FUNC-REGR-004
 * Coverage ID:
 *   - FUNCTION-SCOPE-0008
 * Feature: function
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: declarations
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify nested lexical resolution regression.. nearest binding wins, and outer binding remains reachable through another nested function.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function resolveNested(): string {
  let value: string = 'outer'
  function middle(): string {
    let value: string = 'middle'
    function inner(): string {
      return value
    }
    return inner()
  }
  return middle() + ':' + value
}

function main(): void {
  assertStringEqual(resolveNested(), 'middle:outer', 'nested resolution should use nearest lexical binding')
}

main()
