/*
 * Case ID: TYPE-PASS-017
 * Coverage ID:
 *   - TYPE-STAGE1-004
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

let objectValue = { value: 1 }
let arrayValue: number[] = [1, 2]
assertTrue(typeof objectValue === 'object', 'typeof object should be object')
assertTrue(typeof arrayValue === 'object', 'typeof array should be object')
