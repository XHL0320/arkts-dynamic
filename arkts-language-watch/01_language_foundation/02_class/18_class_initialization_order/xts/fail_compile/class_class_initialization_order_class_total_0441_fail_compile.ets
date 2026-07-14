/*
 * Case ID: CLASS-FAILC-409
 * Coverage ID:
 *   - CLASS-TOTAL-0441
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify constructor 中字段赋值类型错误，checker 报错
 */

// Expected error: constructor 中字段赋值类型错误，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
