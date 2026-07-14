/*
 * Case ID: CLASS-FAILC-245
 * Coverage ID:
 *   - CLASS-TOTAL-0267
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify union 类型引用下写 readonly field，checker 报错或边界记录
 */

// Expected error: union 类型引用下写 readonly field，checker 报错或边界记录

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
