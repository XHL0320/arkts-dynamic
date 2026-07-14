/*
 * Case ID: CLASS-FAILC-322
 * Coverage ID:
 *   - CLASS-TOTAL-0348
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class 缺少 interface property，checker 报错
 */

// Expected error: class 缺少 interface property，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
