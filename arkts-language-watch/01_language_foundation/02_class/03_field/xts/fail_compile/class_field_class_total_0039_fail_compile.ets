/*
 * Case ID: CLASS-FAILC-039
 * Coverage ID:
 *   - CLASS-TOTAL-0039
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 动态属性访问字段 a['x']，如 ArkTS 禁止则报错
 */

// Expected error: 动态属性访问字段 a['x']，如 ArkTS 禁止则报错

class FieldFailCase {
  public value: number = "wrong"
}
