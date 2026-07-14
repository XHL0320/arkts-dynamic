/*
 * Case ID: CLASS-FAILC-224
 * Coverage ID:
 *   - CLASS-TOTAL-0246
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class readonly field 类型与 interface readonly property 不一致，checker 报错
 */

// Expected error: class readonly field 类型与 interface readonly property 不一致，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
