/*
 * Case ID: NULL-PASS-005
 * Coverage ID:
 *   - NS-NULL-001
 *   - NS-NULL-003
 *   - NS-NULL-004
 *   - NS-NULL-005
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify null basic value, typeof null, Boolean(null), Number(null), String(null).
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  let n: null = null
  assertTrue(n === null, 'null equals null')
  assertTrue(typeof n === "object", 'typeof null is object (historical)')
  assertFalse(Boolean(n), 'null is falsy')
  assertTrue(Number(n) === 0, 'Number(null) is 0')
  assertTrue(String(n) === "null", 'String(null) is "null"')
}

main()