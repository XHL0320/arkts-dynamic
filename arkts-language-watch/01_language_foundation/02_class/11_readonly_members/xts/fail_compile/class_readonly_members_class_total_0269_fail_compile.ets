/*
 * Case ID: CLASS-FAILC-247
 * Coverage ID:
 *   - CLASS-TOTAL-0269
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类方法修改继承 readonly field，checker 报错
 */

// Expected error: 子类方法修改继承 readonly field，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
