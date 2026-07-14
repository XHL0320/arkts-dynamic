/*
 * Case ID: CLASS-FAILC-272
 * Coverage ID:
 *   - CLASS-TOTAL-0296
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 缺少 class public field，checker 报错
 */

// Expected error: object literal 缺少 class public field，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
