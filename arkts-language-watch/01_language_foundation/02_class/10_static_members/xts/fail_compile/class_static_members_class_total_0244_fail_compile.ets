/*
 * Case ID: CLASS-FAILC-222
 * Coverage ID:
 *   - CLASS-TOTAL-0244
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify super.staticMethod() 参数类型错误，checker 报错
 */

// Expected error: super.staticMethod() 参数类型错误，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
