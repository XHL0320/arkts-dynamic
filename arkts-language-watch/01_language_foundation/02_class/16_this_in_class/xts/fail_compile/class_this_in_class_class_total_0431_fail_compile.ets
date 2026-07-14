/*
 * Case ID: CLASS-FAILC-398
 * Coverage ID:
 *   - CLASS-TOTAL-0431
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify method 中 this 访问 protected member 于非法上下文，checker 报错
 */

// Expected error: method 中 this 访问 protected member 于非法上下文，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
