/*
 * Case ID: TYPE-PASS-008
 * Coverage ID:
 *   - TYPE-STAGE1-011
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

let value: number = 40 + 2
assertTrue(value === 42, 'number arithmetic should produce 42')
