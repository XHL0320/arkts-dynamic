/*
 * Case ID: CLASS-FAILC-319
 * Coverage ID:
 *   - CLASS-TOTAL-0345
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class method 参数类型与 interface method 不一致，checker 报错
 */

// Expected error: class method 参数类型与 interface method 不一致，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
