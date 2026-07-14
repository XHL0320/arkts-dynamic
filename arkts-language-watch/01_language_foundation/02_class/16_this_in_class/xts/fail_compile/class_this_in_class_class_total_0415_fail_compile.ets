/*
 * Case ID: CLASS-FAILC-383
 * Coverage ID:
 *   - CLASS-TOTAL-0415
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify cross-module method this 类型丢失导致调用不兼容，checker 报错
 */

// Expected error: cross-module method this 类型丢失导致调用不兼容，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
