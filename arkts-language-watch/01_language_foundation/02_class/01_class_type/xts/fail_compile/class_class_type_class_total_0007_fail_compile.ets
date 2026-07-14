/*
 * Case ID: CLASS-FAILC-006
 * Coverage ID:
 *   - CLASS-TOTAL-0007
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class value 不能直接访问 instance method，checker 报错
 */

// Expected error: class value 不能直接访问 instance method，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
