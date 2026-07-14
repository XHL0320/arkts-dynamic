/*
 * Case ID: CLASS-FAILC-382
 * Coverage ID:
 *   - CLASS-TOTAL-0414
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify constructor 中通过 this 访问 static member，checker 报错或边界记录
 */

// Expected error: constructor 中通过 this 访问 static member，checker 报错或边界记录

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
