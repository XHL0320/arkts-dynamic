/*
 * Case ID: CLASS-FAILC-157
 * Coverage ID:
 *   - CLASS-TOTAL-0172
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 普通实例方法中调用 super() 作为函数，parser/checker 报错
 */

// Expected error: 普通实例方法中调用 super() 作为函数，parser/checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
