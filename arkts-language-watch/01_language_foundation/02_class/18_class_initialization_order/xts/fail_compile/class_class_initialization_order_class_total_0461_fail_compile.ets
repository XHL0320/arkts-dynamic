/*
 * Case ID: CLASS-FAILC-427
 * Coverage ID:
 *   - CLASS-TOTAL-0461
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor 中 super() 前调用 this.method()，checker 报错
 */

// Expected error: 派生类 constructor 中 super() 前调用 this.method()，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
