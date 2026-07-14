/*
 * Case ID: NULL-REGR-001
 * Coverage ID:
 *   - NS-EQ-001
 *   - NS-NC-001
 *   - NS-NULL-001
 * Feature: null_safety
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types, operators
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify null/undefined basics, typeof, equality, ?? regression.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  // null and undefined basics
  assertTrue(null === null, 'regression: null equals null')
  assertTrue(undefined === undefined, 'regression: undefined equals undefined')
  assertTrue(null == undefined, 'regression: null loosely equals undefined')
  assertFalse(null === undefined, 'regression: null strictly not equal undefined')

  // typeof
  assertTrue(typeof null === "object", 'regression: typeof null is object')
  assertTrue(typeof undefined === "undefined", 'regression: typeof undefined')

  // nullish coalescing
  assertTrue((null ?? 42) === 42, 'regression: null ?? 42')
  assertTrue((undefined ?? "x") === "x", 'regression: undefined ?? x')
  assertTrue((0 ?? 42) === 0, 'regression: 0 ?? 42 preserves 0')

  // optional chaining
  let obj: Record<string, number> | null = null
  assertTrue(obj?.x === undefined, 'regression: null optional chaining returns undefined')
}

main()