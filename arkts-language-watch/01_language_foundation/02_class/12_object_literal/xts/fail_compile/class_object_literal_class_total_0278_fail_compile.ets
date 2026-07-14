/*
 * Case ID: CLASS-FAILC-255
 * Coverage ID:
 *   - CLASS-TOTAL-0278
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify nested object literal 缺少 nested interface 属性，checker 报错
 */

// Expected error: nested object literal 缺少 nested interface 属性，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
