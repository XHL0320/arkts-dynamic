/*
 * Case ID: CLASS-FAILC-040
 * Coverage ID:
 *   - CLASS-TOTAL-0041
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 字段与方法同名，checker 报错
 */

// Expected error: 字段与方法同名，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
