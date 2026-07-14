/*
 * Case ID: CLASS-FAILC-004
 * Coverage ID:
 *   - CLASS-TOTAL-0005
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class value 不能当普通函数调用，checker 报错或运行时边界记录
 */

// Expected error: class value 不能当普通函数调用，checker 报错或运行时边界记录

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
