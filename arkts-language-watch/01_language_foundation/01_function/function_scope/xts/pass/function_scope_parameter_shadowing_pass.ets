/*
 * Case ID: FUNC-PASS-022
 * Coverage ID:
 *   - FUNCTION-SCOPE-0005
 *   - FUNCTION-TOTAL-0037
 * Feature: function
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 01_function
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify parameter value and local block shadowing.. block shadowing does not change the parameter binding.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function parameterShadow(value: string): string {
  let innerValue: string = ''
  {
    let value: string = 'block'
    innerValue = value
  }
  return innerValue + ':' + value
}

function main(): void {
  assertStringEqual(parameterShadow('param'), 'block:param', 'block binding should shadow parameter locally')
}

main()
