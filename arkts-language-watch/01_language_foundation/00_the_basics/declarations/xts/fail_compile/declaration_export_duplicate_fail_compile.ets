/*
 * Case ID: DECL-FAILC-004
 * Coverage ID:
 *   - DECL-EXPORT-002
 * Feature: language_basics
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify declarations test. compile error.
 */

const value: number = 1
const other: number = 2

export { value as duplicated }
export { other as duplicated }
