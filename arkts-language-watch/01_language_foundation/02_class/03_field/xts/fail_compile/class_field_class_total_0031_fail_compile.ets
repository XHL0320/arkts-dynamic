/*
 * Case ID: CLASS-FAILC-032
 * Coverage ID:
 *   - CLASS-TOTAL-0031
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify interface 类型字段缺少必需属性，checker 报错
 */

// Expected error: interface 类型字段缺少必需属性，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
