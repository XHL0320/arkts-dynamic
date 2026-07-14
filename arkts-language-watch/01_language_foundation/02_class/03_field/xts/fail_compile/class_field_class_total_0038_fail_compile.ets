/*
 * Case ID: CLASS-FAILC-038
 * Coverage ID:
 *   - CLASS-TOTAL-0038
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify string 字段赋值 boolean，checker 报错
 */

// Expected error: string 字段赋值 boolean，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
