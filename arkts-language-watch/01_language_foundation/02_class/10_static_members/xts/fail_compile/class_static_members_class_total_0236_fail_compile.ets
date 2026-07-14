/*
 * Case ID: CLASS-FAILC-215
 * Coverage ID:
 *   - CLASS-TOTAL-0236
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static method 中错误调用 super()，checker 报错
 */

// Expected error: static method 中错误调用 super()，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
