/*
 * Case ID: TYPE-PASS-013
 * Coverage ID:
 *   - TYPE-STAGE1-018
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

let value: string = 'arkts'
assertTrue(value.length === 5, 'string length should be 5')
assertTrue(value === 'arkts', 'string content should be preserved')
