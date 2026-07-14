/*
 * Case ID: STMT-FAILR-001
 * Coverage ID:
 *   - STMT-FOROF-003
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify for-of with non-iterable value throws TypeError.. for-of on a number throws TypeError at runtime.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let nonIterable: number = 42
    for (let item of (nonIterable as unknown as number[])) {
      // Should not reach here
    }
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'for-of on non-iterable should throw TypeError')
}

main()
