/*
 * Case ID: FUNC-PASS-019
 * Coverage ID:
 *   - FUNCTION-SCOPE-0004
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify block scope inside a function.. block-scoped binding can be used inside the block and outer binding remains stable.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function blockScope(): string {
  let value: string = 'outer'
  let seen: string = ''
  {
    let value: string = 'block'
    seen = value
  }
  return seen + ':' + value
}

function main(): void {
  assertStringEqual(blockScope(), 'block:outer', 'block binding should not replace function binding')
}

main()
