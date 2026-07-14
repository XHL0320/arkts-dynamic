/*
 * Case ID: TYPE-PASS-010
 * Coverage ID:
 *   - TYPE-STAGE1-013
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

let positive: number = 1 / 0
let negative: number = -1 / 0
assertTrue(positive > 0, 'Infinity should be greater than zero')
assertTrue(negative < 0, '-Infinity should be less than zero')
