/*
 * Case ID: TYPE-PASS-007
 * Coverage ID:
 *   - TYPE-STAGE1-008
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

let nullValue = null
let undefinedValue = undefined
assertTrue(nullValue !== undefinedValue, 'null should not strictly equal undefined')
