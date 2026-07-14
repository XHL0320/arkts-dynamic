/*
 * Case ID: CLASS-FAILC-391
 * Coverage ID:
 *   - CLASS-TOTAL-0423
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify field initializer 中通过 this 访问 static field，如 ArkTS 禁止则报错
 */

// Expected error: field initializer 中通过 this 访问 static field，如 ArkTS 禁止则报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
