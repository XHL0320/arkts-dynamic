/*
 * Case ID: NULL-PASS-011
 * Coverage ID:
 *   - NS-OC-PROP-001
 *   - NS-OC-PROP-002
 *   - NS-OC-PROP-003
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: operators
 * Spec Source: pending
 * Description: Verify obj?.prop returns value or undefined for non-null and null.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let obj: Record<string, number> | null = { x: 42 }
  assertTrue(obj?.x === 42, 'optional chaining on non-null returns value')

  let empty: Record<string, number> | null = null
  assertTrue(empty?.x === undefined, 'optional chaining on null returns undefined')

  let nested: Record<string, Record<string, number>> | null = { inner: { val: 99 } }
  assertTrue(nested?.inner?.val === 99, 'nested optional chaining works')

  let nullNested: Record<string, Record<string, number>> | null = null
  assertTrue(nullNested?.inner?.val === undefined, 'nested optional chaining on null short-circuits')
}

main()