/*
 * Case ID: CLASS-FAILC-341
 * Coverage ID:
 *   - CLASS-TOTAL-0372
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 两个 interface 同名 property 类型冲突，class 同时 implements 时报错
 */

// Expected error: 两个 interface 同名 property 类型冲突，class 同时 implements 时报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
