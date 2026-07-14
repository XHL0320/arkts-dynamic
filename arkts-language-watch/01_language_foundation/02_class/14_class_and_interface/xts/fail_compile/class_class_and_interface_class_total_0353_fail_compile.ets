/*
 * Case ID: CLASS-FAILC-326
 * Coverage ID:
 *   - CLASS-TOTAL-0353
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic method in interface 由 class generic method 实现时约束不兼容，checker 报错
 */

// Expected error: generic method in interface 由 class generic method 实现时约束不兼容，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
