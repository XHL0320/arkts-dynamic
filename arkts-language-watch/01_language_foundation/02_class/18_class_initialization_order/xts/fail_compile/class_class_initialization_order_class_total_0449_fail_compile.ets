/*
 * Case ID: CLASS-FAILC-415
 * Coverage ID:
 *   - CLASS-TOTAL-0449
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static field 初始化表达式类型错误，checker 报错
 */

// Expected error: static field 初始化表达式类型错误，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
