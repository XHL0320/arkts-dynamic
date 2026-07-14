/*
 * Case ID: NULL-FAILR-002
 * Coverage ID:
 *   - NS-RT-004
 * Feature: null_safety
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types, function
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify method call on undefined throws TypeError.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Handler {
  process(): void {}
}

function main(): void {
  let thrown: boolean = false
  try {
    let h: Handler | undefined = undefined
    h.process()
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'method call on undefined should throw TypeError')
}

main()