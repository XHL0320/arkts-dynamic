/*
 * Case ID: CLASS-FAILC-270
 * Coverage ID:
 *   - CLASS-TOTAL-0294
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 方法返回值与 class method 不一致，checker 报错
 */

// Expected error: object literal 方法返回值与 class method 不一致，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
