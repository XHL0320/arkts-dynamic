/*
 * Case ID: CLASS-FAILC-257
 * Coverage ID:
 *   - CLASS-TOTAL-0280
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal function property 参数/返回不匹配目标 method，checker 报错
 */

// Expected error: object literal function property 参数/返回不匹配目标 method，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
