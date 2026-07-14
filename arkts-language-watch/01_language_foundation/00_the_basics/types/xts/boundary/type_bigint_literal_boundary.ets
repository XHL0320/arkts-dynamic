/*
 * Case ID: TYPE-BOUND-003
 * Coverage ID:
 *   - TYPE-STAGE1-017
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify types behavior
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = 9007199254740993n
assertTrue(typeof value === 'bigint', 'bigint literal should have bigint runtime type if supported')
