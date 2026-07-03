/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0156
 * Related Spec: constructor 中静态可判定调用两次 super()，checker 报错或运行时边界记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: constructor 中静态可判定调用两次 super()，checker 报错或运行时边界记录

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
