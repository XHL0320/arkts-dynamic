/*
 * Case ID: CLASS-FAILC-150
 * Coverage ID:
 *   - CLASS-TOTAL-0165
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify super() 参数类型与基类 constructor 不匹配，checker 报错
 */

// Expected error: super() 参数类型与基类 constructor 不匹配，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
