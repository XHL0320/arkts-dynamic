/*
 * Case ID: CLASS-FAILC-028
 * Coverage ID:
 *   - CLASS-TOTAL-0027
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class implements interface 时缺少字段，checker 报错
 */

// Expected error: class implements interface 时缺少字段，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
