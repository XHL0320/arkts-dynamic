/*
 * Case ID: CLASS-FAILC-282
 * Coverage ID:
 *   - CLASS-TOTAL-0306
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify optional property 类型不匹配，checker 报错
 */

// Expected error: optional property 类型不匹配，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
