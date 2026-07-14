/*
 * Case ID: CLASS-FAILC-443
 * Coverage ID:
 *   - CLASS-TOTAL-0475
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 动态添加属性到 object a.newProp = 1，checker 报错
 */

// Expected error: 动态添加属性到 object a.newProp = 1，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
