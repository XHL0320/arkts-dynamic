/*
 * Case ID: CLASS-FAILC-280
 * Coverage ID:
 *   - CLASS-TOTAL-0304
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 赋值给 generic class type Box<T> 不满足字段 T，checker 报错
 */

// Expected error: object literal 赋值给 generic class type Box<T> 不满足字段 T，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
