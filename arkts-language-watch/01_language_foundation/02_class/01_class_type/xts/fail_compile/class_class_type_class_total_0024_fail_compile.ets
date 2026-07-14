/*
 * Case ID: CLASS-FAILC-021
 * Coverage ID:
 *   - CLASS-TOTAL-0024
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 未实例化 class value 赋给 instance type，checker 报错
 */

// Expected error: 未实例化 class value 赋给 instance type，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
