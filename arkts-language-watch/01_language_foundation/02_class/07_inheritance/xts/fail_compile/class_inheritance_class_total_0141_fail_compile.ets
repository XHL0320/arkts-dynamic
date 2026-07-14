/*
 * Case ID: CLASS-FAILC-128
 * Coverage ID:
 *   - CLASS-TOTAL-0141
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 外部访问 protected 成员，checker 报错
 */

// Expected error: 外部访问 protected 成员，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
