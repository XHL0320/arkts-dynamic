/*
 * Case ID: CLASS-FAILC-199
 * Coverage ID:
 *   - CLASS-TOTAL-0218
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic class static member 直接使用类类型参数 T，checker 报错或边界记录
 */

// Expected error: generic class static member 直接使用类类型参数 T，checker 报错或边界记录

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
