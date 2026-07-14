/*
 * Case ID: CLASS-FAILC-033
 * Coverage ID:
 *   - CLASS-TOTAL-0032
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify number 字段初始化为 string，checker 报错
 */

// Expected error: number 字段初始化为 string，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
