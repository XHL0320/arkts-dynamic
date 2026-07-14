/*
 * Case ID: CLASS-FAILC-318
 * Coverage ID:
 *   - CLASS-TOTAL-0343
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class method 参数个数不足导致签名不兼容，checker 报错
 */

// Expected error: class method 参数个数不足导致签名不兼容，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
