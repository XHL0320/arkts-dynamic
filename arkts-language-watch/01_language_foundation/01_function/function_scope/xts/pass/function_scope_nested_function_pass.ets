/*
 * Case ID: FUNC-PASS-021
 * Coverage ID:
 *   - FUNCTION-SCOPE-0002
 *   - FUNCTION-TOTAL-0034
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify nested function reads outer function variable.. nested function resolves the outer lexical environment.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function outer(): number {
  let base: number = 3
  function inner(): number {
    return base + 4
  }
  return inner()
}

function main(): void {
  assertNumberEqual(outer(), 7, 'nested function should read outer binding')
}

main()
