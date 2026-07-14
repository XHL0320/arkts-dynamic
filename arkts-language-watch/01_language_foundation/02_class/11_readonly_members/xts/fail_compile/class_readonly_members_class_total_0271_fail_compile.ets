/*
 * Case ID: CLASS-FAILC-249
 * Coverage ID:
 *   - CLASS-TOTAL-0271
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor 直接初始化基类 readonly field，checker 报错或边界记录
 */

// Expected error: 派生类 constructor 直接初始化基类 readonly field，checker 报错或边界记录

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
