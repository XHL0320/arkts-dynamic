/*
 * Case ID: CLASS-FAILC-043
 * Coverage ID:
 *   - CLASS-TOTAL-0045
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 未声明字段访问，checker 报错
 */

// Expected error: 未声明字段访问，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
