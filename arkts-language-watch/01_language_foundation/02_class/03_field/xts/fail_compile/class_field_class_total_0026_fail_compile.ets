/*
 * Case ID: CLASS-FAILC-027
 * Coverage ID:
 *   - CLASS-TOTAL-0026
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class implements interface 时字段类型不兼容，checker 报错
 */

// Expected error: class implements interface 时字段类型不兼容，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
