/*
 * Case ID: CLASS-FAILC-342
 * Coverage ID:
 *   - CLASS-TOTAL-0373
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 跨文件 interface 成员新增后 class implements 缺少成员，checker 报错
 */

// Expected error: 跨文件 interface 成员新增后 class implements 缺少成员，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
