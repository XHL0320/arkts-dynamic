/*
 * Case ID: TYPE-PASS-001
 * Coverage ID:
 *   - TYPE-STAGE1-021
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

let value: number[] = [1, 2, 3]
assertTrue(typeof value === 'object', 'typeof array should be object')
assertTrue(Array.isArray(value), 'Array.isArray should identify array values')
