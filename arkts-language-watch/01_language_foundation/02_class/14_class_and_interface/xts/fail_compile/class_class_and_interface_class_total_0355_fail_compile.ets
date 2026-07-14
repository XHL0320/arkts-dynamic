/*
 * Case ID: CLASS-FAILC-328
 * Coverage ID:
 *   - CLASS-TOTAL-0355
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify implements 非 interface 类型，checker 报错
 */

// Expected error: implements 非 interface 类型，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
