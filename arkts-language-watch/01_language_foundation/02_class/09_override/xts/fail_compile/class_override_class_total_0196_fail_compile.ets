/*
 * Case ID: CLASS-FAILC-182
 * Coverage ID:
 *   - CLASS-TOTAL-0196
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify public method 覆盖为 protected，checker 报错
 */

// Expected error: public method 覆盖为 protected，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
