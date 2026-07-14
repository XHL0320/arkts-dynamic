/*
 * Case ID: CLASS-FAILC-379
 * Coverage ID:
 *   - CLASS-TOTAL-0411
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify callback 函数类型 this 参数不兼容，checker 报错或边界记录
 */

// Expected error: callback 函数类型 this 参数不兼容，checker 报错或边界记录

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
