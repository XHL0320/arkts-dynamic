/*
 * Case ID: CLASS-FAILC-428
 * Coverage ID:
 *   - CLASS-TOTAL-0918
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify Derived constructor 中 super 参数传递类型错误，checker 报错
 */

// Expected error: Derived constructor 中 super 参数传递类型错误，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
