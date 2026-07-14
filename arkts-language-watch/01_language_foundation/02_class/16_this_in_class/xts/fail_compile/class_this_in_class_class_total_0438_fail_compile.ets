/*
 * Case ID: CLASS-FAILC-405
 * Coverage ID:
 *   - CLASS-TOTAL-0438
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify this 访问 private static member 的非法实例侧访问，checker 报错
 */

// Expected error: this 访问 private static member 的非法实例侧访问，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
