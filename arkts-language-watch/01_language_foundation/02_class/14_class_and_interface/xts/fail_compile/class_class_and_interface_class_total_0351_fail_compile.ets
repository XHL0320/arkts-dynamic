/*
 * Case ID: CLASS-FAILC-324
 * Coverage ID:
 *   - CLASS-TOTAL-0351
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic class implements instantiated interface 时字段类型实参错误，checker 报错
 */

// Expected error: generic class implements instantiated interface 时字段类型实参错误，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
