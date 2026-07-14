/*
 * Case ID: CLASS-FAILC-181
 * Coverage ID:
 *   - CLASS-TOTAL-0195
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify public method 覆盖为 private，checker 报错
 */

// Expected error: public method 覆盖为 private，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
