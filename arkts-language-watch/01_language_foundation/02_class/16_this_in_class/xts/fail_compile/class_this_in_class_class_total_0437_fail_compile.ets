/*
 * Case ID: CLASS-FAILC-404
 * Coverage ID:
 *   - CLASS-TOTAL-0437
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify this 作为返回值赋给不兼容 class type，checker 报错
 */

// Expected error: this 作为返回值赋给不兼容 class type，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
