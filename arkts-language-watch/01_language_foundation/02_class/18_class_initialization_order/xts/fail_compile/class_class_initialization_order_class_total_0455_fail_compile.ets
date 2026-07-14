/*
 * Case ID: CLASS-FAILC-421
 * Coverage ID:
 *   - CLASS-TOTAL-0455
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 字段初始化表达式访问不存在成员，checker 报错
 */

// Expected error: 字段初始化表达式访问不存在成员，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
