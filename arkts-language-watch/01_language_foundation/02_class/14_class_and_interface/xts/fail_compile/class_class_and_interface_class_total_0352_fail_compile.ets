/*
 * Case ID: CLASS-FAILC-325
 * Coverage ID:
 *   - CLASS-TOTAL-0352
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic class method 返回 T 不满足 interface 返回类型，checker 报错
 */

// Expected error: generic class method 返回 T 不满足 interface 返回类型，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
