/*
 * Case ID: CLASS-FAILC-226
 * Coverage ID:
 *   - CLASS-TOTAL-0248
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify import class 后写 readonly field，checker 报错
 */

// Expected error: import class 后写 readonly field，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
