/*
 * Case ID: CLASS-FAILC-086
 * Coverage ID:
 *   - CLASS-TOTAL-0095
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor 中 this before super，checker 报错
 */

// Expected error: 派生类 constructor 中 this before super，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
