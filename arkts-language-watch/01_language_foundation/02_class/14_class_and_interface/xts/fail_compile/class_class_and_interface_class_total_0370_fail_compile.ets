/*
 * Case ID: CLASS-FAILC-339
 * Coverage ID:
 *   - CLASS-TOTAL-0370
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static method 不能满足 instance interface method，checker 报错
 */

// Expected error: static method 不能满足 instance interface method，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
