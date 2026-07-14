/*
 * Case ID: NULL-PASS-006
 * Coverage ID:
 *   - NS-EQ-001
 *   - NS-EQ-002
 *   - NS-EQ-003
 *   - NS-EQ-004
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: operators
 * Spec Source: pending
 * Description: Verify null==undefined, null===undefined, null==0, undefined==0.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  assertTrue(null == undefined, 'null loosely equals undefined')
  assertFalse(null === undefined, 'null strictly not equal to undefined')
  assertTrue(null == null, 'null equals itself')
  assertTrue(undefined == undefined, 'undefined equals itself')
  assertFalse(null == 0, 'null does not loosely equal 0')
  assertFalse(undefined == 0, 'undefined does not loosely equal 0')
}

main()