/*
 * Case ID: TYPE-FAILR-003
 * Coverage ID:
 *   - TYPE-STAGE1-009
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify types behavior
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let thrown: boolean = false
try {
  let value = undefined
  value.x
} catch (e) {
  thrown = true
}

assertTrue(thrown, 'expected property access on undefined to throw')
