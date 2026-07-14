/*
 * Case ID: CLASS-FAILC-030
 * Coverage ID:
 *   - CLASS-TOTAL-0029
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic class 字段赋值不满足 T，checker 报错
 */

// Expected error: generic class 字段赋值不满足 T，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
