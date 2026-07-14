/*
 * Case ID: CLASS-FAILC-327
 * Coverage ID:
 *   - CLASS-TOTAL-0354
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify implements interface 名称不存在，checker 报错
 */

// Expected error: implements interface 名称不存在，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
