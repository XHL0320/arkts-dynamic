/*
 * Case ID: CLASS-FAILC-069
 * Coverage ID:
 *   - CLASS-TOTAL-0077
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify constructor 中访问未声明字段，checker 报错
 */

// Expected error: constructor 中访问未声明字段，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
