/*
 * Case ID: TYPE-PASS-012
 * Coverage ID:
 *   - TYPE-STAGE1-020
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

let value = { name: 'arkts', count: 1 }
assertTrue(value.name === 'arkts', 'object string property should be readable')
assertTrue(value.count === 1, 'object number property should be readable')
