/*
 * Case ID: CLASS-FAILC-081
 * Coverage ID:
 *   - CLASS-TOTAL-0090
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify super() 前访问 this.field，checker 报错
 */

// Expected error: super() 前访问 this.field，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
