/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0155
 * Related Spec: class 外部作用域使用 super，parser 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: class 外部作用域使用 super，parser 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
