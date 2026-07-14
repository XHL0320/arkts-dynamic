/*
 * Case ID: CLASS-FAILC-076
 * Coverage ID:
 *   - CLASS-TOTAL-0084
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify new 调用参数个数不足，checker 报错
 */

// Expected error: new 调用参数个数不足，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
