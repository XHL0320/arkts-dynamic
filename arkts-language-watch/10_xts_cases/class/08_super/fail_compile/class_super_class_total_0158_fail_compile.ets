/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0158
 * Related Spec: loop 中调用 super() 导致初始化次数不确定，checker 报错或差异记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: loop 中调用 super() 导致初始化次数不确定，checker 报错或差异记录

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
