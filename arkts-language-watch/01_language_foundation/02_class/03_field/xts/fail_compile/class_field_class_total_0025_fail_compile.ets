/*
 * Case ID: CLASS-FAILC-026
 * Coverage ID:
 *   - CLASS-TOTAL-0025
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify array 字段赋值非数组，checker 报错
 */

// Expected error: array 字段赋值非数组，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
