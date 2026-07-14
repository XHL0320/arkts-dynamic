/*
 * Case ID: NULL-PASS-002
 * Coverage ID:
 *   - NS-DEFPARAM-001
 *   - NS-DEFPARAM-003
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify default parameter with undefined uses default value.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function multiply(a: number, b: number = 2): number {
  return a * b
}

function main(): void {
  assertTrue(multiply(5) === 10, 'default parameter omitted')
  assertTrue(multiply(5, 3) === 15, 'default parameter provided')
  assertTrue(multiply(5, undefined) === 10, 'default parameter with undefined uses default')
}

main()