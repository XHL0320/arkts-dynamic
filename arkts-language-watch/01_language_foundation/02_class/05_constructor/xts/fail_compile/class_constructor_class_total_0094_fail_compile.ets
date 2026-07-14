/*
 * Case ID: CLASS-FAILC-085
 * Coverage ID:
 *   - CLASS-TOTAL-0094
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor 中 super() 调用多次如可静态识别则报错
 */

// Expected error: 派生类 constructor 中 super() 调用多次如可静态识别则报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
