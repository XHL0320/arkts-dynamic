/*
 * Case ID: CLASS-FAILC-075
 * Coverage ID:
 *   - CLASS-TOTAL-0083
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic constructor 参数不满足约束，checker 报错
 */

// Expected error: generic constructor 参数不满足约束，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
