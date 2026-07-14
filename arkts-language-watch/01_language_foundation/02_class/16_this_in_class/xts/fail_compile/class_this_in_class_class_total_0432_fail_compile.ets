/*
 * Case ID: CLASS-FAILC-399
 * Coverage ID:
 *   - CLASS-TOTAL-0432
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify method 返回 this 但声明返回不兼容类型，checker 报错
 */

// Expected error: method 返回 this 但声明返回不兼容类型，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
