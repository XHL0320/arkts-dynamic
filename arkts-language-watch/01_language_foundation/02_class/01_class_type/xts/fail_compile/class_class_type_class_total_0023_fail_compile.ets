/*
 * Case ID: CLASS-FAILC-020
 * Coverage ID:
 *   - CLASS-TOTAL-0023
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 两个不兼容 class instance 互赋，checker 报错
 */

// Expected error: 两个不兼容 class instance 互赋，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
