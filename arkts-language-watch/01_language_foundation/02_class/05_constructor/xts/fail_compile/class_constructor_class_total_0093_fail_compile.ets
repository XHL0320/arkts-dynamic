/*
 * Case ID: CLASS-FAILC-084
 * Coverage ID:
 *   - CLASS-TOTAL-0093
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify super() 参数类型不匹配，checker 报错
 */

// Expected error: super() 参数类型不匹配，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
