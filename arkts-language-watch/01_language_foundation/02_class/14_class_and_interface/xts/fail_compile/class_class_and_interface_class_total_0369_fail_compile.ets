/*
 * Case ID: CLASS-FAILC-338
 * Coverage ID:
 *   - CLASS-TOTAL-0369
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static field 不能满足 instance interface property，checker 报错
 */

// Expected error: static field 不能满足 instance interface property，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
