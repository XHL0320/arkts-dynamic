/*
 * Case ID: CLASS-FAILC-201
 * Coverage ID:
 *   - CLASS-TOTAL-0220
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instance method 通过 class name 直接调用，checker 报错
 */

// Expected error: instance method 通过 class name 直接调用，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
