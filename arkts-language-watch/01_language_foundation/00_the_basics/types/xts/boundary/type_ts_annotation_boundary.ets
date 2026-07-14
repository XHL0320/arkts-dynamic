/*
 * Case ID: TYPE-BOUND-005
 * Coverage ID:
 *   - TYPE-STAGE1-024
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
function id(value: number): number {
  return value
}

let value: number = id(1)
