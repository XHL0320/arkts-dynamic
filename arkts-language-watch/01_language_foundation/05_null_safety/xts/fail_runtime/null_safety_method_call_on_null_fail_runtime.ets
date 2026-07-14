/*
 * Case ID: NULL-FAILR-001
 * Coverage ID:
 *   - NS-RT-003
 * Feature: null_safety
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types, function
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify method call on null throws TypeError.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Service {
  execute(): void {}
}

function main(): void {
  let thrown: boolean = false
  try {
    let svc: Service | null = null
    svc.execute()
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'method call on null should throw TypeError')
}

main()