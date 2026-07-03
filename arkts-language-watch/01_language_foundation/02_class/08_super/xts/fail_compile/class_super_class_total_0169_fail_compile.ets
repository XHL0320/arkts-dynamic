/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0169
 * Related Spec: super.missingMethod() 调用不存在基类方法，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
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
