/*
 * Case ID: CLASS-FAILC-395
 * Coverage ID:
 *   - CLASS-TOTAL-0427
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instance method 中 this.staticField 如 ArkTS 禁止，checker 报错
 */

// Expected error: instance method 中 this.staticField 如 ArkTS 禁止，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
