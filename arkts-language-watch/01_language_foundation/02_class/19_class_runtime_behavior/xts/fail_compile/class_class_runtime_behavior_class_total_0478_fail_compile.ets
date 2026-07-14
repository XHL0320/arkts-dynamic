/*
 * Case ID: CLASS-FAILC-445
 * Coverage ID:
 *   - CLASS-TOTAL-0478
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor super() 前访问 this，checker 报错
 */

// Expected error: 派生类 constructor super() 前访问 this，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
