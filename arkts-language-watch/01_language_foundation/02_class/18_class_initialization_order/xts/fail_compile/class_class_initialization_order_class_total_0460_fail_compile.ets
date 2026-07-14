/*
 * Case ID: CLASS-FAILC-426
 * Coverage ID:
 *   - CLASS-TOTAL-0460
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor 中 super() 前访问 this，checker 报错
 */

// Expected error: 派生类 constructor 中 super() 前访问 this，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
