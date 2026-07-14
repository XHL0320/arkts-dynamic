/*
 * Case ID: CLASS-FAILC-244
 * Coverage ID:
 *   - CLASS-TOTAL-0266
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify readonly 字段部分 constructor 分支未赋值，checker 报错或边界记录
 */

// Expected error: readonly 字段部分 constructor 分支未赋值，checker 报错或边界记录

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
