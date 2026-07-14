/*
 * Case ID: CLASS-FAILC-330
 * Coverage ID:
 *   - CLASS-TOTAL-0359
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify interface 类型在运行时值位置使用，checker 报错
 */

// Expected error: interface 类型在运行时值位置使用，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
