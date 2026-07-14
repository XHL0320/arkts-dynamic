/*
 * Case ID: CLASS-FAILC-165
 * Coverage ID:
 *   - CLASS-TOTAL-0903
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic base constructor super(value) 传入不满足约束的值，checker 报错
 */

// Expected error: generic base constructor super(value) 传入不满足约束的值，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
