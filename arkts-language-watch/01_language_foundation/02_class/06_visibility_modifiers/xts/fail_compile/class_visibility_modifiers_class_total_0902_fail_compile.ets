/*
 * Case ID: CLASS-FAILC-116
 * Coverage ID:
 *   - CLASS-TOTAL-0902
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 跨模块 import class 后非子类访问 protected field，checker 报错
 */

// Expected error: 跨模块 import class 后非子类访问 protected field，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
