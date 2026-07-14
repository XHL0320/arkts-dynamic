/*
 * Case ID: CLASS-FAILC-283
 * Coverage ID:
 *   - CLASS-TOTAL-0307
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 动态新增属性不允许时对 object literal 新增属性，checker 报错
 */

// Expected error: 动态新增属性不允许时对 object literal 新增属性，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
