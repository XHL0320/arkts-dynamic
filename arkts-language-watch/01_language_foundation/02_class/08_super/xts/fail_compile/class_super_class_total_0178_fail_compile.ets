/*
 * Case ID: CLASS-FAILC-163
 * Coverage ID:
 *   - CLASS-TOTAL-0178
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor 中部分控制流路径未调用 super()，checker 报错或差异记录
 */

// Expected error: 派生类 constructor 中部分控制流路径未调用 super()，checker 报错或差异记录

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
