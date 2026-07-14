/*
 * Case ID: CLASS-FAILC-135
 * Coverage ID:
 *   - CLASS-TOTAL-0148
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类把 public 覆盖为 protected/private，checker 报错
 */

// Expected error: 派生类把 public 覆盖为 protected/private，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
