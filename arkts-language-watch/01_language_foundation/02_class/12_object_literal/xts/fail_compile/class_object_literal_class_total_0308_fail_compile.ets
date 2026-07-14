/*
 * Case ID: CLASS-FAILC-284
 * Coverage ID:
 *   - CLASS-TOTAL-0308
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 跨模块 object literal 赋值缺少 imported interface 成员，checker 报错
 */

// Expected error: 跨模块 object literal 赋值缺少 imported interface 成员，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
