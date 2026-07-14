/*
 * Case ID: CLASS-FAILC-207
 * Coverage ID:
 *   - CLASS-TOTAL-0228
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static field 初始化值与类型不一致，checker 报错
 */

// Expected error: static field 初始化值与类型不一致，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
