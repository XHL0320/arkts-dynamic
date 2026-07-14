/*
 * Case ID: CLASS-FAILC-114
 * Coverage ID:
 *   - CLASS-TOTAL-0128
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 跨模块 import class 后外部访问 private field，checker 报错
 */

// Expected error: 跨模块 import class 后外部访问 private field，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
