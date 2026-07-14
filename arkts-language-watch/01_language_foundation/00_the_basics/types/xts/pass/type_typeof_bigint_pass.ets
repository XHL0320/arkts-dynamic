/*
 * Case ID: TYPE-PASS-014
 * Coverage ID:
 *   - TYPE-STAGE1-005
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

let value = 1n
assertTrue(typeof value === 'bigint', 'typeof bigint should be bigint')
