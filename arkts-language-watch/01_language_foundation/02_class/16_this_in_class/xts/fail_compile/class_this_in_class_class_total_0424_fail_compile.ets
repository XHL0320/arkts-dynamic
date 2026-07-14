/*
 * Case ID: CLASS-FAILC-392
 * Coverage ID:
 *   - CLASS-TOTAL-0424
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic class method this 与 T 类型不兼容，checker 报错
 */

// Expected error: generic class method this 与 T 类型不兼容，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
