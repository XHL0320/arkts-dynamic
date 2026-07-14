/*
 * Case ID: CLASS-FAILC-180
 * Coverage ID:
 *   - CLASS-TOTAL-0194
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify protected/private method 不能满足 interface public method，checker 报错
 */

// Expected error: protected/private method 不能满足 interface public method，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
