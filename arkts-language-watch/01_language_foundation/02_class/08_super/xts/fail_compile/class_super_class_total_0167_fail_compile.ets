/*
 * Case ID: CLASS-FAILC-152
 * Coverage ID:
 *   - CLASS-TOTAL-0167
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify super.method() 参数个数过多且 ArkTS 不允许多余参数，checker 报错
 */

// Expected error: super.method() 参数个数过多且 ArkTS 不允许多余参数，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
