/*
 * Case ID: TYPE-PASS-015
 * Coverage ID:
 *   - TYPE-STAGE1-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify types behavior
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function value(): number {
  return 1
}

assertTrue(typeof value === 'function', 'typeof function should be function')
