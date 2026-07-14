/*
 * Case ID: CLASS-FAILC-098
 * Coverage ID:
 *   - CLASS-TOTAL-0109
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify private method 不能满足 interface public method，checker 报错
 */

// Expected error: private method 不能满足 interface public method，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
