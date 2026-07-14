/*
 * Case ID: CLASS-FAILC-344
 * Coverage ID:
 *   - CLASS-TOTAL-0917
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 未声明 implements 但结构满足 interface 的赋值若 ArkTS 不允许则 checker 报错
 */

// Expected error: 未声明 implements 但结构满足 interface 的赋值若 ArkTS 不允许则 checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
