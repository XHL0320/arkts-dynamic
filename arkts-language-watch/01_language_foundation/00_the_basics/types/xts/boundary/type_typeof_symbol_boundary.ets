/*
 * Case ID: TYPE-BOUND-006
 * Coverage ID:
 *   - TYPE-STAGE1-006
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

let value = Symbol('type-stage1')
assertTrue(typeof value === 'symbol', 'typeof symbol should be symbol if Symbol is supported')
