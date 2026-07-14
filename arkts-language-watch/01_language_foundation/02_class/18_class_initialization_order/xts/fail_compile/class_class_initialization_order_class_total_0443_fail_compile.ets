/*
 * Case ID: CLASS-FAILC-411
 * Coverage ID:
 *   - CLASS-TOTAL-0443
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic class constructor 初始化 T 字段类型错误，checker 报错
 */

// Expected error: generic class constructor 初始化 T 字段类型错误，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
