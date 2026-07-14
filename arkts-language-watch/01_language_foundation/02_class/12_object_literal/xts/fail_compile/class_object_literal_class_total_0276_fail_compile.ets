/*
 * Case ID: CLASS-FAILC-254
 * Coverage ID:
 *   - CLASS-TOTAL-0276
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic constraint 要求 object literal 具备属性但缺失，checker 报错
 */

// Expected error: generic constraint 要求 object literal 具备属性但缺失，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
