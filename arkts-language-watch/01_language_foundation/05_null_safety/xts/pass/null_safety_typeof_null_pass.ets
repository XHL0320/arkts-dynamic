/*
 * Case ID: NULL-PASS-015
 * Coverage ID:
 *   - NS-TYPEOF-001
 *   - NS-TYPEOF-002
 *   - NS-TYPEOF-005
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types, operators
 * Spec Source: pending
 * Description: Verify typeof null is object, typeof undefined is undefined, distinction.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(typeof null === "object", 'typeof null is object (historical)')
  assertTrue(typeof undefined === "undefined", 'typeof undefined is "undefined"')
  assertTrue(typeof null !== typeof undefined, 'typeof null and undefined differ')
}

main()