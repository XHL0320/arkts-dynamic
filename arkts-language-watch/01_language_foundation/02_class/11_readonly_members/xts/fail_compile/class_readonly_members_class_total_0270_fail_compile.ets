/*
 * Case ID: CLASS-FAILC-248
 * Coverage ID:
 *   - CLASS-TOTAL-0270
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类普通字段遮蔽基类 readonly field，如 ArkTS 禁止则报错
 */

// Expected error: 子类普通字段遮蔽基类 readonly field，如 ArkTS 禁止则报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
