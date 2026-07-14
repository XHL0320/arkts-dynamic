/*
 * Case ID: CLASS-FAILC-166
 * Coverage ID:
 *   - CLASS-TOTAL-0904
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic base method super.method(value) 参数不满足 T 约束，checker 报错
 */

// Expected error: generic base method super.method(value) 参数不满足 T 约束，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
