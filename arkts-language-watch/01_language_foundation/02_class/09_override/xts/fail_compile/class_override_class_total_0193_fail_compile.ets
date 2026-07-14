/*
 * Case ID: CLASS-FAILC-179
 * Coverage ID:
 *   - CLASS-TOTAL-0193
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify protected method 覆盖为 private，checker 报错
 */

// Expected error: protected method 覆盖为 private，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
