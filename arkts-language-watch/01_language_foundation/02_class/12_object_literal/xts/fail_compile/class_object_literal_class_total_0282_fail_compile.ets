/*
 * Case ID: CLASS-FAILC-259
 * Coverage ID:
 *   - CLASS-TOTAL-0282
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 不满足 generic constraint，checker 报错
 */

// Expected error: object literal 不满足 generic constraint，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
