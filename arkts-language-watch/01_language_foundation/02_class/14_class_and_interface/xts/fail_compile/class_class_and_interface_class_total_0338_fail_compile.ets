/*
 * Case ID: CLASS-FAILC-313
 * Coverage ID:
 *   - CLASS-TOTAL-0338
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract class implements interface 但 concrete 子类未最终实现，checker 报错
 */

// Expected error: abstract class implements interface 但 concrete 子类未最终实现，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
