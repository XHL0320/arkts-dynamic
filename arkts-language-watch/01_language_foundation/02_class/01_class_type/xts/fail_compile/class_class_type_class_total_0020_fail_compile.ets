/*
 * Case ID: CLASS-FAILC-017
 * Coverage ID:
 *   - CLASS-TOTAL-0020
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 缺少 class public field 时赋给 class type，checker 报错
 */

// Expected error: object literal 缺少 class public field 时赋给 class type，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
