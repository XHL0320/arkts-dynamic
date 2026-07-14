/*
 * Case ID: CLASS-FAILC-315
 * Coverage ID:
 *   - CLASS-TOTAL-0340
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class constructor 被错误用于满足 instance interface，checker 报错
 */

// Expected error: class constructor 被错误用于满足 instance interface，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
