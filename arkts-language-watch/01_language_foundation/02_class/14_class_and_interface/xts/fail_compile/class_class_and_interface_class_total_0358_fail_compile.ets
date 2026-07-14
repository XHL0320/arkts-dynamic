/*
 * Case ID: CLASS-FAILC-329
 * Coverage ID:
 *   - CLASS-TOTAL-0358
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify interface extends interface 后 class 缺少 base interface 成员，checker 报错
 */

// Expected error: interface extends interface 后 class 缺少 base interface 成员，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
