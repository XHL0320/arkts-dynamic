/*
 * Case ID: CLASS-FAILC-316
 * Coverage ID:
 *   - CLASS-TOTAL-0341
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class field 类型与 interface property 类型不一致，checker 报错
 */

// Expected error: class field 类型与 interface property 类型不一致，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
