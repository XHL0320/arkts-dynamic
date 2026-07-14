/*
 * Case ID: CLASS-FAILC-343
 * Coverage ID:
 *   - CLASS-TOTAL-0916
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify default export class implements imported interface 但缺少成员，checker 报错
 */

// Expected error: default export class implements imported interface 但缺少成员，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
