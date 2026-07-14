/*
 * Case ID: CLASS-FAILC-031
 * Coverage ID:
 *   - CLASS-TOTAL-0030
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instance 字段通过类名访问，checker 报错
 */

// Expected error: instance 字段通过类名访问，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
