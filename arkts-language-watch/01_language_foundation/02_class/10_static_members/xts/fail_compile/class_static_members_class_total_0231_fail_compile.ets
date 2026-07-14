/*
 * Case ID: CLASS-FAILC-210
 * Coverage ID:
 *   - CLASS-TOTAL-0231
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static member 不能满足 instance interface property，checker 报错
 */

// Expected error: static member 不能满足 instance interface property，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
