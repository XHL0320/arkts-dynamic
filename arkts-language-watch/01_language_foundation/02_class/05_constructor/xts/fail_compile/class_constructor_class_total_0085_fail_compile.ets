/*
 * Case ID: CLASS-FAILC-077
 * Coverage ID:
 *   - CLASS-TOTAL-0085
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify new 调用参数个数过多，checker 报错
 */

// Expected error: new 调用参数个数过多，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
