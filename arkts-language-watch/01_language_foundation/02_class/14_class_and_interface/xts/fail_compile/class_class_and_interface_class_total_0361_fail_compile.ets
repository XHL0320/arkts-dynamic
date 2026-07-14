/*
 * Case ID: CLASS-FAILC-331
 * Coverage ID:
 *   - CLASS-TOTAL-0361
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 赋值给 interface 类型缺少 required member，checker 报错
 */

// Expected error: object literal 赋值给 interface 类型缺少 required member，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
