/*
 * Case ID: TYPE-PASS-018
 * Coverage ID:
 *   - TYPE-STAGE1-001
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

let value = undefined
assertTrue(typeof value === 'undefined', 'typeof undefined should be undefined')
