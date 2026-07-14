/*
 * Case ID: CLASS-FAILC-029
 * Coverage ID:
 *   - CLASS-TOTAL-0028
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class 类型字段赋值无关 class 实例，checker 报错
 */

// Expected error: class 类型字段赋值无关 class 实例，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
