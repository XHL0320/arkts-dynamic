/*
 * Case ID: NULL-PASS-009
 * Coverage ID:
 *   - NS-OC-ELEM-001
 *   - NS-OC-ELEM-002
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: operators
 * Spec Source: pending
 * Description: Verify arr element access on non-null and null array.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let arr: number[] | null = [10, 20, 30]
  assertTrue(arr?.[0] === 10, 'optional chaining element access on non-null')
  assertTrue(arr?.[2] === 30, 'optional chaining element access index 2')

  let nullArr: number[] | null = null
  assertTrue(nullArr?.[0] === undefined, 'optional chaining element access on null returns undefined')
}

main()