/*
 * Case ID: CLASS-FAILC-281
 * Coverage ID:
 *   - CLASS-TOTAL-0305
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 赋给 constructor type 不满足 construct signature，checker 报错或边界记录
 */

// Expected error: object literal 赋给 constructor type 不满足 construct signature，checker 报错或边界记录

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
