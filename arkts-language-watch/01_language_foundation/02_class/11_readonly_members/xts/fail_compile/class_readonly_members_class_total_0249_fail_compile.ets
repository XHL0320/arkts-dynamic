/*
 * Case ID: CLASS-FAILC-227
 * Coverage ID:
 *   - CLASS-TOTAL-0249
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 赋给含 readonly field class type 不满足规则，checker 报错或边界记录
 */

// Expected error: object literal 赋给含 readonly field class type 不满足规则，checker 报错或边界记录

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
