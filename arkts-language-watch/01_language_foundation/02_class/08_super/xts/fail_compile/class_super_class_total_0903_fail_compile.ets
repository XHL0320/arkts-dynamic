/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0903
 * Related Spec: generic base constructor super(value) 传入不满足约束的值，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
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
