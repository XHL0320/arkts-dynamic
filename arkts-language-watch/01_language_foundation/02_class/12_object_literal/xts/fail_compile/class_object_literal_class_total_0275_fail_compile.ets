/*
 * Case ID: CLASS-FAILC-253
 * Coverage ID:
 *   - CLASS-TOTAL-0275
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify fresh object literal 多余属性传给函数参数，checker 报错或边界记录
 */

// Expected error: fresh object literal 多余属性传给函数参数，checker 报错或边界记录

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
