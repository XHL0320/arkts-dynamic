/*
 * Case ID: CLASS-FAILC-034
 * Coverage ID:
 *   - CLASS-TOTAL-0033
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify number[] 字段写入 string[]，checker 报错
 */

// Expected error: number[] 字段写入 string[]，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
