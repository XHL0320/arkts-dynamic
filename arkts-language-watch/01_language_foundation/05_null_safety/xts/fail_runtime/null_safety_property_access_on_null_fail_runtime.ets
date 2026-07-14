/*
 * Case ID: NULL-FAILR-003
 * Coverage ID:
 *   - NS-RT-001
 * Feature: null_safety
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types, operators
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify property access on null throws TypeError.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let thrown: boolean = false
  try {
    let obj: Record<string, number> | null = null
    let val: number = obj.value
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'property access on null should throw TypeError')
}

main()