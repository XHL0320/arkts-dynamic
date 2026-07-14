/*
 * Case ID: CLASS-FAILC-397
 * Coverage ID:
 *   - CLASS-TOTAL-0430
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify method extraction 未绑定引用如 ArkTS 拦截，checker 报错
 */

// Expected error: method extraction 未绑定引用如 ArkTS 拦截，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
