/*
 * Case ID: CLASS-FAILC-304
 * Coverage ID:
 *   - CLASS-TOTAL-0333
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类实现 public abstract method 时可见性收窄为 protected，checker 报错
 */

// Expected error: 子类实现 public abstract method 时可见性收窄为 protected，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
