/*
 * Case ID: NULL-PASS-004
 * Coverage ID:
 *   - NS-RET-001
 *   - NS-RET-003
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify function without return returns undefined.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function noReturn(): void {
  let x: number = 1 + 1
}

function explicitUndefined(): undefined {
  return undefined
}

function main(): void {
  let result: void = noReturn()
  assertTrue(result === undefined, 'function without return returns undefined')
  let explicit: undefined = explicitUndefined()
  assertTrue(explicit === undefined, 'explicit return undefined')
}

main()