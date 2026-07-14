/*
 * Case ID: NULL-FAILR-004
 * Coverage ID:
 *   - NS-RT-002
 * Feature: null_safety
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types, operators
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify property access on undefined throws TypeError.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let thrown: boolean = false
  try {
    let obj: Record<string, number> | undefined = undefined
    let val: number = obj.value
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'property access on undefined should throw TypeError')
}

main()