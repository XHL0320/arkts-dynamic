/*
 * Case ID: CLASS-FAILC-170
 * Coverage ID:
 *   - CLASS-TOTAL-0182
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract public method 实现为 protected/private，checker 报错
 */

// Expected error: abstract public method 实现为 protected/private，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
