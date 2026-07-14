/*
 * Case ID: CLASS-FAILC-221
 * Coverage ID:
 *   - CLASS-TOTAL-0243
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static method 通过 instance 调用，checker 报错
 */

// Expected error: static method 通过 instance 调用，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
