/*
 * Case ID: NULL-PASS-016
 * Coverage ID:
 *   - NS-UNDEF-001
 *   - NS-UNDEF-003
 *   - NS-UNDEF-004
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify undefined basic value, typeof undefined, Boolean, Number, String.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  let u: undefined = undefined
  assertTrue(u === undefined, 'undefined equals undefined')
  assertTrue(typeof u === "undefined", 'typeof undefined is "undefined"')
  assertFalse(Boolean(u), 'undefined is falsy')
  let nan: number = Number(u)
  assertTrue(nan !== nan, 'Number(undefined) is NaN')
  assertTrue(String(u) === "undefined", 'String(undefined) is "undefined"')
}

main()