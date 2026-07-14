/*
 * Case ID: CLASS-FAILC-042
 * Coverage ID:
 *   - CLASS-TOTAL-0044
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 字段重复声明，checker/parser 报错
 */

// Expected error: 字段重复声明，checker/parser 报错

class FieldFailCase {
  public value: number = "wrong"
}
