/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0157
 * Related Spec: interface method 中误用 super 访问 interface 成员，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: interface method 中误用 super 访问 interface 成员，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
