/*
 * Case ID: CLASS-FAILC-314
 * Coverage ID:
 *   - CLASS-TOTAL-0339
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract protected method 不能满足 public interface method，checker 报错或边界记录
 */

// Expected error: abstract protected method 不能满足 public interface method，checker 报错或边界记录

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
