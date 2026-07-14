/*
 * Case ID: CLASS-FAILC-154
 * Coverage ID:
 *   - CLASS-TOTAL-0169
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify super.missingMethod() 调用不存在基类方法，checker 报错
 */

// Expected error: super.missingMethod() 调用不存在基类方法，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
