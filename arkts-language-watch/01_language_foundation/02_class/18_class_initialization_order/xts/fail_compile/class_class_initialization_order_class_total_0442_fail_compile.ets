/*
 * Case ID: CLASS-FAILC-410
 * Coverage ID:
 *   - CLASS-TOTAL-0442
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic T 字段初始化不满足约束，checker 报错
 */

// Expected error: generic T 字段初始化不满足约束，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
