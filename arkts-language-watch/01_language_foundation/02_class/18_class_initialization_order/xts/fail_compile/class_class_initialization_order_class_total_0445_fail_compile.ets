/*
 * Case ID: CLASS-FAILC-413
 * Coverage ID:
 *   - CLASS-TOTAL-0445
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify readonly 字段声明处初始化后 constructor 再赋值，如 ArkTS 禁止则报错
 */

// Expected error: readonly 字段声明处初始化后 constructor 再赋值，如 ArkTS 禁止则报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
