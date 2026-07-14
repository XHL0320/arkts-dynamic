/*
 * Case ID: CLASS-FAILC-323
 * Coverage ID:
 *   - CLASS-TOTAL-0350
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify derived class 覆盖 base method 后签名不兼容 interface，checker 报错
 */

// Expected error: derived class 覆盖 base method 后签名不兼容 interface，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
