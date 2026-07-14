/*
 * Case ID: TYPE-PASS-009
 * Coverage ID:
 *   - TYPE-STAGE1-015
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

assertTrue(1 == 1n, 'number 1 should loosely equal bigint 1n')
assertTrue(1 !== 1n, 'number 1 should not strictly equal bigint 1n')
