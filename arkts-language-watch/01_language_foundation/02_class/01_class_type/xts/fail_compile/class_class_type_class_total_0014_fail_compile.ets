/*
 * Case ID: CLASS-FAILC-011
 * Coverage ID:
 *   - CLASS-TOTAL-0014
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instance member 被当作 constructor type 成员访问，checker 报错
 */

// Expected error: instance member 被当作 constructor type 成员访问，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
