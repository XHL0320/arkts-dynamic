/*
 * Case ID: CLASS-FAILC-317
 * Coverage ID:
 *   - CLASS-TOTAL-0342
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class implements 多 interface 时缺少其中一个成员，checker 报错
 */

// Expected error: class implements 多 interface 时缺少其中一个成员，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
