/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0178
 * Related Spec: 派生类 constructor 中部分控制流路径未调用 super()，checker 报错或差异记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
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
